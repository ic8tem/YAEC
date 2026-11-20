#!/usr/bin/env python3
"""Elenco delle stazioni EME di PA0PLY (https://www.pa0ply.nl/eme-directory/) per 432 e 1296 MHz.

Gira una volta al giorno su GitHub (.github/workflows/attivi.yml), con l'elenco N0UK.
Dalla pagina dell'elenco prende i collegamenti ai PDF delle bande (il nome cambia a ogni aggiornamento,
es. 432Mhz-46.pdf) e scarica un PDF solo se il nome è cambiato rispetto al giorno prima.
Dai PDF prende solo nominativo, locator, antenna e potenza: nomi, città, e-mail e siti NON vengono salvati.
Uscita: pa0ply.gz, testo UTF-8 compresso con gzip:
  # fonte <url> | <data UTC> | <banda>=<nome del PDF> ...
  <banda>\t<nominativo>\t<locator>\t<antenna>\t<potenza W>
Uso: pa0ply.py <pa0ply.gz> [--bande 432,1296] [--sempre]
"""
import datetime as dt, gzip, io, os, re, sys, urllib.request

PAGINA = 'https://www.pa0ply.nl/eme-directory/'
UA = 'YAEC EME calculator (https://github.com/ic8tem/YAEC), once a day'
CALL = re.compile(r'^(?:[A-Z0-9]{1,3}/)?[A-Z0-9]{1,3}[0-9][A-Z0-9]{0,4}[A-Z](?:/[A-Z0-9]{1,4})?$')
LOC = re.compile(r'^[A-R]{2}[0-9]{2}(?:[A-X]{2})?$', re.I)
# nomi dei PDF: 432Mhz-46.pdf, 1296Mhz-46.pdf, 10368Mhz-46.pdf, 47G-38.pdf...
NOMI = {432: r'432Mhz[^"/]*\.pdf', 1296: r'1296Mhz[^"/]*\.pdf', 2320: r'2320Mhz[^"/]*\.pdf', 3400: r'3400Mhz[^"/]*\.pdf',
        5760: r'5760Mhz[^"/]*\.pdf', 10368: r'10368Mhz[^"/]*\.pdf', 24048: r'24048Mhz[^"/]*\.pdf', 47088: r'47G[^"/]*\.pdf', 76032: r'76G[^"/]*\.pdf'}


def scarica(url):
    req = urllib.request.Request(url, headers={'User-Agent': UA})
    return urllib.request.urlopen(req, timeout=90).read()


def collegamenti(html):
    l = {}
    for b, pat in NOMI.items():
        m = re.search(r'href="(https?://[^"]*/' + pat + ')"', html, re.I)
        if m:
            l[b] = m.group(1)
    return l


def watt(s):
    s = s.strip().replace(',', '.')
    m = re.match(r'^(\d+(?:\.\d+)?)\s*(k?w?)', s, re.I)
    if not m:
        return ''
    v = float(m.group(1))
    if m.group(2).lower().startswith('k'):
        v *= 1000
    return ('%g' % v) if v > 0 else ''


def righe_pdf(dati):
    """Righe del PDF come elenco di (nominativo, locator, antenna, potenza), colonne dalla riga d'intestazione."""
    import pdfplumber
    out = []
    with pdfplumber.open(io.BytesIO(dati)) as pdf:
        col = None
        for pg in pdf.pages:
            parole = pg.extract_words(keep_blank_chars=False, use_text_flow=False, x_tolerance=1.5, y_tolerance=2)
            # raggruppa per riga (y)
            righe = {}
            for w in parole:
                k = round(w['top'] / 3.0)
                righe.setdefault(k, []).append(w)
            for k in sorted(righe):
                ws = sorted(righe[k], key=lambda w: w['x0'])
                testi = [w['text'] for w in ws]
                low = [t.lower() for t in testi]
                if 'call' in low and 'antenna' in low and 'power' in low:
                    # inizio di ogni colonna = x0 della parola d'intestazione
                    col = {}
                    for w in ws:
                        t = w['text'].lower().rstrip(':')
                        if t in ('call', 'locator', 'firstname', 'state', 'antenna', 'power', 'e-mail', 'email', 'ham', 'ham-site'):
                            col.setdefault('email' if t in ('e-mail', 'email') else ('ham' if t.startswith('ham') else t), w['x0'])
                    continue
                if not col or 'call' not in col or 'antenna' not in col or 'power' not in col:
                    continue
                ordine = sorted(col.items(), key=lambda kv: kv[1])
                campi = {n: [] for n, _ in ordine}
                for w in ws:
                    nome = ordine[0][0]
                    for n, x in ordine:
                        if w['x0'] >= x - 2:
                            nome = n
                    campi[nome].append(w['text'])
                c = ' '.join(campi.get('call', [])).strip().upper()
                if not CALL.match(c):
                    continue
                loc = ' '.join(campi.get('locator', [])).strip().upper()
                if not LOC.match(loc):
                    loc = ''
                ant = ' '.join(campi.get('antenna', [])).strip()
                pw = watt(' '.join(campi.get('power', [])))
                out.append((c, loc, re.sub(r'[\t\r\n]+', ' ', ant), pw))
    return out


def main():
    file = sys.argv[1] if len(sys.argv) > 1 else 'pa0ply.gz'
    bande = [432, 1296]
    if '--bande' in sys.argv:
        bande = [int(x) for x in sys.argv[sys.argv.index('--bande') + 1].split(',')]
    sempre = '--sempre' in sys.argv
    vecchio, testa_vecchia = {}, {}
    if os.path.exists(file):
        for r in gzip.open(file, 'rt', encoding='utf-8'):
            if r.startswith('#'):
                for m in re.finditer(r'(\d+)=(\S+)', r):
                    testa_vecchia[int(m.group(1))] = m.group(2)
                continue
            p = r.rstrip('\n').split('\t')
            if len(p) == 5:
                vecchio.setdefault(int(p[0]), []).append(tuple(p[1:]))
    html = scarica(PAGINA).decode('utf-8', 'replace')
    link = collegamenti(html)
    nuovo, testa = {}, {}
    for b in bande:
        if b not in link:
            print('banda %d: collegamento non trovato, resta l\'elenco di prima' % b)
            if b in vecchio:
                nuovo[b] = vecchio[b]; testa[b] = testa_vecchia.get(b, '?')
            continue
        nome = link[b].rsplit('/', 1)[1]
        if not sempre and testa_vecchia.get(b) == nome and b in vecchio:
            nuovo[b] = vecchio[b]; testa[b] = nome
            print('banda %d: %s invariato (%d stazioni)' % (b, nome, len(vecchio[b])))
            continue
        try:
            r = righe_pdf(scarica(link[b]))
        except Exception as e:
            print('banda %d: PDF non leggibile (%s), resta l\'elenco di prima' % (b, e))
            r = []
        # un PDF letto male (poche righe) non sostituisce l'elenco buono di prima
        if len(r) < 20 or (b in vecchio and len(r) < 0.6 * len(vecchio[b])):
            if b in vecchio:
                nuovo[b] = vecchio[b]; testa[b] = testa_vecchia.get(b, '?')
            print('banda %d: solo %d righe lette da %s, resta l\'elenco di prima' % (b, len(r), nome))
            continue
        visti, l = set(), []
        for x in r:
            if (x[0], x[1], x[2]) in visti:
                continue
            visti.add((x[0], x[1], x[2])); l.append(x)
        nuovo[b] = l; testa[b] = nome
        print('banda %d: %s, %d stazioni' % (b, nome, len(l)))
    if not nuovo:
        sys.exit('nessuna banda letta')
    ora = dt.datetime.utcnow().strftime('%Y-%m-%dT%H:%MZ')
    with gzip.open(file, 'wt', encoding='utf-8') as f:
        f.write('# %s | %s | %s\n' % (PAGINA, ora, ' '.join('%d=%s' % (b, testa[b]) for b in sorted(testa))))
        for b in sorted(nuovo):
            for c, loc, ant, pw in sorted(nuovo[b]):
                f.write('%d\t%s\t%s\t%s\t%s\n' % (b, c, loc, ant, pw))


if __name__ == '__main__':
    main()
