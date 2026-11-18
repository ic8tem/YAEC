#!/bin/bash
# Note della release di YAEC: tabella «Scarica la versione per il tuo sistema» con il collegamento a ogni pacchetto
# (come in YA-MS), la novità di questa versione presa dalla storia delle versioni in YAEC.cs e le note per l'installazione.
# Uso: packaging/release-notes.sh <versione>   (scrive il testo sullo standard output)
set -euo pipefail
V="$1"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NOV="$(grep -o "Lang.T(\"${V//./\\.} - [^\"]*\")" "$ROOT/YAEC.cs" | head -1 | sed -e 's/^Lang.T("//' -e 's/")$//')"
[ -n "$NOV" ] || NOV="Versione ${V}."
COMPAT=""
if [ "$V" = "1.9.3" ]; then
  COMPAT="- Dalla 1.9.3 i file hanno i nomi di YA-MS (-windows-, -mac-apple-silicon-, -mac-intel-, -linux-x64.tar.gz...). Per far aggiornare da sole la 1.9.1 e la 1.9.2, questa versione ha anche le copie con i vecchi nomi (-win-, -osx-, -portatile.tar.gz): sono lo stesso programma e servono solo all'aggiornamento automatico."
fi
python3 - "$ROOT/packaging/note-release.md" "$V" "$NOV" "$COMPAT" <<'PY'
import sys
t=open(sys.argv[1],encoding='utf-8').read()
t=t.replace('@VER@',sys.argv[2]).replace('@NOVITA@','Novità della '+sys.argv[3].replace(' - ',': ',1))
c=sys.argv[4]
t=t.replace('@COMPAT@\n', c+'\n' if c else '')
sys.stdout.write(t)
PY
