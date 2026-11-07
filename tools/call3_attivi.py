#!/usr/bin/env python3
"""CALL3.TXT delle sole stazioni EME attive, per LunaCalc Mobile (stessa strategia di YAEC).

1. Scarica il CALL3.TXT di W7GJ e quello distribuito con WSJT-X Improved (SourceForge);
   se una fonte non risponde usa l'altra, se rispondono entrambe le fonde per nominativo
   (a parità di nominativo vale il locator di W7GJ), come la classe Call3 di YAEC.
2. Tiene solo le stazioni attive secondo attivi.gz (chat EME di N0UK, ultimi 90 giorni):
   il nominativo, o la sua parte più lunga tra le barre (IS0/DL1ABC -> DL1ABC), deve avere
   un messaggio negli ultimi 90 giorni, come Attivi.Cerca di YAEC.
Uscita: righe "NOMINATIVO,LOCATOR,AAAA-MM-GG" (data dell'ultimo messaggio), ordinate.
Con --tutti scrive anche il CALL3.TXT completo fuso, compresso (call3.gz), con solo nominativo e locator
(niente nomi né indirizzi e-mail): LunaCalc Mobile lo usa perché una stazione non attiva non è esclusa
dal calcolo, è solo senza il bordo arancione.
Uso:  call3_attivi.py attivi.gz call3-attivi.txt [--tutti call3.gz] [--locale CALL3.TXT]
"""
import argparse, datetime as dt, gzip, re, sys, urllib.request

GIORNI = 90
FONTI = [
    ('W7GJ', ['https://www.bigskyspaces.com/w7gj/call3.txt', 'http://www.bigskyspaces.com/w7gj/CALL3.TXT']),
    ('WSJT-X Improved (SourceForge)', ['https://downloads.sourceforge.net/project/wsjt-x-improved/Additional%20Files/CALL3.TXT',
                                       'https://sourceforge.net/projects/wsjt-x-improved/files/Additional%20Files/CALL3.TXT/download']),
]
CALL = re.compile(r'^[A-Z0-9/]{3,13}$')
LOC = re.compile(r'^[A-R]{2}(?:[0-9]{2}(?:[A-X]{2}(?:[0-9]{2}(?:[A-X]{2})?)?)?)?$')
UA = {'User-Agent': 'YAEC / LunaCalc Mobile (https://github.com/ic8tem/YAEC), once a day'}


def righe_valide(testo):
    out = []
    for r0 in testo.split('\n'):
        r = r0.strip('\r \t')
        if len(r) < 6 or r.startswith('//'):
            continue
        p = r.split(',')
        if len(p) < 2:
            continue
        call, grid = p[0].strip().upper(), p[1].strip().upper()
        if CALL.match(call) and len(grid) >= 4 and LOC.match(grid):
            out.append((call, grid))
    return out


def scarica(urls):
    for u in urls:
        try:
            t = urllib.request.urlopen(urllib.request.Request(u, headers=UA), timeout=120).read().decode('latin-1')
            if '<html' in t.lower():
                continue
            r = righe_valide(t)
            if len(r) >= 50:
                return r
        except Exception as e:
            print('  non raggiungibile:', u, e)
    return None


def attivi(path, oggi):
    lim = oggi - dt.timedelta(days=GIORNI)
    d = {}
    for r in gzip.open(path, 'rt', encoding='utf-8'):
        p = r.split()
        if len(p) != 2:
            continue
        try:
            x = dt.date.fromisoformat(p[1])
        except ValueError:
            continue
        c = p[0].upper()
        if x >= lim and (c not in d or d[c] < x):
            d[c] = x
    return d


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('attivi'); ap.add_argument('uscita')
    ap.add_argument('--tutti', help='CALL3.TXT completo fuso, compresso (solo nominativo e locator)')
    ap.add_argument('--locale', help='CALL3.TXT già scaricato, al posto delle due fonti')
    a = ap.parse_args()
    oggi = dt.datetime.now(dt.timezone.utc).date()
    if a.locale:
        fonti = [righe_valide(open(a.locale, encoding='latin-1').read())]
        nomi = 'CALL3.TXT locale'
    else:
        fonti = [scarica(urls) for _, urls in FONTI]
        nomi = ' + '.join(n for (n, _), f in zip(FONTI, fonti) if f)
    if not any(fonti):
        sys.exit('nessuna fonte del CALL3.TXT raggiungibile')
    tab = {}
    for f in fonti:                      # prima W7GJ, poi le stazioni che mancano
        for call, grid in f or []:
            tab.setdefault(call, grid)
    att = attivi(a.attivi, oggi)
    righe = []
    for call, grid in tab.items():
        prove = {call, max(call.split('/'), key=len)}
        date = [att[c] for c in prove if c in att]
        if date:
            righe.append('%s,%s,%s' % (call, grid, max(date).isoformat()))
    righe.sort()
    with open(a.uscita, 'w', encoding='ascii', newline='\n') as f:
        f.write('// CALL3 attivi - %d stazioni - %s UTC - %s filtrato con la chat EME di N0UK (%d giorni)\n' % (len(righe), oggi.isoformat(), nomi, GIORNI))
        for r in righe:
            f.write(r + '\n')
    if a.tutti:
        testo = '// CALL3.TXT - %d stations - %s UTC - %s (merged by callsign, W7GJ preferred) - callsign and locator only\n' % (len(tab), oggi.isoformat(), nomi)
        testo += ''.join('%s,%s\n' % (c, tab[c]) for c in sorted(tab))
        with open(a.tutti, 'wb') as f:
            f.write(gzip.compress(testo.encode('ascii'), 9, mtime=0))
    print('CALL3:', len(tab), 'nominativi; attivi N0UK:', len(att), '; attivi nel file:', len(righe))


if __name__ == '__main__':
    main()
