#!/bin/bash
# Crea yaec_<versione>_all.deb e YAEC-<versione>-linux.tar.gz da YAEC.exe (lo stesso eseguibile di Windows)
set -euo pipefail
VER="$1"; OUT="${2:-dist}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
mkdir -p "$OUT"; OUT="$(cd "$OUT" && pwd)"
# --- .deb (Debian, Ubuntu, Mint...) ---
PKG="$(mktemp -d)/yaec_${VER}_all"
install -Dm644 "$ROOT/YAEC.exe" "$PKG/usr/lib/yaec/YAEC.exe"
install -Dm755 "$ROOT/packaging/linux/yaec" "$PKG/usr/bin/yaec"
install -Dm644 "$ROOT/packaging/linux/yaec.desktop" "$PKG/usr/share/applications/yaec.desktop"
install -Dm644 "$ROOT/packaging/icons/yaec-256.png" "$PKG/usr/share/icons/hicolor/256x256/apps/yaec.png"
install -Dm644 "$ROOT/README.txt" "$PKG/usr/share/doc/yaec/README.txt"
install -Dm644 "$ROOT/LICENZA.txt" "$PKG/usr/share/doc/yaec/copyright"
mkdir -p "$PKG/DEBIAN"
cat > "$PKG/DEBIAN/control" <<CTRL
Package: yaec
Version: ${VER}
Section: hamradio
Priority: optional
Architecture: all
Depends: mono-runtime, libmono-system-windows-forms4.0-cil, libmono-system-drawing4.0-cil, libmono-system-web-extensions4.0-cil, libmono-system-security4.0-cil, libmono-system-io-compression4.0-cil, libmono-system-io-compression-filesystem4.0-cil, libgdiplus, ca-certificates-mono
Maintainer: Costantino IC8TEM <ic8tem@gmail.com>
Homepage: https://github.com/ic8tem/YAEC
Description: YAEC - Yet Another EME Calc
 Moon position, pointing windows, EME link budget, sky and solar noise
 calculator for radio amateurs (Windows Forms program run with Mono).
CTRL
dpkg-deb --root-owner-group --build "$PKG" "$OUT/yaec_${VER}_all.deb"
# --- .tar.gz (tutte le distribuzioni) ---
T="$(mktemp -d)/YAEC-${VER}-linux"
mkdir -p "$T"
cp "$ROOT/YAEC.exe" "$ROOT/README.txt" "$ROOT/LICENZA.txt" "$T/"
cp "$ROOT/packaging/linux/yaec" "$ROOT/packaging/linux/install.sh" "$ROOT/packaging/linux/yaec.desktop" "$T/"
cp "$ROOT/packaging/icons/yaec-256.png" "$T/yaec.png"
chmod +x "$T/yaec" "$T/install.sh"
tar -C "$(dirname "$T")" -czf "$OUT/YAEC-${VER}-linux.tar.gz" "$(basename "$T")"
ls -l "$OUT"
