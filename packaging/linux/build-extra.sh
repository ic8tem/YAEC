#!/bin/bash
# Pacchetti Linux aggiuntivi ricavati dal .deb (stessi file, YAEC.exe gira con Mono su ogni processore):
#   yaec-<versione>-1-any.pkg.tar.zst      Arch Linux, Manjaro, EndeavourOS, Arch Linux ARM (sudo pacman -U ...)
#   yaec-<versione>-noarch-1_ic8tem.txz    Slackware, anche Slackware ARM (installpkg ...)
#   YAEC-<versione>-{x86_64,aarch64}.AppImage   un solo file per quasi tutte le distribuzioni (serve Mono installato)
#   YAEC-<versione>-alpine-{x64,arm64}-portatile.tar.gz   Alpine Linux (musl), con Mono dai pacchetti di Alpine
# Uso: packaging/linux/build-extra.sh <versione> <cartella dist con yaec_<versione>_amd64.deb e il tar.gz linux-x64>
# Richiede docker (per makepkg nel contenitore archlinux) e la rete (appimagetool da GitHub).
set -euo pipefail
VER="$1"; OUT="$(cd "$2" && pwd)"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
DEB="$OUT/yaec_${VER}_amd64.deb"
PV="${VER//-/_}"

# --- Arch Linux (.pkg.tar.zst, arch=any) ---
W="$(mktemp -d)"; mkdir -p "$W/albero"
dpkg-deb -x "$DEB" "$W/albero"
cat > "$W/PKGBUILD" <<EOF
pkgname=yaec
pkgver=${PV}
pkgrel=1
pkgdesc="YAEC - Yet Another EME Calc: Moon position, EME link budget, sky and solar noise (Costantino Cerrotta IC8TEM)"
arch=('any')
url="https://github.com/ic8tem/YAEC"
license=('custom:freeware')
depends=('mono')
options=('!strip' '!debug')
package() {
  cp -a "\$startdir/albero/." "\$pkgdir/"
}
EOF
docker run --rm -v "$W:/w" archlinux:latest bash -c "
  set -e
  pacman --disable-sandbox -Sy --noconfirm --needed base-devel >/dev/null
  useradd -m b && chown -R b /w
  su b -c 'cd /w && makepkg --nodeps --skipinteg -f'
  chmod -R a+rwX /w
"
cp "$W"/yaec-*-any.pkg.tar.zst "$OUT/yaec-${PV}-1-any.pkg.tar.zst"

# --- Slackware (.txz, noarch) ---
T="$(mktemp -d)"
dpkg-deb -x "$DEB" "$T"
mkdir -p "$T/install"
cat > "$T/install/slack-desc" <<'EOF'
    |-----handy-ruler------------------------------------------------------|
yaec: yaec (YAEC - Yet Another EME Calc)
yaec:
yaec: Moon position and pointing windows, EME link budget for yagi and dish
yaec: antennas, sky and solar noise, common windows with the DX station.
yaec: Windows Forms program run with Mono (install mono from SlackBuilds).
yaec: By Costantino Cerrotta IC8TEM.
yaec:
yaec: https://github.com/ic8tem/YAEC
yaec:
yaec:
yaec:
EOF
cat > "$T/install/doinst.sh" <<'EOF'
if [ -x /usr/bin/update-desktop-database ]; then /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1; fi
if [ -x /usr/bin/gtk-update-icon-cache ]; then /usr/bin/gtk-update-icon-cache -q usr/share/icons/hicolor >/dev/null 2>&1; fi
EOF
tar -C "$T" --owner=0 --group=0 -cJf "$OUT/yaec-${PV}-noarch-1_ic8tem.txz" install usr

# --- AppImage (x86_64 e aarch64: stesso YAEC.exe, cambia solo il runtime dell'AppImage) ---
A="$(mktemp -d)/YAEC.AppDir"
dpkg-deb -x "$DEB" "$A"
rm -rf "$A/usr/share/doc"
mkdir -p "$A/usr/share/doc/yaec"; cp "$ROOT/README.txt" "$ROOT/LICENZA.txt" "$A/usr/share/doc/yaec/"
cp -R "$ROOT/lingue" "$A/usr/lib/yaec/"
cp "$ROOT/packaging/icons/yaec-256.png" "$A/yaec.png"
sed 's/^Exec=.*/Exec=AppRun/' "$ROOT/packaging/linux/yaec.desktop" > "$A/yaec.desktop"
cat > "$A/AppRun" <<'EOF'
#!/bin/sh
# YAEC AppImage: avvia YAEC.exe con il Mono del sistema. I dati stanno in ~/.local/share/YAEC/data.
HERE="$(dirname "$(readlink -f "$0")")"
if ! command -v mono >/dev/null 2>&1; then
  MSG="YAEC needs Mono. Install it, e.g.: sudo apt install mono-complete  |  sudo dnf install mono-complete  |  sudo pacman -S mono  |  sudo zypper install mono-complete"
  if command -v zenity >/dev/null 2>&1; then zenity --error --text="$MSG" 2>/dev/null; elif command -v kdialog >/dev/null 2>&1; then kdialog --error "$MSG"; fi
  echo "$MSG" >&2
  exit 1
fi
exec mono "$HERE/usr/lib/yaec/YAEC.exe" "$@"
EOF
chmod 755 "$A/AppRun"
TOOL="$(mktemp -d)/appimagetool"
curl -fsSL -o "$TOOL" "https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-$(uname -m).AppImage"
chmod +x "$TOOL"
for AR in x86_64 aarch64; do
  ARCH=$AR "$TOOL" --appimage-extract-and-run --no-appstream "$A" "$OUT/YAEC-${VER}-${AR}.AppImage"
done

# --- Alpine Linux (musl): stesso archivio portatile, nome a parte ---
for AR in x64 arm64; do cp "$OUT/YAEC-${VER}-linux-x64-portatile.tar.gz" "$OUT/YAEC-${VER}-alpine-${AR}-portatile.tar.gz"; done
ls -l "$OUT"
