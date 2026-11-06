#!/bin/sh
# Installa YAEC per l'utente corrente (senza root) in ~/.local
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.local/lib/yaec" "$HOME/.local/bin" "$HOME/.local/share/applications" "$HOME/.local/share/icons/hicolor/256x256/apps"
cp "$DIR/YAEC.exe" "$DIR/README.txt" "$DIR/LICENZA.txt" "$HOME/.local/lib/yaec/"
cp "$DIR/yaec" "$HOME/.local/lib/yaec/yaec"
chmod +x "$HOME/.local/lib/yaec/yaec"
ln -sf "$HOME/.local/lib/yaec/yaec" "$HOME/.local/bin/yaec"
cp "$DIR/yaec.png" "$HOME/.local/share/icons/hicolor/256x256/apps/yaec.png"
sed "s|^Exec=yaec|Exec=$HOME/.local/bin/yaec|" "$DIR/yaec.desktop" > "$HOME/.local/share/applications/yaec.desktop"
command -v update-desktop-database >/dev/null 2>&1 && update-desktop-database "$HOME/.local/share/applications" || true
echo "YAEC installed. Start it from the applications menu or with: ~/.local/bin/yaec"
command -v mono >/dev/null 2>&1 || echo "Note: Mono is not installed yet (e.g. sudo apt install mono-complete)."
