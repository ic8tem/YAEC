#!/bin/bash
# Note della release di YAEC: tabella «Scarica la versione per il tuo sistema» con i collegamenti ai pacchetti.
# Uso: packaging/release-notes.sh <versione>   (scrive il testo sullo standard output)
set -euo pipefail
V="$1"
U="https://github.com/ic8tem/YAEC/releases/download/v${V}"
l() { echo "[$1]($U/$1)"; }   # collegamento a un file della release
cat <<EOF
YAEC - Yet Another EME Calc ${V}, a cura di Costantino IC8TEM.

## Scarica la versione per il tuo sistema

| Sistema | Installatore | Senza installare |
|---|---|---|
| Windows 10/11 64 bit | $(l YAEC-${V}-win-x64-setup.exe) | $(l YAEC-${V}-win-x64-portatile.zip) |
| Windows 10/11 32 bit | $(l YAEC-${V}-win-x86-setup.exe) | $(l YAEC-${V}-win-x86-portatile.zip) |
| Windows su ARM (Snapdragon) ¹ | $(l YAEC-${V}-win-arm64-setup.exe) | $(l YAEC-${V}-win-arm64-portatile.zip) |
| Windows 7 SP1, 8, 8.1 - 64 bit ¹ ² | $(l YAEC-${V}-win-x64-setup.exe) | $(l YAEC-${V}-win-x64-portatile.zip) |
| Windows 7 SP1, 8, 8.1 - 32 bit ¹ ² | $(l YAEC-${V}-win-x86-setup.exe) | $(l YAEC-${V}-win-x86-portatile.zip) |
| macOS Apple Silicon (M1-M4) ³ | $(l YAEC-${V}-osx-arm64.dmg) | $(l YAEC-${V}-osx-arm64-app.zip) |
| macOS Intel ³ | $(l YAEC-${V}-osx-x64.dmg) | $(l YAEC-${V}-osx-x64-app.zip) |
| Debian, Ubuntu, Mint (x86_64) | $(l yaec_${V}_amd64.deb) | $(l YAEC-${V}-linux-x64-portatile.tar.gz) |
| Fedora, openSUSE (x86_64) | $(l yaec-${V}-1.noarch.rpm) | $(l YAEC-${V}-linux-x64-portatile.tar.gz) |
| Raspberry Pi OS 64 bit (e altri Linux ARM64) | $(l yaec_${V}_arm64.deb) | $(l YAEC-${V}-linux-arm64-portatile.tar.gz) |
| Raspberry Pi OS 32 bit (armv7l) ¹ | $(l yaec_${V}_armhf.deb) | $(l YAEC-${V}-linux-arm-portatile.tar.gz) |
| Linux ARM64 rpm (Fedora ARM...) ¹ | $(l yaec-${V}-1.noarch.rpm) | $(l YAEC-${V}-linux-arm64-portatile.tar.gz) |
| Alpine / musl x64 ¹ | - | $(l YAEC-${V}-alpine-x64-portatile.tar.gz) |
| Alpine / musl ARM64 ¹ | - | $(l YAEC-${V}-alpine-arm64-portatile.tar.gz) |
| Arch Linux, Manjaro, EndeavourOS | $(l yaec-${V}-1-any.pkg.tar.zst) | $(l YAEC-${V}-linux-x64-portatile.tar.gz) |
| Slackware, anche ARM64 ¹ | $(l yaec-${V}-noarch-1_ic8tem.txz) | $(l YAEC-${V}-linux-arm64-portatile.tar.gz) |
| Qualsiasi Linux x86_64 (AppImage) ¹ | - | $(l YAEC-${V}-x86_64.AppImage) |
| Qualsiasi Linux ARM64 (AppImage) ¹ | - | $(l YAEC-${V}-aarch64.AppImage) |
| Linux i686 (32 bit) ¹ | - | $(l YAEC-${V}-linux-x86-portatile.tar.gz) |
| FreeBSD amd64 ¹ | - | $(l YAEC-${V}-freebsd-x64-portatile.tar.gz) |
| OpenBSD amd64 ¹ | - | $(l YAEC-${V}-openbsd-x64-portatile.tar.gz) |

¹ Non ancora provato su questa piattaforma: le prove degli utenti sono benvenute.
² Stessi pacchetti di Windows 10/11; serve il .NET Framework 4.8 e, per scaricare da GitHub, gli aggiornamenti di Windows per il TLS 1.2.
³ Sperimentale: servono Mono e XQuartz.

Fuori da Windows YAEC gira con Mono: i pacchetti .deb, .rpm e Arch lo installano da soli, per gli altri va installato prima (vedi README.txt).

**Aggiornamenti automatici**: YAEC controlla GitHub all'avvio e si aggiorna da solo su Windows, con gli archivi portatili, l'AppImage e l'app per Mac. I pacchetti .deb, .rpm, Arch e Slackware si aggiornano invece con il gestore dei pacchetti: YAEC avvisa e apre questa pagina.

Codice sorgente: $(l YAEC-${V}-source.zip).

Impronte SHA-256 di tutti i file in $(l SHA256SUMS.txt) (come verificarle: README.txt).

Le versioni precedenti alla 1.0 si chiamano beta. Dettagli nel file README.txt.
EOF
