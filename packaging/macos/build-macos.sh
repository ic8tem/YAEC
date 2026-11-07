#!/bin/bash
# Crea YAEC.app e YAEC-<versione>-macOS.dmg (su un Mac: usa iconutil e hdiutil)
set -euo pipefail
VER="$1"; OUT="${2:-dist}"
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
mkdir -p "$OUT"; OUT="$(cd "$OUT" && pwd)"
W="$(mktemp -d)"
APP="$W/YAEC.app"
mkdir -p "$APP/Contents/MacOS" "$APP/Contents/Resources"
cp "$ROOT/YAEC.exe" "$APP/Contents/Resources/"
cp "$ROOT/README.txt" "$ROOT/LICENZA.txt" "$APP/Contents/Resources/"
cp -R "$ROOT/lingue" "$APP/Contents/Resources/"
cp "$ROOT/packaging/macos/yaec-launcher" "$APP/Contents/MacOS/YAEC"
chmod +x "$APP/Contents/MacOS/YAEC"
iconutil -c icns "$ROOT/packaging/macos/YAEC.iconset" -o "$APP/Contents/Resources/YAEC.icns"
cat > "$APP/Contents/Info.plist" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>CFBundleName</key><string>YAEC</string>
  <key>CFBundleDisplayName</key><string>YAEC - Yet Another EME Calc</string>
  <key>CFBundleIdentifier</key><string>it.ic8tem.yaec</string>
  <key>CFBundleVersion</key><string>${VER}</string>
  <key>CFBundleShortVersionString</key><string>${VER}</string>
  <key>CFBundleExecutable</key><string>YAEC</string>
  <key>CFBundleIconFile</key><string>YAEC</string>
  <key>CFBundlePackageType</key><string>APPL</string>
  <key>LSMinimumSystemVersion</key><string>10.13</string>
  <key>NSHighResolutionCapable</key><true/>
</dict>
</plist>
PLIST
# zip dell'app e immagine disco con il collegamento ad Applicazioni
( cd "$W" && ditto -c -k --keepParent YAEC.app "$OUT/YAEC-${VER}-macOS-app.zip" )
D="$W/dmg"; mkdir -p "$D"
cp -R "$APP" "$D/"
ln -s /Applications "$D/Applications"
cp "$ROOT/README.txt" "$D/README.txt"
cp -R "$ROOT/lingue" "$D/"
hdiutil create -volname "YAEC ${VER}" -srcfolder "$D" -ov -format UDZO "$OUT/YAEC-${VER}-macOS.dmg"
ls -l "$OUT"
