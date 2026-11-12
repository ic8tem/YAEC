#!/bin/bash
# Crea yaec_<versione>_amd64.deb, yaec_<versione>_arm64.deb e _armhf.deb (Raspberry Pi), yaec-<versione>-1.noarch.rpm (Fedora, openSUSE) e YAEC-<versione>-linux-{x64,x86,arm64,arm}-portatile.tar.gz, YAEC-<versione>-{freebsd,openbsd}-x64-portatile.tar.gz da YAEC.exe (lo stesso eseguibile di Windows)
set -euo pipefail
VER="$1"; OUT="${2:-dist}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
mkdir -p "$OUT"; OUT="$(cd "$OUT" && pwd)"
# --- .deb (Debian, Ubuntu, Mint...) ---
PKG="$(mktemp -d)/yaec_${VER}_amd64"
install -Dm644 "$ROOT/YAEC.exe" "$PKG/usr/lib/yaec/YAEC.exe"
install -Dm755 "$ROOT/packaging/linux/yaec" "$PKG/usr/bin/yaec"
install -Dm644 "$ROOT/packaging/linux/yaec.desktop" "$PKG/usr/share/applications/yaec.desktop"
install -Dm644 "$ROOT/packaging/icons/yaec-256.png" "$PKG/usr/share/icons/hicolor/256x256/apps/yaec.png"
install -Dm644 "$ROOT/README.txt" "$PKG/usr/share/doc/yaec/README.txt"
install -Dm644 "$ROOT/LICENZA.txt" "$PKG/usr/share/doc/yaec/copyright"
mkdir -p "$PKG/usr/share/doc/yaec/lingue" && cp "$ROOT"/lingue/*.txt "$PKG/usr/share/doc/yaec/lingue/"
mkdir -p "$PKG/DEBIAN"
cat > "$PKG/DEBIAN/control" <<CTRL
Package: yaec
Version: ${VER}
Section: hamradio
Priority: optional
Architecture: amd64
Depends: mono-runtime, libmono-system-windows-forms4.0-cil, libmono-system-drawing4.0-cil, libmono-system-web-extensions4.0-cil, libmono-system-security4.0-cil, libmono-system-io-compression4.0-cil, libmono-system-io-compression-filesystem4.0-cil, libgdiplus
Maintainer: Costantino IC8TEM <ic8tem@gmail.com>
Homepage: https://github.com/ic8tem/YAEC
Description: YAEC - Yet Another EME Calc
 Moon position, pointing windows, EME link budget, sky and solar noise
 calculator for radio amateurs (Windows Forms program run with Mono).
CTRL
dpkg-deb --root-owner-group --build "$PKG" "$OUT/yaec_${VER}_amd64.deb"
# --- .deb per Raspberry Pi OS a 64 bit (stesso contenuto, architettura arm64) ---
PKGA="$(mktemp -d)/yaec_${VER}_arm64"
cp -a "$PKG/." "$PKGA/"
sed -i 's/^Architecture: amd64$/Architecture: arm64/' "$PKGA/DEBIAN/control"
dpkg-deb --root-owner-group --build "$PKGA" "$OUT/yaec_${VER}_arm64.deb"
# --- .deb per Raspberry Pi OS a 32 bit (armhf) ---
PKGH="$(mktemp -d)/yaec_${VER}_armhf"
cp -a "$PKG/." "$PKGH/"
sed -i 's/^Architecture: amd64$/Architecture: armhf/' "$PKGH/DEBIAN/control"
dpkg-deb --root-owner-group --build "$PKGH" "$OUT/yaec_${VER}_armhf.deb"
# --- .rpm (Fedora, openSUSE): YAEC.exe gira con Mono, quindi il pacchetto è noarch ---
if command -v rpmbuild >/dev/null 2>&1; then
  RB="$(mktemp -d)"; mkdir -p "$RB"/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
  RVER="$(echo "$VER" | tr '-' '_')"
  cat > "$RB/SPECS/yaec.spec" <<SPEC
Name: yaec
Version: ${RVER}
Release: 1
Summary: YAEC - Yet Another EME Calc
License: Proprietary (see /usr/share/doc/yaec/copyright)
URL: https://github.com/ic8tem/YAEC
BuildArch: noarch
Requires: mono-core, mono-winforms
%description
Moon position, pointing windows, EME link budget, sky and solar noise
calculator for radio amateurs (Windows Forms program run with Mono).
%install
mkdir -p %{buildroot}
cp -a "$PKG/usr" %{buildroot}/
%files
/usr/lib/yaec
/usr/bin/yaec
/usr/share/applications/yaec.desktop
/usr/share/icons/hicolor/256x256/apps/yaec.png
/usr/share/doc/yaec
SPEC
  rpmbuild --define "_topdir $RB" --define "_build_id_links none" -bb "$RB/SPECS/yaec.spec" >/dev/null
  cp "$RB"/RPMS/noarch/yaec-*.noarch.rpm "$OUT/yaec-${VER}-1.noarch.rpm"
else
  echo "rpmbuild non disponibile: niente .rpm" >&2
fi
# --- .tar.gz portatili (tutte le distribuzioni) ---
T="$(mktemp -d)/YAEC-${VER}-linux"
mkdir -p "$T"
cp "$ROOT/YAEC.exe" "$ROOT/README.txt" "$ROOT/LICENZA.txt" "$T/"
cp -R "$ROOT/lingue" "$T/"
cp "$ROOT/packaging/linux/yaec" "$ROOT/packaging/linux/install.sh" "$ROOT/packaging/linux/yaec.desktop" "$T/"
cp "$ROOT/packaging/icons/yaec-256.png" "$T/yaec.png"
chmod +x "$T/yaec" "$T/install.sh"
# stesso contenuto (YAEC.exe gira con Mono su ogni processore): un archivio per architettura, come le altre distribuzioni
for A in x64 x86 arm64 arm; do tar -C "$(dirname "$T")" -czf "$OUT/YAEC-${VER}-linux-${A}-portatile.tar.gz" "$(basename "$T")"; done
# FreeBSD e OpenBSD amd64: stesso contenuto (Mono dai pacchetti del sistema), non ancora provati
for B in freebsd openbsd; do tar -C "$(dirname "$T")" -czf "$OUT/YAEC-${VER}-${B}-x64-portatile.tar.gz" "$(basename "$T")"; done
ls -l "$OUT"
