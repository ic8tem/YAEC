#!/bin/bash
# Solo per la 1.9.3 (cambio dei nomi dei pacchetti, come in YA-MS): copie con i vecchi nomi dei file che
# l'aggiornamento automatico della 1.9.1 e della 1.9.2 cerca su GitHub. Stesso contenuto dei file nuovi.
# Uso: packaging/nomi-vecchi.sh <versione> <cartella con windows/ linux/ macos/>   (crea <cartella>/vecchi/)
set -euo pipefail
V="$1"; D="$2"
mkdir -p "$D/vecchi"
c() { cp "$D/$1" "$D/vecchi/$2"; }
for A in x64 x86; do
  c "windows/YAEC-$V-windows-$A-setup.exe" "YAEC-$V-win-$A-setup.exe"
  c "windows/YAEC-$V-windows-$A-portatile.zip" "YAEC-$V-win-$A-portatile.zip"
done
c "macos/YAEC-$V-mac-apple-silicon-app.zip" "YAEC-$V-osx-arm64-app.zip"
c "macos/YAEC-$V-mac-intel-app.zip" "YAEC-$V-osx-x64-app.zip"
for A in x64 x86 arm64; do c "linux/YAEC-$V-linux-$A.tar.gz" "YAEC-$V-linux-$A-portatile.tar.gz"; done
c "linux/YAEC-$V-linux-armv7l.tar.gz" "YAEC-$V-linux-arm-portatile.tar.gz"
for A in x64 arm64; do c "linux/YAEC-$V-alpine-$A.tar.gz" "YAEC-$V-alpine-$A-portatile.tar.gz"; done
for B in freebsd openbsd; do c "linux/YAEC-$V-$B-x64.tar.gz" "YAEC-$V-$B-x64-portatile.tar.gz"; done
ls -l "$D/vecchi"
