import re, json, io
src=io.open('/home/claude/yaec/YAEC.cs',encoding='utf-8').read()
STR=r'"((?:[^"\\]|\\.)*)"'
def un(s): return json.loads('"'+s+'"')   # escape C# compatibili con JSON per \" \\ \n \t \u
def arr(name):
    m=re.search(r'public static readonly string\[\] %s = \{'%name, src); i=m.end(); e=src.index('\n        };', i)
    return [un(x) for x in re.findall(STR, src[i:e])]
IT=arr('IT'); EN=arr('EN')
assert len(IT)==len(EN), (len(IT),len(EN)); print(len(IT))
json.dump({'it':IT,'en':EN}, io.open('ui.json','w',encoding='utf-8'), ensure_ascii=False, indent=0)
# manuale: blocchi testi["xx"] ed elenchi["xx"][..]
i=src.index('static class TestiManuale')
def man(code):
    t={}; m=re.search(r'testi\["%s"\] = new Dictionary<string, string> \{(.*?)\n            \};'%code, src[i:], re.S)
    for k,v in re.findall(r'\{ '+STR+', '+STR+r' \}', m.group(1)): t[un(k)]=un(v)
    el={}
    for m in re.finditer(r'elenchi\["%s"\]\["(\w+)"\] = new string\[\] \{(.*?)\n            \};'%code, src[i:], re.S):
        el[m.group(1)]=[un(x) for x in re.findall(STR, m.group(2))]
    return {'testi':t,'elenchi':el}
json.dump({'it':man('it'),'en':man('en')}, io.open('manuale.json','w',encoding='utf-8'), ensure_ascii=False, indent=1)
M=man('it'); print(len(M['testi']), {k:len(v) for k,v in M['elenchi'].items()}, sum(len(x.split()) for v in M['elenchi'].values() for x in v))
