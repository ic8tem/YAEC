# YAEC – Yet Another EME Calc

*a cura di Costantino IC8TEM*

Moon position, pointing windows, EME link budget, sky and solar noise calculator for radio amateurs, in 17 languages.
Windows, Linux and macOS (Linux and macOS with Mono).

Posizione della Luna, finestre di puntamento, budget del collegamento EME, rumore del cielo e del Sole per radioamatori, in 17 lingue.

## Download

Get the latest version from the **[Releases](../../releases)** page:

| System | File |
|---|---|
| Windows | `YAEC-x.y-Setup.exe` (installer) or `YAEC-x.y-windows-portable.zip` |
| Linux – Debian, Ubuntu, Mint | `yaec_x.y_all.deb` → `sudo apt install ./yaec_x.y_all.deb` |
| Linux – any distribution | `YAEC-x.y-linux.tar.gz` (needs Mono: `mono-complete` / `mono`), then `./install.sh` |
| macOS (experimental) | `YAEC-x.y-macOS.dmg` (needs Mono for macOS and XQuartz) |

All the versions before 1.0 are called **beta**.

## Build

- Windows: `compila.bat` (uses the C# compiler included in Windows, .NET Framework 4, C# 5).
- Every push is compiled by GitHub Actions on Windows and started on Linux with Mono; a tag `vX.Y` publishes the release with the Windows installer (Inno Setup) and the Linux and macOS packages. See `.github/workflows/build.yml`.

## License

See `LICENZA.txt`.
