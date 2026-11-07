#!/usr/bin/env python3
"""CALL3.TXT delle sole stazioni EME attive, per LunaCalc Mobile (stessa strategia di YAEC).

1. Scarica il CALL3.TXT di W7GJ e quello distribuito con WSJT-X Improved (SourceForge);
   se una fonte non risponde usa l'altra, se rispondono entrambe le fonde per nominativo
   (a parità di nominativo vale il locator di W7GJ), come la classe Call3 di YAEC.
2. Tiene solo le stazioni attive secondo attivi.gz (chat EME di N0UK, ultimi 90 giorni):
   il nominativo, o la sua parte più lunga tra le barre (IS0/DL1ABC -> DL1ABC), deve avere
   un messaggio negli ultimi 90 giorni, come Attivi.Cerca di YAEC.
Uscita: righe "NOMINATIVO,LOCATOR,AAAA-MM-GG" (data dell'ultimo messaggio), ordinate.
Uso:  call3_attivi.py attivi.gz call3-attivi.txt [CALL3.TXT locale al posto dello scaricamento]
"""
import datetime as dt, gzip, re, sys, urllib.request

GIORNI = 90
FONTI = [
    ('W7GJ', ['https://www.bigskyspaces.com/w7gj/call3.txt', 'http://www.bigskyspaces.com/w7gj/CALL3.TXT']),
    ('WSJT-X Improved (SourceForge)', ['https://downloads.sourceforge.net/project/wsjt-x-improved/Additional%20Files/CALL3.TXT',
                                       'https://sourceforge.net/projects/wsjt-x-improved/files/Additional%20Files/CALL3.TXT/download']),
]
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
        if 3 <= len(call) <= 13 and ' ' not in call and len(grid) >= 4 and LOC.match(grid):
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
    ag, out = sys.argv[1], sys.argv[2]
    oggi = dt.datetime.now(dt.timezone.utc).date()
    if len(sys.argv) > 3:
        fonti = [righe_valide(open(sys.argv[3], encoding='latin-1').read())]
    else:
        fonti = [scarica(urls) for _, urls in FONTI]
    if not any(fonti):
        sys.exit('nessuna fonte del CALL3.TXT raggiungibile')
    tab = {}
    for f in fonti:                      # prima W7GJ, poi le stazioni che mancano
        for call, grid in f or []:
            tab.setdefault(call, grid)
    att = attivi(ag, oggi)
    righe = []
    for call, grid in tab.items():
        prove = {call, max(call.split('/'), key=len)}
        date = [att[c] for c in prove if c in att]
        if date:
            righe.append('%s,%s,%s' % (call, grid, max(date).isoformat()))
    righe.sort()
    nomi = ' + '.join(n for (n, _), f in zip(FONTI, fonti) if f) if len(sys.argv) <= 3 else 'CALL3.TXT locale'
    with open(out, 'w', encoding='ascii', errors='replace', newline='\n') as f:
        f.write('// CALL3 attivi - %d stazioni - %s UTC - %s filtrato con la chat EME di N0UK (%d giorni)\n' % (len(righe), oggi.isoformat(), nomi, GIORNI))
        for r in righe:
            f.write(r + '\n')
    print('CALL3:', len(tab), 'nominativi; attivi N0UK:', len(att), '; nel file:', len(righe))


if __name__ == '__main__':
    main()
