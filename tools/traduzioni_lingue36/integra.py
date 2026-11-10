# Inserisce in YAEC.cs le 8 lingue nuove (interfaccia, manuale interno, ManualeV27 se presente) + lingue/LICENSE_xx, README_xx + YAEC.iss
import json, io, os, re, sys
W = os.path.dirname(os.path.abspath(__file__)); R = '/home/claude/yaec'
NEW = [('pt-BR', 'PTBR', 'Português (Brasil)', 'pt-BR'), ('pl', 'PL', 'Polski', 'pl-PL'), ('cs', 'CS', 'Čeština', 'cs-CZ'),
       ('hu', 'HU', 'Magyar', 'hu-HU'), ('ro', 'RO', 'Română', 'ro-RO'), ('el', 'EL', 'Ελληνικά', 'el-GR'),
       ('th', 'TH', 'ไทย', 'th-TH'), ('zh-TW', 'ZHTW', '中文 (繁體)', 'zh-TW')]
def cs(t): return '"' + json.dumps(t, ensure_ascii=False)[1:-1] + '"'
p = R + '/YAEC.cs'; s = io.open(p, encoding='utf-8-sig').read()
bom = io.open(p, 'rb').read(3) == b'\xef\xbb\xbf'
nl = '\r\n' if '\r\n' in s else '\n'; s = s.replace('\r\n', '\n')
def rep(a, b, n=1):
    global s
    assert s.count(a) == n, (a[:70], s.count(a)); s = s.replace(a, b)
if '"pt-BR"' in s and 'Testi.PTBR' in s: print('già integrato'); sys.exit(0)
it_len = len(json.load(io.open(W + '/ui.json', encoding='utf-8'))['it'])
# 1) codici, nomi, culture
rep('"nl", "et", "lv", "lt", "sv", "nb", "is", "he", "ur", "da", "tl" };', '"nl", "et", "lv", "lt", "sv", "nb", "is", "he", "ur", "da", "tl",\n            ' + ', '.join('"%s"' % c for c, *_ in NEW) + ' };')
rep('"עברית", "اردو", "Dansk", "Tagalog" };', '"עברית", "اردو", "Dansk", "Tagalog",\n            ' + ', '.join('"%s"' % n for _, _, n, _ in NEW) + ' };')
rep('"is-IS", "he-IL", "ur-PK", "da-DK", "fil-PH" };', '"is-IS", "he-IL", "ur-PK", "da-DK", "fil-PH",\n            ' + ', '.join('"%s"' % k for *_, k in NEW) + ' };')
# 2) array Testi: dopo la fine dell'array TL
i = s.index('        public static readonly string[] TL = {'); e = s.index('\n        };\n', i) + len('\n        };\n')
arrs = ''
for c, A, _, _ in NEW:
    u = json.load(io.open('%s/%s/ui.json' % (W, c), encoding='utf-8')); assert len(u) == it_len, (c, len(u))
    arrs += '        public static readonly string[] %s = {\n' % A + ',\n'.join('            ' + cs(x) for x in u) + '\n        };\n'
s = s[:e] + arrs + s[e:]
# 3) switch
rep('                case 27: col = Testi.TL; break;\n', '                case 27: col = Testi.TL; break;\n' + ''.join('                case %d: col = Testi.%s; break;\n' % (28 + k, A) for k, (c, A, _, _) in enumerate(NEW)))
# 4) caratteri: thailandese e cinese tradizionale
rep('            if (Idx == 14) FontUi =', '            if (Idx == 34) FontUi = FontEsiste("Leelawadee UI") ? "Leelawadee UI" : (FontEsiste("Tahoma") ? "Tahoma" : "Segoe UI");\n            if (Idx == 35) FontUi = FontEsiste("Microsoft JhengHei UI") ? "Microsoft JhengHei UI" : (FontEsiste("Microsoft YaHei UI") ? "Microsoft YaHei UI" : "Segoe UI");\n            if (Idx == 14) FontUi =')
rep('        static readonly string[][] CaratteriScrittura = {\n', '        static readonly string[][] CaratteriScrittura = {\n            new string[] { "zh-TW", "Microsoft JhengHei UI", "Microsoft JhengHei", "PMingLiU", "MingLiU", "DFKai-SB", "Microsoft YaHei UI" },\n            new string[] { "th", "Leelawadee UI", "Leelawadee", "Tahoma", "Microsoft Sans Serif", "Angsana New", "Cordia New", "Browallia New" },\n            new string[] { "el", "Segoe UI", "Arial", "Tahoma", "Calibri", "Cambria", "Times New Roman", "Verdana", "Consolas", "Courier New", "Georgia", "Microsoft Sans Serif" },\n')
# 5) manuale interno
rep('"nb", "is", "he", "ur", "da", "tl" };\n        static readonly Dictionary<string, Dictionary<string, string>> testi', '"nb", "is", "he", "ur", "da", "tl", ' + ', '.join('"%s"' % c for c, *_ in NEW) + ' };\n        static readonly Dictionary<string, Dictionary<string, string>> testi')
i = s.index('        static string Lingua(string l) { return testi.ContainsKey(l) ? l : "en"; }')
j = s.rindex('        }\n', 0, i)   # fine del costruttore statico
blk = ''
for c, *_ in NEW:
    m = json.load(io.open('%s/%s/manuale.json' % (W, c), encoding='utf-8'))
    blk += '            testi["%s"] = new Dictionary<string, string> {\n' % c + ',\n'.join('                { %s, %s }' % (cs(k), cs(v)) for k, v in m['testi'].items()) + '\n            };\n'
    blk += '            elenchi["%s"] = new Dictionary<string, string[]>();\n' % c
    for k, v in m['elenchi'].items():
        blk += '            elenchi["%s"]["%s"] = new string[] {\n' % (c, k) + ',\n'.join('                ' + cs(x) for x in v) + '\n            };\n'
s = s[:j] + blk + s[j:]
# 6) ManualeV27 (se tradotto)
i = s.index('        // true se il manuale nuovo (v27-v28) è tradotto in questa lingua')
j = s.rindex('        }\n', 0, i)
blk = ''; v27 = []
for c, *_ in NEW:
    f = '%s/%s/manuale_v27.json' % (W, c)
    if not os.path.exists(f): continue
    m = json.load(io.open(f, encoding='utf-8')); v27.append(c)
    blk += '            d["%s"] = new Dictionary<string, string[]>();\n' % c
    for k, v in m.items():
        blk += '            d["%s"]["%s"] = new string[] {\n' % (c, k) + ',\n'.join('                ' + cs(x) for x in v) + '\n            };\n'
s = s[:j] + blk + s[j:]
out = s.replace('\n', nl).encode('utf-8')
io.open(p, 'wb').write((b'\xef\xbb\xbf' if bom else b'') + out)
# 7) licenze e readme
for c, *_ in NEW:
    for k in ('LICENSE', 'README'):
        io.open('%s/lingue/%s_%s.txt' % (R, k, c), 'wb').write(io.open('%s/%s/%s.txt' % (W, c, k), 'rb').read())
# 8) installatore: lingue che Inno Setup conosce di sicuro
iss = io.open(R + '/YAEC.iss', encoding='utf-8-sig').read()
add = [('brazilianportuguese', 'BrazilianPortuguese', 'pt-BR'), ('polish', 'Polish', 'pl'), ('czech', 'Czech', 'cs')]
for n, f, c in add:
    if 'Name: "%s"' % n not in iss:
        iss = iss.replace('Name: "turkish"; MessagesFile: "compiler:Languages\\Turkish.isl"; LicenseFile: "lingue\\LICENSE_tr.txt"',
                          'Name: "turkish"; MessagesFile: "compiler:Languages\\Turkish.isl"; LicenseFile: "lingue\\LICENSE_tr.txt"\nName: "%s"; MessagesFile: "compiler:Languages\\%s.isl"; LicenseFile: "lingue\\LICENSE_%s.txt"' % (n, f, c) if False else
                          'Name: "turkish"; MessagesFile: "compiler:Languages\\Turkish.isl"; LicenseFile: "lingue\\LICENSE_tr.txt"')
        iss = iss.replace('\n\n[Tasks]', '\nName: "%s"; MessagesFile: "compiler:Languages\\%s.isl"; LicenseFile: "lingue\\LICENSE_%s.txt"\n\n[Tasks]' % (n, f, c), 1)
io.open(R + '/YAEC.iss', 'w', encoding='utf-8-sig').write(iss)
print('ok; ManualeV27 in', v27)
