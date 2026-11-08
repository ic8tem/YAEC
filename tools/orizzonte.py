"""Profilo dell'orizzonte di una stazione dal modello del terreno SRTM1 (1", circa 30 m).
Riquadri SRTM1 in formato .hgt (3601 x 3601 quote int16 big-endian), scaricati dall'archivio pubblico
elevation-tiles-prod/skadi (AWS Open Data) e conservati in una cartella locale.
Il raggio si estende finché un rilievo lontano può ancora superare l'orizzonte già trovato:
d_max = sqrt(2 k R (H_max - h)), con la curvatura terrestre e la rifrazione standard (k = 4/3).
Uso: python3 orizzonte.py LAT LON QUOTA_ANTENNA_m CARTELLA_HGT USCITA.json [passo_az]"""
import gzip, json, math, os, sys, urllib.request
import numpy as np

lat0, lon0, h_ant = float(sys.argv[1]), float(sys.argv[2]), float(sys.argv[3])
cart, out = sys.argv[4], sys.argv[5]
passo = float(sys.argv[6]) if len(sys.argv) > 6 else 0.5
RE, K = 6371000.0, 4.0 / 3.0
URL = 'https://s3.amazonaws.com/elevation-tiles-prod/skadi/{ns}{la:02d}/{ns}{la:02d}{ew}{lo:03d}.hgt.gz'
os.makedirs(cart, exist_ok=True)
tiles, scaricati = {}, []

def nome(la, lo):
    return '%s%02d%s%03d' % ('N' if la >= 0 else 'S', abs(la), 'E' if lo >= 0 else 'W', abs(lo))

def tile(la, lo):
    k = (la, lo)
    if k in tiles: return tiles[k]
    f = os.path.join(cart, nome(la, lo) + '.hgt')
    if not os.path.exists(f):
        u = URL.format(ns='N' if la >= 0 else 'S', la=abs(la), ew='E' if lo >= 0 else 'W', lo=abs(lo))
        try:
            data = gzip.decompress(urllib.request.urlopen(u, timeout=120).read())
            open(f, 'wb').write(data); scaricati.append((nome(la, lo), len(data)))
        except Exception:
            tiles[k] = None; return None          # mare aperto: nessun riquadro
    a = np.fromfile(f, dtype='>i2').astype(np.float32)
    n = int(round(math.sqrt(a.size))); a = a.reshape(n, n)
    a[a < -1000] = 0                              # vuoti di dati
    tiles[k] = a
    return a

def quota(la, lo):
    t = tile(math.floor(la), math.floor(lo))
    if t is None: return 0.0
    n = t.shape[0] - 1
    y = (math.floor(la) + 1 - la) * n; x = (lo - math.floor(lo)) * n
    i, j = min(int(y), n - 1), min(int(x), n - 1); fy, fx = y - i, x - j
    return float(t[i, j] * (1 - fx) * (1 - fy) + t[i, j + 1] * fx * (1 - fy) + t[i + 1, j] * (1 - fx) * fy + t[i + 1, j + 1] * fx * fy)

def punto(az, d):
    # punto a distanza d (m) e azimut az dalla stazione (sfera)
    dr = d / RE; a = math.radians(az); p1 = math.radians(lat0)
    p2 = math.asin(math.sin(p1) * math.cos(dr) + math.cos(p1) * math.sin(dr) * math.cos(a))
    l2 = math.radians(lon0) + math.atan2(math.sin(a) * math.sin(dr) * math.cos(p1), math.cos(dr) - math.sin(p1) * math.sin(p2))
    return math.degrees(p2), math.degrees(l2)

suolo = quota(lat0, lon0)
h = max(h_ant, suolo + 2)
# raggio: si parte da 60 km e si allarga finché il rilievo più alto trovato potrebbe ancora sporgere
raggio = 60000.0
while True:
    hmax = 0.0
    for la in range(math.floor(lat0 - raggio / 111000) , math.floor(lat0 + raggio / 111000) + 1):
        for lo in range(math.floor(lon0 - raggio / (111000 * math.cos(math.radians(lat0)))), math.floor(lon0 + raggio / (111000 * math.cos(math.radians(lat0)))) + 1):
            t = tile(la, lo)
            if t is not None: hmax = max(hmax, float(t.max()))
    need = math.sqrt(max(0.0, 2 * K * RE * (hmax - h)))
    if need <= raggio or raggio >= 400000: break
    raggio = min(400000.0, need * 1.05)

prof = []
for i in range(int(round(360 / passo))):
    az = i * passo
    best, bd, bp = -90.0, 0.0, (lat0, lon0, h)
    d = 30.0
    while d <= raggio:
        la, lo = punto(az, d)
        H = quota(la, lo)
        el = math.degrees(math.atan2(H - h, d) - d / (2 * K * RE))
        if el > best: best, bd, bp = el, d, (la, lo, H)
        # oltre questa distanza nessun rilievo può superare l'orizzonte trovato: ci si ferma
        if math.degrees(math.atan2(hmax - h, d) - d / (2 * K * RE)) < best: break
        d += 30.0 if d < 10000 else (60.0 if d < 50000 else 150.0)
    prof.append([round(az, 2), round(best, 3), round(bd / 1000, 2), round(bp[0], 5), round(bp[1], 5), round(bp[2])])

json.dump({'lat': lat0, 'lon': lon0, 'quota_antenna': h, 'suolo': round(suolo, 1), 'k': K, 'raggio_km': round(raggio / 1000),
           'quota_max_m': hmax, 'passo_az': passo, 'riquadri': sorted(nome(*k) for k, v in tiles.items() if v is not None),
           'scaricati_MB': round(sum(s for _, s in scaricati) / 1e6, 1), 'profilo': prof}, open(out, 'w'))
print('raggio km', round(raggio / 1000), 'riquadri', len([v for v in tiles.values() if v is not None]), 'suolo', round(suolo), 'max el', max(p[1] for p in prof))
