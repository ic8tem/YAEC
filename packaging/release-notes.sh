#!/bin/bash
# Note della release di YAEC: elenco dei pacchetti per sistema, solo nomi di file (nessun collegamento).
# Uso: packaging/release-notes.sh <versione>   (scrive il testo sullo standard output)
set -euo pipefail
V="$1"
cat <<EOF
YAEC - Yet Another EME Calc ${V}, a cura di Costantino IC8TEM.

- **Windows a 64 bit**: YAEC-${V}-win-x64-setup.exe (installatore) oppure YAEC-${V}-win-x64-portatile.zip; **Windows a 32 bit**: YAEC-${V}-win-x86-setup.exe oppure YAEC-${V}-win-x86-portatile.zip.
- **Windows su ARM64** (PC con Snapdragon): YAEC-${V}-win-arm64-setup.exe oppure YAEC-${V}-win-arm64-portatile.zip.
- **Windows 7 SP1, 8, 8.1**: gli stessi pacchetti, con il .NET Framework 4.8 (non ancora provato).
- **Linux (Debian, Ubuntu, Mint)**: yaec_${V}_amd64.deb (sudo apt install ./yaec_${V}_amd64.deb); **Raspberry Pi** (Raspberry Pi OS a 64 bit): yaec_${V}_arm64.deb; **Raspberry Pi OS a 32 bit**: yaec_${V}_armhf.deb.
- **Fedora, openSUSE**: yaec-${V}-1.noarch.rpm (con Mono).
- **Arch Linux, Manjaro, EndeavourOS**: yaec-${V}-1-any.pkg.tar.zst (sudo pacman -U ...); **Slackware**: yaec-${V}-noarch-1_ic8tem.txz (installpkg ...); **qualsiasi Linux**: YAEC-${V}-x86_64.AppImage o YAEC-${V}-aarch64.AppImage (con Mono installato); **Alpine Linux**: YAEC-${V}-alpine-x64-portatile.tar.gz o YAEC-${V}-alpine-arm64-portatile.tar.gz (non ancora provato).
- **Linux, tutte le distribuzioni (con Mono)**: YAEC-${V}-linux-x64-portatile.tar.gz (PC), YAEC-${V}-linux-arm64-portatile.tar.gz (ARM a 64 bit), YAEC-${V}-linux-arm-portatile.tar.gz (ARM a 32 bit, armv7l), YAEC-${V}-linux-x86-portatile.tar.gz (Linux i686, non ancora provato).
- **FreeBSD amd64** e **OpenBSD amd64** (con Mono, non ancora provati): YAEC-${V}-freebsd-x64-portatile.tar.gz, YAEC-${V}-openbsd-x64-portatile.tar.gz.
- **macOS** (sperimentale; servono Mono e XQuartz): YAEC-${V}-osx-arm64.dmg oppure YAEC-${V}-osx-arm64-app.zip (Apple Silicon), YAEC-${V}-osx-x64.dmg oppure YAEC-${V}-osx-x64-app.zip (Intel).
- **Aggiornamenti automatici**: YAEC controlla GitHub all'avvio e si aggiorna da solo su Windows, con gli archivi portatili, l'AppImage e l'app per Mac. I pacchetti .deb, .rpm, Arch e Slackware si aggiornano invece con il gestore dei pacchetti: YAEC avvisa e apre questa pagina.

I file sono qui sotto, in «Assets». Impronte SHA-256 di tutti i file in SHA256SUMS.txt (come verificarle: README.txt).

Le versioni precedenti alla 1.0 si chiamano beta. Dettagli nel file README.txt.
EOF
