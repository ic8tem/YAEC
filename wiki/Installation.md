# Installation

All the packages are on the **[Releases](https://github.com/ic8tem/YAEC/releases/latest)** page (in the file names below, `x.y` is the version number, e.g. `1.2.1`). You do not need to compile anything. Every release also includes the source code and `SHA256SUMS.txt`.

| System | File | Needs |
|---|---|---|
| Windows | `YAEC-x.y-Setup.exe` (installer) or `YAEC-x.y-windows-portable.zip` | nothing (.NET Framework 4 is part of Windows) |
| Debian, Ubuntu, Mint | `yaec_x.y_all.deb` | Mono (installed automatically by apt) |
| Other Linux distributions | `YAEC-x.y-linux.tar.gz` | Mono |
| macOS (experimental) | `YAEC-x.y-macOS.dmg` | Mono for macOS and XQuartz |

## Windows

### Installer
1. Download `YAEC-x.y-Setup.exe` and run it.
2. If **SmartScreen** shows a warning: *More info* → *Run anyway*.
3. YAEC is installed into **Documents\YAEC**, **without administrator rights**, with Start menu and desktop shortcuts and an uninstaller.

### Portable
Extract `YAEC-x.y-windows-portable.zip` into a folder **where you can write** (e.g. `Documents\YAEC`) and run `YAEC.exe`. Do not put it in *Program Files*: YAEC keeps its `data` folder next to the executable. Because nothing is written elsewhere, you can copy the whole folder to a USB stick or another computer.

## Linux

YAEC runs with **Mono**, the open-source .NET runtime (maintained by WineHQ). It is the same program on every distribution.

### Debian, Ubuntu, Mint
```sh
sudo apt install ./yaec_x.y_all.deb
```
apt installs Mono as well. Start YAEC from the applications menu or with the command `yaec`.

### Other distributions
Install Mono first:

| Distribution | Command |
|---|---|
| Fedora | `sudo dnf install mono-complete` |
| Arch | `sudo pacman -S mono` |
| openSUSE | `sudo zypper install mono-complete` |

Then extract `YAEC-x.y-linux.tar.gz` and run `./install.sh` (it installs into `~/.local`, no root needed), or simply run `./yaec` from the extracted folder.

Data folder: `~/.local/share/YAEC/data`.

## macOS (experimental)

1. Install **Mono for macOS** ([mono-project.com](https://www.mono-project.com/download/stable/) or the *Framework Mono* package from WineHQ) and **XQuartz** ([xquartz.org](https://www.xquartz.org)). On macOS the Windows Forms window of Mono is drawn through X11, which is why XQuartz is needed.
2. Open `YAEC-x.y-macOS.dmg` and drag YAEC into **Applications**.
3. The first time, **right-click YAEC → Open** (the app is not signed by Apple).

If Mono or XQuartz is missing, YAEC shows an alert and opens the download page. After installing XQuartz, log out and in again.

Data folder: `~/Library/Application Support/YAEC/data`.

## Checking the downloaded files (SHA-256)

Each release has `SHA256SUMS.txt` with the SHA-256 fingerprint of every package. Compare it with the fingerprint of the file you downloaded:

| System | Command |
|---|---|
| Windows (PowerShell) | `Get-FileHash .\YAEC-x.y-Setup.exe -Algorithm SHA256` |
| Windows (command prompt) | `certutil -hashfile YAEC-x.y-Setup.exe SHA256` |
| Linux | `sha256sum -c --ignore-missing SHA256SUMS.txt` |
| macOS | `shasum -a 256 -c --ignore-missing SHA256SUMS.txt` |

If the values differ, **do not install** the file: download it again from the [Releases](https://github.com/ic8tem/YAEC/releases) page.

## Updating

Install the new version over the old one (or extract the new portable zip into the same folder). Your settings stay in the `data` folder; see [Settings and data folder](Settings-and-Data-Folder).

## Building from source (developers only)

On Windows, `compila.bat` compiles `YAEC.cs` with the C# compiler included in Windows (.NET Framework 4, C# 5). Every push to GitHub is compiled by GitHub Actions on Windows and started on Linux with Mono; when the `VERSION` file holds a new version, the workflow publishes the release with the Windows installer (Inno Setup) and the Linux and macOS packages.

Next: [Getting started](Getting-Started).
