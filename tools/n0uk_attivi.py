#!/usr/bin/env python3
"""Stazioni EME attive secondo la chat di N0UK (https://www.chris.org/cgi-bin/review-jt65emeA).

Gira una volta al giorno su GitHub (.github/workflows/attivi.yml). Dalla pagina prende solo:
- il nominativo di chi scrive (tra graffe: {S52LM/4X14HV/1K Milos xx JN65tx} -> S52LM);
- il nominativo di chi trasmette nelle decodifiche incollate (CQ IU4CHE JN64 -> IU4CHE;
  K1JT IU4CHE JN64 -> IU4CHE).
Le semplici citazioni nel testo non contano. Nessun testo dei messaggi viene salvato: solo
nominativo e data dell'ultimo messaggio. Un nominativo esce dall'elenco 90 giorni dopo.
Uscita: attivi.gz (righe "NOMINATIVO AAAA-MM-GG", compresse con gzip).
Seconda uscita, impianti.gz: per chi scrive, l'impianto dichiarato nell'intestazione e il locator
({S52LM/4X14HV/1K Milos xx JN65tx} -> "S52LM 2026-11-10 JN65TX 4X14HV/1K"), per la linguetta
«Stazioni da provare» di YAEC. Anche qui solo dati pubblici dell'intestazione, tolti dopo 90 giorni.
"""
import datetime as dt, gzip, os, re, sys, urllib.request

URL = 'https://www.chris.org/cgi-bin/review-jt65emeA'
GIORNI = 90
FILE = sys.argv[1] if len(sys.argv) > 1 else 'attivi.gz'
MESI = {m: i + 1 for i, m in enumerate(['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])}
CALL = re.compile(r'^(?:[A-Z0-9]{1,3}/)?[A-Z0-9]{1,3}[0-9][A-Z0-9]{0,4}[A-Z](?:/[A-Z0-9]{1,4})?$')
RIGA = re.compile(r'^(\d{2})([A-Z][a-z]{2}) (\d{2}):(\d{2}) (.*)$')


def valido(c):
    c = c.strip().upper()
    if not CALL.match(c) or not re.search(r'[A-Z]', c) or not re.search(r'[0-9]', c):
        return None
    if c in ('CQ', 'QRZ', 'DE', 'RRR', 'RR73', '73'):
        return None
    return c


def data_riga(gg, mese, oggi):
    m = MESI.get(mese)
    if not m:
        return None
    anno = oggi.year if (m, int(gg)) <= (oggi.month, oggi.day) else oggi.year - 1
    try:
        return dt.date(anno, m, int(gg))
    except ValueError:
        return None


IMPIANTI = {}   # nominativo -> (data, locator, impianto) dall'intestazione dei messaggi
LOC = re.compile(r'^[A-R]{2}[0-9]{2}(?:[A-X]{2})?$', re.I)


def da_pagina(testo, oggi):
    trovati = {}
    testo = re.sub(r'<[^>]+>', ' ', testo).replace('&nbsp;', ' ')
    for riga in testo.splitlines():
        riga = riga.strip()
        m = RIGA.match(riga)
        if not m:
            continue
        d = data_riga(m.group(1), m.group(2), oggi)
        if d is None:
            continue
        corpo = m.group(5)
        nomi = set()
        g = re.search(r'\{\s*([^}\s]+)', corpo)            # chi scrive
        if g:
            c = valido(g.group(1).split('/')[0])
            if c:
                nomi.add(c)
                testa = re.search(r'\{([^}]*)\}', corpo)
                parti = testa.group(1).split() if testa else []
                loc = next((x.upper() for x in reversed(parti) if LOC.match(x)), '-')
                imp = g.group(1).split('/', 1)[1] if '/' in g.group(1) else '-'
                imp = re.sub(r'[^A-Za-z0-9/.+-]', '', imp) or '-'
                if c not in IMPIANTI or IMPIANTI[c][0] <= d:
                    IMPIANTI[c] = (d, loc, imp)
        msg = corpo.split('======')[0]
        # decodifiche incollate: "... Freq 1157 Hz   CQ IU4CHE JN64" o "K1JT IU4CHE JN64"
        for dm in re.finditer(r'\b(CQ|QRZ)\s+(?:[A-Z]{2,4}\s+)?([A-Z0-9/]{3,12})\b', msg):
            c = valido(dm.group(2))
            if c: nomi.add(c)
        if re.search(r'\b(JT65|Q65|JT4|QRA64)', msg) and re.search(r'\bdB\b', msg):
            for dm in re.finditer(r'\b([A-Z0-9/]{3,12})\s+([A-Z0-9/]{3,12})\s+(?:[A-R]{2}\d{2}|[-+]?\d{2}|R[-+]?\d{2}|RRR|RR73|73|OOO|RO)\b', msg):
                a, b = valido(dm.group(1)), valido(dm.group(2))
                if a and b: nomi.add(b)
        for c in nomi:
            if c not in trovati or trovati[c] < d:
                trovati[c] = d
    return trovati


def main():
    oggi = dt.datetime.utcnow().date()
    db = {}
    if os.path.exists(FILE):
        for r in gzip.open(FILE, 'rt', encoding='utf-8'):
            p = r.split()
            if len(p) == 2:
                try: db[p[0]] = dt.date.fromisoformat(p[1])
                except ValueError: pass
    req = urllib.request.Request(URL, headers={'User-Agent': 'YAEC active EME stations (https://github.com/ic8tem/YAEC), once a day'})
    testo = urllib.request.urlopen(req, timeout=60).read().decode('utf-8', 'replace')
    nuovi = da_pagina(testo, oggi)
    for c, d in nuovi.items():
        if c not in db or db[c] < d:
            db[c] = d
    limite = oggi - dt.timedelta(days=GIORNI)
    db = {c: d for c, d in db.items() if d >= limite}
    with gzip.open(FILE, 'wt', encoding='utf-8') as f:
        for c in sorted(db):
            f.write('%s %s\n' % (c, db[c].isoformat()))
    print('nominativi nella pagina:', len(nuovi), ' nel database (90 giorni):', len(db))
    # impianti dichiarati: si fondono con quelli dei giorni prima (vince il più recente)
    fi = os.path.join(os.path.dirname(os.path.abspath(FILE)), 'impianti.gz')
    imp = {}
    if os.path.exists(fi):
        for r in gzip.open(fi, 'rt', encoding='utf-8'):
            p = r.split()
            if len(p) == 4:
                try: imp[p[0]] = (dt.date.fromisoformat(p[1]), p[2], p[3])
                except ValueError: pass
    for c, v in IMPIANTI.items():
        if c not in imp or imp[c][0] <= v[0]:
            vecchio = imp.get(c)
            # un messaggio senza impianto o senza locator non cancella quelli già noti
            loc = v[1] if v[1] != '-' or not vecchio else vecchio[1]
            im = v[2] if v[2] != '-' or not vecchio else vecchio[2]
            imp[c] = (v[0], loc, im)
    imp = {c: v for c, v in imp.items() if v[0] >= limite}
    with gzip.open(fi, 'wt', encoding='utf-8') as f:
        for c in sorted(imp):
            f.write('%s %s %s %s\n' % (c, imp[c][0].isoformat(), imp[c][1], imp[c][2]))
    print('impianti dichiarati:', len(imp))


if __name__ == '__main__':
    main()
