# YAEC – Yet Another EME Calc

*a cura di Costantino IC8TEM*

Moon position, pointing windows, EME link budget, sky and solar noise calculator for radio amateurs, in 37 languages.
Windows, Linux and macOS (Linux and macOS with Mono).

Posizione della Luna, finestre di puntamento, budget del collegamento EME, rumore del cielo e del Sole per radioamatori, in 37 lingue.

[![Ko-fi](https://img.shields.io/badge/Ko--fi-ic8tem-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/ic8tem)

## Languages

YAEC, its two manuals (user manual and *Theory and tips on EME*), the licence and the README are available in **37 languages**; the language is chosen at the top of the main screen. Licence and README in every language are in the [`lingue`](lingue) folder.

| | | | |
|---|---|---|---|
| English `en` | Italiano `it` | Deutsch `de` | Français `fr` |
| Español `es` | Português `pt` | Nederlands `nl` | Svenska `sv` |
| Norsk (bokmål) `nb` | Íslenska `is` | Eesti `et` | Latviešu `lv` |
| Lietuvių `lt` | Русский `ru` | Українська `uk` | Türkçe `tr` |
| Afrikaans `af` | العربية `ar` | עברית `he` | اردو `ur` |
| हिन्दी `hi` | বাংলা `bn` | 中文 (简体) `zh` | 日本語 `ja` |
| 한국어 `ko` | Bahasa Indonesia `id` | Dansk `da` | Tagalog `tl` |
| Português (Brasil) `pt-BR` | ไทย `th` | 中文 (繁體) `zh-TW` | Polski `pl` |
| Čeština `cs` | Română `ro` | Ελληνικά `el` | Magyar `hu` |
| Slovenčina `sk` | | | |

## Installation

[English](#english) · [Italiano](#italiano) · [Deutsch](#deutsch) · [Français](#français) · [Español](#español) · [Português](#português) · [Türkçe](#türkçe) · [Čeština](#čeština) · [Slovenčina](#slovenčina) · [中文](#中文) · [日本語](#日本語) · [한국어](#한국어)

Download the files from the **[Releases](../../releases/latest)** page (x.y = version number).

### English
| Distribution | Files |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC with Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64-bit, PCs and mini PCs other than Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb package) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm package) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst package) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz package) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (any Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Not yet tested on this platform: reports from users are welcome.

**Automatic updates** — from 1.9.1: at start-up YAEC checks GitHub for a new version and updates itself with the Windows installer or zip, the portable .tar.gz archives (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), the AppImage and the macOS app; every package is checked against SHA256SUMS.txt. The .deb, .rpm, Arch (.pkg.tar.zst) and Slackware (.txz) packages are updated with the system package manager instead: YAEC announces the new version and opens the GitHub page.

- **Windows** – download `YAEC-x.y-win-x64-setup.exe` and run it. It installs YAEC into *Documents\YAEC* without administrator rights, with Start menu and desktop shortcuts and an uninstaller. If SmartScreen warns you: *More info* → *Run anyway*. No installation wanted? Extract `YAEC-x.y-win-x64-portatile.zip` into a folder where you can write and run `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – download `yaec_x.y_amd64.deb` and run `sudo apt install ./yaec_x.y_amd64.deb` (Mono is installed too); start YAEC from the applications menu or with `yaec`.
- **Windows 32-bit** – `YAEC-x.y-win-x86-setup.exe` or `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64-bit, Pi 4/5) – download `yaec_x.y_arm64.deb` and run `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – other distributions** – install Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extract `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) and run `./install.sh`.
- **macOS (experimental)** – install Mono for macOS and XQuartz, open `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) and drag YAEC into Applications; the first time, right-click → *Open*.
- Every release has `SHA256SUMS.txt` to check the downloaded files.

### Italiano
| Distribuzione | File |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC con Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 bit, PC e mini-PC non Raspberry) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (pacchetto .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (pacchetto .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (pacchetto .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (pacchetto .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (qualsiasi Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Non ancora provato su questa piattaforma: le prove degli utenti sono benvenute.

**Aggiornamenti automatici** — dalla 1.9.1: all'avvio YAEC controlla su GitHub se c'è una versione nuova e si aggiorna da solo con l'installatore o lo zip per Windows, gli archivi portatili .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), l'AppImage e l'app per macOS; ogni pacchetto viene verificato con SHA256SUMS.txt. I pacchetti .deb, .rpm, Arch (.pkg.tar.zst) e Slackware (.txz) si aggiornano invece con il gestore dei pacchetti del sistema: YAEC avvisa della nuova versione e apre la pagina di GitHub.

- **Windows** – scarica `YAEC-x.y-win-x64-setup.exe` ed eseguilo. Installa YAEC in *Documenti\YAEC* senza diritti di amministratore, con i collegamenti nel menu Start e sul desktop e il programma di disinstallazione. Se compare l'avviso di SmartScreen: *Ulteriori informazioni* → *Esegui comunque*. Senza installazione: estrai `YAEC-x.y-win-x64-portatile.zip` in una cartella in cui puoi scrivere e avvia `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – scarica `yaec_x.y_amd64.deb` e dai `sudo apt install ./yaec_x.y_amd64.deb` (installa anche Mono); YAEC si avvia dal menu delle applicazioni o con `yaec`.
- **Windows a 32 bit** – `YAEC-x.y-win-x86-setup.exe` oppure `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS a 64 bit, Pi 4/5) – scarica `yaec_x.y_arm64.deb` e dai `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – altre distribuzioni** – installa Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), estrai `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) e avvia `./install.sh`.
- **macOS (sperimentale)** – installa Mono per macOS e XQuartz, apri `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) e trascina YAEC in Applicazioni; la prima volta, clic destro → *Apri*.
- Ogni release ha il file `SHA256SUMS.txt` per controllare i file scaricati.

### Deutsch
| Distribution | Dateien |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC mit Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 Bit, PCs und Mini-PCs außer Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb-Paket) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm-Paket) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst-Paket) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz-Paket) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (jedes Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Auf dieser Plattform noch nicht getestet: Erfahrungsberichte sind willkommen.

**Automatische Updates** — ab 1.9.1: Beim Start prüft YAEC auf GitHub, ob es eine neue Version gibt, und aktualisiert sich selbst beim Windows-Installer oder -Zip, bei den portablen .tar.gz-Archiven (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), beim AppImage und bei der macOS-App; jedes Paket wird mit SHA256SUMS.txt geprüft. Die Pakete .deb, .rpm, Arch (.pkg.tar.zst) und Slackware (.txz) werden dagegen mit der Paketverwaltung des Systems aktualisiert: YAEC meldet die neue Version und öffnet die GitHub-Seite.

- **Windows** – `YAEC-x.y-win-x64-setup.exe` herunterladen und ausführen. YAEC wird ohne Administratorrechte in *Dokumente\YAEC* installiert, mit Verknüpfungen im Startmenü und auf dem Desktop sowie einem Deinstallationsprogramm. Bei einer SmartScreen-Warnung: *Weitere Informationen* → *Trotzdem ausführen*. Ohne Installation: `YAEC-x.y-win-x64-portatile.zip` in einen beschreibbaren Ordner entpacken und `YAEC.exe` starten.
- **Linux – Debian, Ubuntu, Mint** – `yaec_x.y_amd64.deb` herunterladen und `sudo apt install ./yaec_x.y_amd64.deb` ausführen (Mono wird mitinstalliert); YAEC startet aus dem Anwendungsmenü oder mit `yaec`.
- **Windows 32 Bit** – `YAEC-x.y-win-x86-setup.exe` oder `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64 Bit, Pi 4/5) – `yaec_x.y_arm64.deb` herunterladen und `sudo apt install ./yaec_x.y_arm64.deb` ausführen.
- **Linux – andere Distributionen** – Mono installieren (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) entpacken und `./install.sh` ausführen.
- **macOS (experimentell)** – Mono für macOS und XQuartz installieren, `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) öffnen und YAEC in den Ordner Programme ziehen; beim ersten Mal Rechtsklick → *Öffnen*.
- Jede Version enthält `SHA256SUMS.txt` zur Prüfung der heruntergeladenen Dateien.

### Français
| Distribution | Fichiers |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC avec Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 bits, PC et mini-PC autres que Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (paquet .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (paquet .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (paquet .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (paquet .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (n'importe quel Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Pas encore testé sur cette plateforme : les retours des utilisateurs sont les bienvenus.

**Mises à jour automatiques** — à partir de la 1.9.1 : au démarrage, YAEC vérifie sur GitHub s'il existe une nouvelle version et se met à jour tout seul avec l'installateur ou le zip pour Windows, les archives portables .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), l'AppImage et l'application macOS ; chaque paquet est vérifié avec SHA256SUMS.txt. Les paquets .deb, .rpm, Arch (.pkg.tar.zst) et Slackware (.txz) se mettent à jour avec le gestionnaire de paquets du système : YAEC signale la nouvelle version et ouvre la page GitHub.

- **Windows** – téléchargez `YAEC-x.y-win-x64-setup.exe` et lancez-le. Il installe YAEC dans *Documents\YAEC* sans droits d'administrateur, avec les raccourcis dans le menu Démarrer et sur le bureau et un programme de désinstallation. Si SmartScreen affiche un avertissement : *Informations complémentaires* → *Exécuter quand même*. Sans installation : extrayez `YAEC-x.y-win-x64-portatile.zip` dans un dossier où vous pouvez écrire et lancez `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – téléchargez `yaec_x.y_amd64.deb` et lancez `sudo apt install ./yaec_x.y_amd64.deb` (Mono est installé aussi) ; YAEC se lance depuis le menu des applications ou avec `yaec`.
- **Windows 32 bits** – `YAEC-x.y-win-x86-setup.exe` ou `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64 bits, Pi 4/5) – téléchargez `yaec_x.y_arm64.deb` et lancez `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – autres distributions** – installez Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extrayez `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) et lancez `./install.sh`.
- **macOS (expérimental)** – installez Mono pour macOS et XQuartz, ouvrez `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) et faites glisser YAEC dans Applications ; la première fois, clic droit → *Ouvrir*.
- Chaque version contient `SHA256SUMS.txt` pour vérifier les fichiers téléchargés.

### Español
| Distribución | Archivos |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC con Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM de 64 bits, PC y mini PC que no son Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (paquete .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (paquete .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (paquete .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (paquete .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (cualquier Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Aún no probado en esta plataforma: los informes de los usuarios son bienvenidos.

**Actualizaciones automáticas** — desde la 1.9.1: al arrancar, YAEC comprueba en GitHub si hay una versión nueva y se actualiza solo con el instalador o el zip de Windows, los archivos portátiles .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), la AppImage y la aplicación de macOS; cada paquete se verifica con SHA256SUMS.txt. Los paquetes .deb, .rpm, Arch (.pkg.tar.zst) y Slackware (.txz) se actualizan en cambio con el gestor de paquetes del sistema: YAEC avisa de la nueva versión y abre la página de GitHub.

- **Windows** – descarga `YAEC-x.y-win-x64-setup.exe` y ejecútalo. Instala YAEC en *Documentos\YAEC* sin derechos de administrador, con accesos directos en el menú Inicio y en el escritorio y un desinstalador. Si SmartScreen muestra un aviso: *Más información* → *Ejecutar de todas formas*. Sin instalación: extrae `YAEC-x.y-win-x64-portatile.zip` en una carpeta en la que puedas escribir y ejecuta `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – descarga `yaec_x.y_amd64.deb` y ejecuta `sudo apt install ./yaec_x.y_amd64.deb` (también instala Mono); YAEC se abre desde el menú de aplicaciones o con `yaec`.
- **Windows de 32 bits** – `YAEC-x.y-win-x86-setup.exe` o `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS de 64 bits, Pi 4/5) – descarga `yaec_x.y_arm64.deb` y ejecuta `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – otras distribuciones** – instala Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extrae `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) y ejecuta `./install.sh`.
- **macOS (experimental)** – instala Mono para macOS y XQuartz, abre `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) y arrastra YAEC a Aplicaciones; la primera vez, clic derecho → *Abrir*.
- Cada versión incluye `SHA256SUMS.txt` para comprobar los archivos descargados.

### Português
| Distribuição | Ficheiros |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC com Snapdragon) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM de 64 bits, PC e mini-PC que não são Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (pacote .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (pacote .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (pacote .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (pacote .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (qualquer Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Ainda não testado nesta plataforma: os relatos dos utilizadores são bem-vindos.

**Atualizações automáticas** — a partir da 1.9.1: ao arrancar, o YAEC verifica no GitHub se há uma versão nova e atualiza-se sozinho com o instalador ou o zip para Windows, os arquivos portáteis .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), a AppImage e a aplicação para macOS; cada pacote é verificado com SHA256SUMS.txt. Os pacotes .deb, .rpm, Arch (.pkg.tar.zst) e Slackware (.txz) atualizam-se com o gestor de pacotes do sistema: o YAEC avisa da nova versão e abre a página do GitHub.

- **Windows** – descarrega `YAEC-x.y-win-x64-setup.exe` e executa-o. Instala o YAEC em *Documentos\YAEC* sem direitos de administrador, com atalhos no menu Iniciar e no ambiente de trabalho e um desinstalador. Se o SmartScreen avisar: *Mais informações* → *Executar mesmo assim*. Sem instalação: extrai `YAEC-x.y-win-x64-portatile.zip` para uma pasta onde possas escrever e executa `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – descarrega `yaec_x.y_amd64.deb` e executa `sudo apt install ./yaec_x.y_amd64.deb` (o Mono também é instalado); o YAEC abre-se a partir do menu de aplicações ou com `yaec`.
- **Windows de 32 bits** – `YAEC-x.y-win-x86-setup.exe` ou `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS de 64 bits, Pi 4/5) – descarrega `yaec_x.y_arm64.deb` e executa `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – outras distribuições** – instala o Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extrai `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) e executa `./install.sh`.
- **macOS (experimental)** – instala o Mono para macOS e o XQuartz, abre `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) e arrasta o YAEC para Aplicações; da primeira vez, clique direito → *Abrir*.
- Cada versão inclui `SHA256SUMS.txt` para verificar os ficheiros descarregados.

### Türkçe
| Dağıtım | Dosyalar |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (Snapdragon'lu PC) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 bit, Raspberry Pi dışındaki PC'ler ve mini PC'ler) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb paketi) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm paketi) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst paketi) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz paketi) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (her Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Bu platformda henüz denenmedi: kullanıcı geri bildirimleri memnuniyetle karşılanır.

**Otomatik güncellemeler** — 1.9.1'den itibaren: YAEC açılışta GitHub'da yeni bir sürüm olup olmadığını denetler ve Windows kurulum programı veya zip'i, taşınabilir .tar.gz arşivleri (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), AppImage ve macOS uygulamasıyla kendini günceller; her paket SHA256SUMS.txt ile doğrulanır. .deb, .rpm, Arch (.pkg.tar.zst) ve Slackware (.txz) paketleri ise sistemin paket yöneticisiyle güncellenir: YAEC yeni sürümü bildirir ve GitHub sayfasını açar.

- **Windows** – `YAEC-x.y-win-x64-setup.exe` dosyasını indirip çalıştırın. YAEC, yönetici hakları olmadan *Belgeler\YAEC* klasörüne kurulur; Başlat menüsünde ve masaüstünde kısayollar ile bir kaldırma programı oluşturulur. SmartScreen uyarı verirse: *Ek bilgi* → *Yine de çalıştır*. Kurulum istemiyorsanız: `YAEC-x.y-win-x64-portatile.zip` dosyasını yazabildiğiniz bir klasöre açın ve `YAEC.exe` dosyasını çalıştırın.
- **Linux – Debian, Ubuntu, Mint** – `yaec_x.y_amd64.deb` dosyasını indirip `sudo apt install ./yaec_x.y_amd64.deb` komutunu çalıştırın (Mono da kurulur); YAEC uygulamalar menüsünden ya da `yaec` komutuyla açılır.
- **32 bit Windows** – `YAEC-x.y-win-x86-setup.exe` veya `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (64 bit Raspberry Pi OS, Pi 4/5) – `yaec_x.y_arm64.deb` dosyasını indirip `sudo apt install ./yaec_x.y_arm64.deb` komutunu çalıştırın.
- **Linux – diğer dağıtımlar** – Mono'yu kurun (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), `YAEC-x.y-linux-x64-portatile.tar.gz` dosyasını açın (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) ve `./install.sh` komutunu çalıştırın.
- **macOS (deneysel)** – macOS için Mono'yu ve XQuartz'ı kurun, `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) dosyasını açın ve YAEC'i Uygulamalar klasörüne sürükleyin; ilk seferde sağ tık → *Aç*.
- Her sürümde, indirilen dosyaları doğrulamak için `SHA256SUMS.txt` bulunur.

### Čeština
| Distribuce | Soubory |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC se Snapdragonem) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 bit, PC a mini-PC kromě Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (balíček .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (balíček .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (balíček .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (balíček .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (jakýkoli Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Na této platformě zatím nevyzkoušeno: zprávy od uživatelů jsou vítány.

**Automatické aktualizace** — od verze 1.9.1: YAEC při spuštění zjistí na GitHubu, zda existuje nová verze, a sám se aktualizuje u instalátoru nebo zipu pro Windows, přenosných archivů .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), AppImage a aplikace pro macOS; každý balíček se ověří podle SHA256SUMS.txt. Balíčky .deb, .rpm, Arch (.pkg.tar.zst) a Slackware (.txz) se naopak aktualizují správcem balíčků systému: YAEC na novou verzi upozorní a otevře stránku GitHub.

- **Windows** – stáhni `YAEC-x.y-win-x64-setup.exe` a spusť ho. Nainstaluje YAEC do *Dokumenty\YAEC* bez práv správce, se zástupci v nabídce Start a na ploše a s odinstalačním programem. Pokud se objeví upozornění SmartScreen: *Další informace* → *Přesto spustit*. Bez instalace: rozbal `YAEC-x.y-win-x64-portatile.zip` do složky, do které můžeš zapisovat, a spusť `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – stáhni `yaec_x.y_amd64.deb` a spusť `sudo apt install ./yaec_x.y_amd64.deb` (nainstaluje i Mono); YAEC se spouští z nabídky aplikací nebo příkazem `yaec`.
- **32bitové Windows** – `YAEC-x.y-win-x86-setup.exe` nebo `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (64bitový Raspberry Pi OS, Pi 4/5) – stáhni `yaec_x.y_arm64.deb` a spusť `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – jiné distribuce** – nainstaluj Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), rozbal `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) a spusť `./install.sh`.
- **macOS (experimentální)** – nainstaluj Mono pro macOS a XQuartz, otevři `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) a přetáhni YAEC do složky Aplikace; poprvé pravý klik → *Otevřít*.
- Každé vydání obsahuje `SHA256SUMS.txt` pro kontrolu stažených souborů.

### Slovenčina
| Distribúcia | Súbory |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (PC so Snapdragonom) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 bit, PC a mini-PC okrem Raspberry Pi) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (balík .deb) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (balík .rpm) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (balík .pkg.tar.zst) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (balík .txz) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (akýkoľvek Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ Na tejto platforme zatiaľ nevyskúšané: správy od používateľov sú vítané.

**Automatické aktualizácie** — od verzie 1.9.1: YAEC pri spustení zistí na GitHube, či existuje nová verzia, a sám sa aktualizuje pri inštalátore alebo zipe pre Windows, prenosných archívoch .tar.gz (Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), AppImage a aplikácii pre macOS; každý balík sa overí podľa SHA256SUMS.txt. Balíky .deb, .rpm, Arch (.pkg.tar.zst) a Slackware (.txz) sa naopak aktualizujú správcom balíkov systému: YAEC upozorní na novú verziu a otvorí stránku GitHub.

- **Windows** – stiahni `YAEC-x.y-win-x64-setup.exe` a spusti ho. Nainštaluje YAEC do *Dokumenty\YAEC* bez práv správcu, so zástupcami v ponuke Štart a na ploche a s odinštalačným programom. Ak sa objaví upozornenie SmartScreen: *Ďalšie informácie* → *Napriek tomu spustiť*. Bez inštalácie: rozbaľ `YAEC-x.y-win-x64-portatile.zip` do priečinka, do ktorého môžeš zapisovať, a spusti `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – stiahni `yaec_x.y_amd64.deb` a spusti `sudo apt install ./yaec_x.y_amd64.deb` (nainštaluje aj Mono); YAEC sa spúšťa z ponuky aplikácií alebo príkazom `yaec`.
- **32-bitové Windows** – `YAEC-x.y-win-x86-setup.exe` alebo `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (64-bitový Raspberry Pi OS, Pi 4/5) – stiahni `yaec_x.y_arm64.deb` a spusti `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – iné distribúcie** – nainštaluj Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), rozbaľ `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`) a spusti `./install.sh`.
- **macOS (experimentálne)** – nainštaluj Mono pre macOS a XQuartz, otvor `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) a pretiahni YAEC do priečinka Aplikácie; prvýkrát pravý klik → *Otvoriť*.
- Každé vydanie obsahuje `SHA256SUMS.txt` na kontrolu stiahnutých súborov.

### 中文
| 发行版 | 文件 |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (Snapdragon PC) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 位，树莓派以外的 PC 和迷你 PC) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb 软件包) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm 软件包) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst 软件包) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz 软件包) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (任何 Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ 尚未在此平台上测试：欢迎用户反馈。

**自动更新** — 自 1.9.1 起：YAEC 启动时会在 GitHub 上检查是否有新版本，并对 Windows 安装程序或 zip、便携 .tar.gz 归档（Linux、树莓派、FreeBSD、OpenBSD、Alpine）、AppImage 和 macOS 应用自动更新；每个软件包都会用 SHA256SUMS.txt 校验。.deb、.rpm、Arch（.pkg.tar.zst）和 Slackware（.txz）软件包则通过系统的软件包管理器更新：YAEC 会提示新版本并打开 GitHub 页面。

- **Windows** – 下载 `YAEC-x.y-win-x64-setup.exe` 并运行。它无需管理员权限，把 YAEC 安装到 *文档\YAEC*，并在开始菜单和桌面创建快捷方式，附带卸载程序。若 SmartScreen 发出警告：*更多信息* → *仍要运行*。不想安装：把 `YAEC-x.y-win-x64-portatile.zip` 解压到可写的文件夹，运行 `YAEC.exe`。
- **Linux – Debian、Ubuntu、Mint** – 下载 `yaec_x.y_amd64.deb`，运行 `sudo apt install ./yaec_x.y_amd64.deb`（会同时安装 Mono）；从应用菜单或用 `yaec` 命令启动 YAEC。
- **32 位 Windows** – `YAEC-x.y-win-x86-setup.exe` 或 `YAEC-x.y-win-x86-portatile.zip`。
- **树莓派**（64 位 Raspberry Pi OS，Pi 4/5）– 下载 `yaec_x.y_arm64.deb`，运行 `sudo apt install ./yaec_x.y_arm64.deb`。
- **Linux – 其他发行版** – 安装 Mono（`sudo dnf install mono-complete`、`sudo pacman -S mono`、`sudo zypper install mono-complete`），解压 `YAEC-x.y-linux-x64-portatile.tar.gz`（ARM：`YAEC-x.y-linux-arm64-portatile.tar.gz`、`YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`），运行 `./install.sh`。
- **macOS（实验性）** – 安装 macOS 版 Mono 和 XQuartz，打开 `YAEC-x.y-osx-arm64.dmg`（Apple Silicon）/ `YAEC-x.y-osx-x64.dmg`（Intel），把 YAEC 拖到“应用程序”；第一次请右键 → *打开*。
- 每个版本都附有 `SHA256SUMS.txt`，用于校验下载的文件。

### 日本語
| ディストリビューション | ファイル |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (Snapdragon 搭載 PC) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64 ビット、Raspberry Pi 以外の PC とミニ PC) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb パッケージ) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm パッケージ) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst パッケージ) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz パッケージ) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (あらゆる Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ このプラットフォームではまだ試験していません。ユーザーからの報告を歓迎します。

**自動更新** — 1.9.1 から：YAEC は起動時に GitHub で新しいバージョンを確認し、Windows のインストーラーまたは zip、ポータブルの .tar.gz アーカイブ（Linux、Raspberry Pi、FreeBSD、OpenBSD、Alpine）、AppImage、macOS アプリでは自動的に更新します。各パッケージは SHA256SUMS.txt で検証されます。.deb、.rpm、Arch（.pkg.tar.zst）、Slackware（.txz）のパッケージはシステムのパッケージマネージャーで更新します。YAEC は新しいバージョンを知らせ、GitHub のページを開きます。

- **Windows** – `YAEC-x.y-win-x64-setup.exe` をダウンロードして実行します。管理者権限なしで *ドキュメント\YAEC* にインストールされ、スタートメニューとデスクトップのショートカット、アンインストーラーが作成されます。SmartScreen の警告が出たら：*詳細情報* → *実行*。インストールしない場合：`YAEC-x.y-win-x64-portatile.zip` を書き込み可能なフォルダーに展開し、`YAEC.exe` を実行します。
- **Linux – Debian、Ubuntu、Mint** – `yaec_x.y_amd64.deb` をダウンロードし、`sudo apt install ./yaec_x.y_amd64.deb` を実行します（Mono も一緒にインストールされます）。YAEC はアプリケーションメニューまたは `yaec` コマンドで起動します。
- **32 ビット Windows** – `YAEC-x.y-win-x86-setup.exe` または `YAEC-x.y-win-x86-portatile.zip`。
- **Raspberry Pi**（64 ビット Raspberry Pi OS、Pi 4/5）– `yaec_x.y_arm64.deb` をダウンロードし、`sudo apt install ./yaec_x.y_arm64.deb` を実行します。
- **Linux – その他のディストリビューション** – Mono をインストールし（`sudo dnf install mono-complete`、`sudo pacman -S mono`、`sudo zypper install mono-complete`）、`YAEC-x.y-linux-x64-portatile.tar.gz`（ARM：`YAEC-x.y-linux-arm64-portatile.tar.gz`、`YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`）を展開して `./install.sh` を実行します。
- **macOS（試験的）** – macOS 用 Mono と XQuartz をインストールし、`YAEC-x.y-osx-arm64.dmg`（Apple Silicon）/ `YAEC-x.y-osx-x64.dmg`（Intel）を開いて YAEC をアプリケーションへドラッグします。初回は右クリック → *開く*。
- 各リリースには、ダウンロードしたファイルを確認するための `SHA256SUMS.txt` が含まれます。

### 한국어
| 배포판 | 파일 |
|---|---|
| **Windows 64 bit** | `YAEC-x.y-win-x64-setup.exe`, `YAEC-x.y-win-x64-portatile.zip` |
| **Windows 32 bit** | `YAEC-x.y-win-x86-setup.exe`, `YAEC-x.y-win-x86-portatile.zip` |
| **Windows ARM64** (Snapdragon PC) ¹ | `YAEC-x.y-win-arm64-setup.exe`, `YAEC-x.y-win-arm64-portatile.zip` |
| **Linux x86_64** (64 bit) | `YAEC-x.y-linux-x64-portatile.tar.gz` |
| **Linux i686** (32 bit) ¹ | `YAEC-x.y-linux-x86-portatile.tar.gz` |
| **Linux aarch64** (ARM 64비트, Raspberry Pi 이외의 PC와 미니 PC) | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Debian / Ubuntu / Mint** (.deb 패키지) | `yaec_x.y_amd64.deb` |
| **Fedora / openSUSE** (.rpm 패키지) | `yaec-x.y-1.noarch.rpm` |
| **Arch Linux / Manjaro** (.pkg.tar.zst 패키지) | `yaec-x.y-1-any.pkg.tar.zst` |
| **Slackware** (.txz 패키지) ¹ | `yaec-x.y-noarch-1_ic8tem.txz` |
| **AppImage** (모든 Linux) ¹ | `YAEC-x.y-x86_64.AppImage`, `YAEC-x.y-aarch64.AppImage` |
| **Alpine Linux** (musl) ¹ | `YAEC-x.y-alpine-x64-portatile.tar.gz`, `YAEC-x.y-alpine-arm64-portatile.tar.gz` |
| **Raspberry Pi (ARM)** → Raspberry Pi OS 32 bit (armhf) ¹ | `yaec_x.y_armhf.deb`, `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **Raspberry Pi OS 64 bit** (arm64) | `yaec_x.y_arm64.deb`, `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Raspberry Pi Slackware ARM64** ¹ | `YAEC-x.y-linux-arm64-portatile.tar.gz` |
| **Linux armv7l** | `YAEC-x.y-linux-arm-portatile.tar.gz` |
| **FreeBSD amd64** ¹ | `YAEC-x.y-freebsd-x64-portatile.tar.gz` |
| **OpenBSD amd64** ¹ | `YAEC-x.y-openbsd-x64-portatile.tar.gz` |
| **macOS** → macOS Apple Silicon (M1-M4) | `YAEC-x.y-osx-arm64.dmg`, `YAEC-x.y-osx-arm64-app.zip` |
| **macOS Intel** | `YAEC-x.y-osx-x64.dmg`, `YAEC-x.y-osx-x64-app.zip` |

¹ 이 플랫폼에서는 아직 시험하지 않았습니다. 사용자 보고를 환영합니다.

**자동 업데이트** — 1.9.1부터: YAEC는 시작할 때 GitHub에서 새 버전이 있는지 확인하고, Windows 설치 프로그램이나 zip, 휴대용 .tar.gz 압축 파일(Linux, Raspberry Pi, FreeBSD, OpenBSD, Alpine), AppImage, macOS 앱에서는 스스로 업데이트합니다. 모든 패키지는 SHA256SUMS.txt로 검증합니다. .deb, .rpm, Arch(.pkg.tar.zst), Slackware(.txz) 패키지는 시스템의 패키지 관리자로 업데이트합니다. YAEC는 새 버전을 알리고 GitHub 페이지를 엽니다.

- **Windows** – `YAEC-x.y-win-x64-setup.exe`를 내려받아 실행합니다. 관리자 권한 없이 *문서\YAEC*에 설치되며, 시작 메뉴와 바탕 화면 바로 가기, 제거 프로그램이 만들어집니다. SmartScreen 경고가 나오면: *추가 정보* → *실행*. 설치하지 않으려면: `YAEC-x.y-win-x64-portatile.zip`을 쓰기 가능한 폴더에 풀고 `YAEC.exe`를 실행합니다.
- **Linux – Debian, Ubuntu, Mint** – `yaec_x.y_amd64.deb`를 내려받아 `sudo apt install ./yaec_x.y_amd64.deb`를 실행합니다(Mono도 함께 설치됨). YAEC는 응용 프로그램 메뉴나 `yaec` 명령으로 시작합니다.
- **32비트 Windows** – `YAEC-x.y-win-x86-setup.exe` 또는 `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi**(64비트 Raspberry Pi OS, Pi 4/5) – `yaec_x.y_arm64.deb`를 내려받아 `sudo apt install ./yaec_x.y_arm64.deb`를 실행합니다.
- **Linux – 기타 배포판** – Mono를 설치하고(`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), `YAEC-x.y-linux-x64-portatile.tar.gz`(ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`; Linux i686: `YAEC-x.y-linux-x86-portatile.tar.gz`; FreeBSD amd64: `YAEC-x.y-freebsd-x64-portatile.tar.gz`; OpenBSD amd64: `YAEC-x.y-openbsd-x64-portatile.tar.gz`)를 풀고 `./install.sh`를 실행합니다.
- **macOS(실험적)** – macOS용 Mono와 XQuartz를 설치하고 `YAEC-x.y-osx-arm64.dmg`(Apple Silicon) / `YAEC-x.y-osx-x64.dmg`(Intel)를 열어 YAEC를 응용 프로그램으로 끌어다 놓습니다. 처음에는 오른쪽 클릭 → *열기*.
- 각 릴리스에는 내려받은 파일을 확인하는 `SHA256SUMS.txt`가 들어 있습니다.

All the versions before 1.0 are called **beta**.

## Features

[English](#english-1) · [Italiano](#italiano-1) · [Deutsch](#deutsch-1) · [Français](#français-1) · [Español](#español-1) · [Português](#português-1) · [Türkçe](#türkçe-1) · [Čeština](#čeština-1) · [Slovenčina](#slovenčina-1) · [中文](#中文-1) · [日本語](#日本語-1) · [한국어](#한국어-1)

### English

<table><tr><td width="33%" align="center"><a href="docs/screenshots/en-1.jpg"><img src="docs/screenshots/en-1.jpg" alt="Live position and +- 24h"></a><br><sub>Live position and +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/en-2.jpg"><img src="docs/screenshots/en-2.jpg" alt="EME budget Yagi"></a><br><sub>EME budget Yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/en-3.jpg"><img src="docs/screenshots/en-3.jpg" alt="Distance and Dgrd"></a><br><sub>Distance and Dgrd</sub></td></tr></table>

YAEC puts in one program everything you need to run an EME (Earth–Moon–Earth) station on 50, 70, 144, 222, 432 and 902 MHz and 23 cm (1296 MHz), especially when the station has limits: an antenna without elevation, a rotator with limited travel, obstacles that hide part of the sky. It tells you not only where the Moon is, but whether **your** antenna can really reach it, when, and under which conditions. The bands above 432 MHz are still being completed, but the DGRD is already computed correctly at every frequency; more advice for newcomers above 900 MHz will follow.

**Live**
- **Live position and +- 24h** – main screen updated every second: your locator and the DX's (4 to 14 characters), frequency, UTC, local and DX clocks, a status band (pointable, outside the limits, below the horizon, common window) with countdown, compass and elevation arc. Typing the DX callsign fills in its locator from CALL3.TXT.
- **Reconnaissance of my obstacles** – aerial or topographic map centred on your station with the sky drawn on it: Moon position, its path over the next 24 hours, rise and set, antenna limits that you drag with the mouse.
- **My horizon** – *Horizon from terrain*: panorama of the terrain around your station from SRTM1 elevation data (about 30 m), with Earth curvature and refraction, over the sky view (three colour scales) or a light-blue sky; Moon path, rise and set above the terrain, main obstacles named from OpenStreetMap and minutes of Moon lost. One checkbox makes the terrain the minimum elevation in the whole program. *Local noise map (NJ9R)*: azimuth × elevation grid where you type the noise seen in WSJT-X while turning the antenna; the hours with the Moon in a noisy direction get a ⚠.
- **Sky view** – the sky seen from your QTH with the sky-noise colours at your frequency, antenna limits, the DX horizon, radio sources, the Sun and the Moon path.

**Planning**
- **Distance and Dgrd** – 7 to 61 days of Dgrd and mean Moon distance, with the declination overlaid, perigee, apogee, new Moon, the three best days (in date order), a possible fourth useful day and a warning for the days when the Moon is close to the Sun. Only the hours in which the Moon is really pointable with your limits are counted.
- **DGRD by frequency** – the Dgrd at your working frequency with the real noise of your station and the sky averaged over the antenna beam, compared with the usual WSJT-X calculation; the choice applies to the whole program.
- **Stations to try** – for the chosen day, the stations active in the N0UK EME chat (144 MHz) with a common window with you, the best per locator field, ranked by an index from 0 to 100 from the S/N in both directions; the DX setup is read from what it writes in the chat. A rough example calculation, idea by Matteo IW5DHN.
- **Moon position** – table for the chosen period, coloured by pointability, with the common windows for you and the DX; CSV export for Excel.
- **Moon over the world** – world map coloured by the Moon elevation seen from every place; one click makes that point the DX.

**Link**
- **EME budget Yagi** – link budget for every band, stored band by band: six indicators (link possible, my EIRP, DX EIRP, path loss, S/N me → DX and DX → me, also with the Sun and in 2500 Hz), the full table of steps and an interactive diagram of the station (antenna, cables, relay, preamplifier, transverter, radio). Ground gain for antennas without elevation. Modes with a 60 s period: JT65, Q65-60A, Q65-60B, Q65-60C and custom. Echo mode (*I transmit and receive my own echo*): echo level, delay and Doppler.
- **EME budget dishes** – the same budget, echo included, for dish antennas at 432, 902 and 1296 MHz, prime focus or offset (W2IMU): gain with the PE1RKI formula, beamwidth 70·λ/D, single- or two-stage preamplifier, transverter and PA drive; on 23 cm, circular polarization with 0.4 dB of loss (KA1GT).
- **GRAVES radar** – the French GRAVES radar (143.050 MHz) as a test bench: when the Moon is in its beam and within your antenna limits, with Doppler and echo delay.
- **Solar noise** – downloads the solar fluxes measured by the RSTN network (NOAA) and estimates how much the Sun raises the receiver noise near new Moon.
- **Export calculations to Excel** and **Calculation check** – the budget as an Excel sheet, and every formula with the substituted values, step by step, for the Yagi or the dish budget.

**Log, help and tools**
- **WWL map and ADIF** – Maidenhead grid with worked and confirmed squares from your ADIF file or downloaded directly from LoTW, also by band and EME only.
- **USER MANUAL** and **THEORY AND TIPS ON EME** – full manuals inside the program in every language, with clickable index, search, formulas and sources; exportable to Word. The theory manual includes the advice of experienced EME operators, a section on internet chats and the VE7BQH antenna tables.
- **COAXIAL CABLES** – database of 50 Ω cables with attenuation from 50 to 1296 MHz (data-sheet values and the formula α = k1·√f + k2·f) and the source of every value; sortable, filterable, with a loss calculator and a button that sends the cable to the EME budget. You can add your own cables.

**Also**
- CALL3.TXT downloaded from W7GJ and WSJT-X Improved, merged, refreshed every 7 days and copied into WSJT-X on request.
- Warnings for polar-cap and auroral absorption (PCA) when a station is beyond the polar circles or in the auroral zone.
- 37 languages; light, night (blue), black and eight pastel and three IP-TRX-CTRL (blue, violet, green) colour schemes.
- Moon positions accurate to about 0.01° (Meeus, ELP-2000/82), all calculations on your computer; data in a single `data` folder.

### Italiano

<table><tr><td width="33%" align="center"><a href="docs/screenshots/it-1.jpg"><img src="docs/screenshots/it-1.jpg" alt="Posizione live e +- 24h"></a><br><sub>Posizione live e +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/it-2.jpg"><img src="docs/screenshots/it-2.jpg" alt="Budget EME yagi"></a><br><sub>Budget EME yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/it-3.jpg"><img src="docs/screenshots/it-3.jpg" alt="Distanza e Dgrd"></a><br><sub>Distanza e Dgrd</sub></td></tr></table>

YAEC raccoglie in un solo programma tutto quello che serve per l'EME (Terra–Luna–Terra) su 50, 70, 144, 222, 432 e 902 MHz e sui 23 cm (1296 MHz), soprattutto quando la stazione ha dei vincoli: un'antenna senza elevazione, un rotore con escursione limitata, ostacoli che nascondono parte del cielo. Non dice solo dove si trova la Luna, ma se la **tua** antenna la raggiunge davvero, quando e in quali condizioni. Le bande sopra i 432 MHz sono in fase di completamento, ma la DGRD è già calcolata correttamente a ogni frequenza; seguiranno altri consigli per chi si avvicina da poco alle frequenze sopra i 900 MHz.

**In diretta**
- **Posizione live e +- 24h** – la schermata principale, aggiornata ogni secondo: locator tuo e del DX (da 4 a 14 caratteri), frequenza, orologi UTC, locale e del DX, fascia di stato (puntabile, fuori dai limiti, sotto l'orizzonte, finestra comune) con il conto alla rovescia, bussola e arco dell'elevazione. Scrivendo il nominativo del DX il locator arriva dal CALL3.TXT.
- **Ricognizione dei miei ostacoli** – mappa aerofotografica o topografica centrata sulla tua stazione con sopra il cielo: posizione della Luna, percorso nelle prossime 24 ore, sorgere e tramonto, limiti dell'antenna da trascinare con il mouse.
- **Il mio orizzonte** – *Orizzonte dal terreno*: panorama del terreno intorno alla tua stazione dai dati altimetrici SRTM1 (circa 30 m), con curvatura terrestre e rifrazione, sullo sfondo della Volta celeste (tre colorazioni) o di un cielo azzurro; percorso della Luna, sorgere e tramonto sopra il terreno, ostacoli principali con i nomi di OpenStreetMap e minuti di Luna persi. Con una casella il terreno diventa l'elevazione minima in tutto il programma. *Mappa del rumore locale (NJ9R)*: griglia azimut × elevazione in cui scrivi il rumore visto in WSJT-X girando l'antenna; le ore con la Luna in una direzione rumorosa hanno il ⚠.
- **Volta celeste** – il cielo visto dal tuo QTH con i colori del rumore del cielo alla tua frequenza, i limiti dell'antenna, l'orizzonte del DX, le radiosorgenti, il Sole e il percorso della Luna.

**Pianificazione**
- **Distanza e Dgrd** – da 7 a 61 giorni di Dgrd e distanza media della Luna, con la declinazione sovrapposta, perigeo, apogeo, luna nuova, i tre giorni migliori (in ordine di data), un possibile quarto giorno utile e l'avviso dei giorni con la Luna vicina al Sole. Contano solo le ore in cui la Luna è davvero puntabile con i tuoi limiti.
- **DGRD per frequenza** – il Dgrd alla tua frequenza di lavoro con il rumore vero della tua stazione e il cielo mediato sul fascio dell'antenna, confrontato con il calcolo di sempre di WSJT-X; la scelta vale in tutto il programma.
- **Stazioni da provare** – per il giorno scelto, le stazioni attive nella chat EME di N0UK (144 MHz) con una finestra comune con te, la migliore per campo di locator, ordinate con un indice da 0 a 100 ricavato dal S/N nei due sensi; l'impianto del DX è letto da quello che scrive in chat. Un calcolo di esempio, molto approssimativo, idea di Matteo IW5DHN.
- **Posizione della Luna** – tabella per il periodo scelto, colorata secondo la puntabilità, con le finestre comuni a te e al DX; esportazione CSV per Excel.
- **Luna sul mondo** – mappa del mondo colorata secondo l'elevazione della Luna vista da ogni località; con un clic il punto diventa il DX.

**Collegamento**
- **Budget EME yagi** – bilancio del collegamento per ogni banda, memorizzato banda per banda: sei indicatori (collegamento possibile, EIRP mia e del DX, perdita di tratta, S/N io → DX e DX → io, anche con il Sole e in 2500 Hz), la tabella di tutti i passaggi e lo schema interattivo dell'impianto (antenna, cavi, relè, preamplificatore, transverter, radio). Ground gain per le antenne senza elevazione. Modi con periodo di 60 s: JT65, Q65-60A, Q65-60B, Q65-60C e personalizzato. Calcolo dell'eco (*Io trasmetto e ricevo il mio eco*): livello, ritardo e Doppler dell'eco.
- **Budget EME dischi** – lo stesso bilancio, eco compreso, per le antenne a disco a 432, 902 e 1296 MHz, a primo fuoco oppure offset (W2IMU): guadagno con la formula di PE1RKI, larghezza del fascio 70·λ/D, preamplificatore a uno o due stadi, transverter e pilotaggio del PA; in 23 cm, polarizzazione circolare con 0,4 dB di perdita (KA1GT).
- **Radar GRAVES** – il radar francese GRAVES (143,050 MHz) come banco di prova: quando la Luna è nel suo fascio e nei limiti della tua antenna, con Doppler e ritardo dell'eco.
- **Rumore solare** – scarica i flussi solari misurati dalla rete RSTN (NOAA) e stima quanto il Sole alza il rumore del ricevitore vicino alla luna nuova.
- **Export in Excel dei calcoli** e **Controllo dei calcoli** – il budget come foglio Excel, e ogni formula con i valori sostituiti, passaggio per passaggio, per il Budget EME yagi o dischi.

**Log, aiuto e strumenti**
- **Mappa WWL e ADIF** – reticolo Maidenhead con i quadrati lavorati e confermati dal tuo file ADIF o scaricati direttamente da LoTW, anche per banda e solo EME.
- **MANUALE D'USO** e **TEORIA E CONSIGLI SULL'EME** – manuali completi dentro il programma in tutte le lingue, con indice cliccabile, ricerca, formule e fonti; esportabili in Word. Il manuale di teoria comprende i consigli di operatori EME esperti, un paragrafo sulle chat via Internet e le tabelle delle antenne di VE7BQH.
- **CAVI COASSIALI** – database dei cavi a 50 Ω con l'attenuazione da 50 a 1296 MHz (valori delle schede e formula α = k1·√f + k2·f) e la fonte di ogni valore; ordinabile, filtrabile, con il calcolo della perdita e il pulsante che porta il cavo nel Budget EME. Si possono aggiungere cavi personalizzati.

**Inoltre**
- CALL3.TXT scaricato da W7GJ e da WSJT-X Improved, unito, aggiornato ogni 7 giorni e copiato in WSJT-X a richiesta.
- Avvisi di assorbimento della calotta polare e aurorale (PCA) quando una stazione è oltre i circoli polari o nella zona aurorale.
- 37 lingue; schemi di colori chiaro, notte (blu), nero, otto pastello e tre di IP-TRX-CTRL (blu, viola, verde).
- Posizioni della Luna precise a circa 0,01° (Meeus, ELP-2000/82), tutti i calcoli sul tuo computer; dati in un'unica cartella `data`.

### Deutsch

<table><tr><td width="33%" align="center"><a href="docs/screenshots/de-1.jpg"><img src="docs/screenshots/de-1.jpg" alt="Position live und +- 24h"></a><br><sub>Position live und +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/de-2.jpg"><img src="docs/screenshots/de-2.jpg" alt="EME-Budget Yagi"></a><br><sub>EME-Budget Yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/de-3.jpg"><img src="docs/screenshots/de-3.jpg" alt="Entfernung und Dgrd"></a><br><sub>Entfernung und Dgrd</sub></td></tr></table>

YAEC vereint in einem Programm alles, was man für den EME-Betrieb (Erde–Mond–Erde) auf 50, 70, 144, 222, 432 und 902 MHz und 23 cm (1296 MHz) braucht – vor allem, wenn die Station Einschränkungen hat: eine Antenne ohne Elevation, ein Rotor mit begrenztem Drehbereich, Hindernisse, die einen Teil des Himmels verdecken. Es zeigt nicht nur, wo der Mond steht, sondern ob **deine** Antenne ihn wirklich erreicht, wann und unter welchen Bedingungen. Die Bänder oberhalb von 432 MHz werden noch fertiggestellt, aber der DGRD wird schon auf jeder Frequenz richtig berechnet; weitere Tipps für Neueinsteiger oberhalb von 900 MHz folgen.

**Live**
- **Position live und +- 24h** – Hauptbildschirm, jede Sekunde aktualisiert: dein Locator und der des DX (4 bis 14 Zeichen), Frequenz, UTC-, Orts- und DX-Uhr, Statusband (ausrichtbar, außerhalb der Grenzen, unter dem Horizont, gemeinsames Fenster) mit Countdown, Kompass und Elevationsbogen. Bei Eingabe des DX-Rufzeichens kommt der Locator aus CALL3.TXT.
- **Erkundung meiner Hindernisse** – Luftbild- oder topografische Karte um deine Station mit dem Himmel darüber: Mondposition, Bahn der nächsten 24 Stunden, Auf- und Untergang, Antennengrenzen, die man mit der Maus zieht.
- **Mein Horizont** – *Horizont aus dem Gelände*: Panorama des Geländes um deine Station aus SRTM1-Höhendaten (etwa 30 m), mit Erdkrümmung und Refraktion, vor der Himmelsansicht (drei Farbskalen) oder einem hellblauen Himmel; Mondbahn, Auf- und Untergang über dem Gelände, Haupthindernisse mit Namen aus OpenStreetMap und verlorene Mondminuten. Ein Kästchen macht das Gelände im ganzen Programm zur Mindestelevation. *Karte des lokalen Rauschens (NJ9R)*: Raster Azimut × Elevation, in das du das in WSJT-X gesehene Rauschen beim Drehen der Antenne einträgst; Stunden mit dem Mond in einer verrauschten Richtung erhalten ein ⚠.
- **Himmelsansicht** – der Himmel von deinem QTH aus mit den Farben des Himmelsrauschens auf deiner Frequenz, Antennengrenzen, DX-Horizont, Radioquellen, Sonne und Mondbahn.

**Planung**
- **Entfernung und Dgrd** – 7 bis 61 Tage Dgrd und mittlere Mondentfernung, mit überlagerter Deklination, Perigäum, Apogäum, Neumond, den drei besten Tagen (nach Datum), einem möglichen vierten nutzbaren Tag und einer Warnung für Tage mit dem Mond nahe der Sonne. Gezählt werden nur die Stunden, in denen der Mond mit deinen Grenzen wirklich erreichbar ist.
- **DGRD nach Frequenz** – der Dgrd auf deiner Arbeitsfrequenz mit dem echten Rauschen deiner Station und dem über die Antennenkeule gemittelten Himmel, verglichen mit der üblichen Rechnung von WSJT-X; die Wahl gilt im ganzen Programm.
- **Stationen zum Ausprobieren** – für den gewählten Tag die im N0UK-EME-Chat aktiven Stationen (144 MHz) mit gemeinsamem Fenster, die beste je Locator-Feld, geordnet nach einem Index von 0 bis 100 aus dem S/N in beiden Richtungen; die Anlage des DX wird aus seinen Chat-Angaben gelesen. Eine grobe Beispielrechnung, Idee von Matteo IW5DHN.
- **Mondposition** – Tabelle für den gewählten Zeitraum, nach Ausrichtbarkeit eingefärbt, mit den gemeinsamen Fenstern für dich und den DX; CSV-Export für Excel.
- **Mond über der Welt** – Weltkarte, eingefärbt nach der Mondelevation an jedem Ort; ein Klick macht den Punkt zum DX.

**Verbindung**
- **EME-Budget Yagi** – Verbindungsbilanz für jedes Band, bandweise gespeichert: sechs Anzeigen (Verbindung möglich, meine EIRP, EIRP des DX, Streckendämpfung, S/N ich → DX und DX → ich, auch mit der Sonne und in 2500 Hz), die vollständige Tabelle aller Schritte und ein interaktives Schema der Station (Antenne, Kabel, Relais, Vorverstärker, Transverter, Funkgerät). Bodengewinn für Antennen ohne Elevation. Betriebsarten mit 60-s-Periode: JT65, Q65-60A, Q65-60B, Q65-60C und benutzerdefiniert. Echo-Rechnung (*Ich sende und empfange mein eigenes Echo*): Pegel, Laufzeit und Doppler des Echos.
- **EME-Budget Spiegel** – dieselbe Bilanz, mit Echo, für Parabolspiegel auf 432, 902 und 1296 MHz, mit Primärfokus oder Offset (W2IMU): Gewinn nach der Formel von PE1RKI, Keulenbreite 70·λ/D, ein- oder zweistufiger Vorverstärker, Transverter und Ansteuerung der PA; auf 23 cm Zirkularpolarisation mit 0,4 dB Verlust (KA1GT).
- **GRAVES-Radar** – das französische Radar GRAVES (143,050 MHz) als Prüfstand: wann der Mond in seinem Strahl und innerhalb deiner Antennengrenzen ist, mit Doppler und Echolaufzeit.
- **Sonnenrauschen** – lädt die vom RSTN-Netz (NOAA) gemessenen Sonnenflüsse und schätzt, wie stark die Sonne das Empfängerrauschen um Neumond erhöht.
- **Export der Berechnungen nach Excel** und **Rechenkontrolle** – das Budget als Excel-Blatt und jede Formel mit eingesetzten Werten, Schritt für Schritt, für das Yagi- oder das Spiegel-Budget.

**Log, Hilfe und Werkzeuge**
- **WWL-Karte und ADIF** – Maidenhead-Gitter mit gearbeiteten und bestätigten Feldern aus deiner ADIF-Datei oder direkt von LoTW geladen, auch nach Band und nur EME.
- **BENUTZERHANDBUCH** und **THEORIE UND TIPPS ZU EME** – vollständige Handbücher im Programm in allen Sprachen, mit anklickbarem Inhaltsverzeichnis, Suche, Formeln und Quellen; als Word exportierbar. Das Theorie-Handbuch enthält die Ratschläge erfahrener EME-Funker, einen Abschnitt über Internet-Chats und die Antennentabellen von VE7BQH.
- **KOAXIALKABEL** – Datenbank der 50-Ω-Kabel mit der Dämpfung von 50 bis 1296 MHz (Datenblattwerte und Formel α = k1·√f + k2·f) und der Quelle jedes Wertes; sortierbar, filterbar, mit Verlustrechner und einer Schaltfläche, die das Kabel ins EME-Budget übernimmt. Eigene Kabel können hinzugefügt werden.

**Außerdem**
- CALL3.TXT von W7GJ und WSJT-X Improved geladen, zusammengeführt, alle 7 Tage erneuert und auf Wunsch nach WSJT-X kopiert.
- Warnungen vor Polkappen- und Polarlichtabsorption (PCA), wenn eine Station jenseits der Polarkreise oder in der Polarlichtzone liegt.
- 37 Sprachen; Farbschemata hell, Nacht (blau), schwarz, acht Pastelltöne und drei aus IP-TRX-CTRL (blau, violett, grün).
- Mondpositionen auf etwa 0,01° genau (Meeus, ELP-2000/82), alle Berechnungen auf deinem Computer; Daten in einem einzigen Ordner `data`.

### Français

<table><tr><td width="33%" align="center"><a href="docs/screenshots/fr-1.jpg"><img src="docs/screenshots/fr-1.jpg" alt="Position en direct et +- 24h"></a><br><sub>Position en direct et +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/fr-2.jpg"><img src="docs/screenshots/fr-2.jpg" alt="Bilan EME Yagi"></a><br><sub>Bilan EME Yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/fr-3.jpg"><img src="docs/screenshots/fr-3.jpg" alt="Distance et Dgrd"></a><br><sub>Distance et Dgrd</sub></td></tr></table>

YAEC réunit dans un seul programme tout ce qu'il faut pour trafiquer en EME (Terre–Lune–Terre) sur 50, 70, 144, 222, 432 et 902 MHz et 23 cm (1296 MHz), surtout quand la station a des contraintes : une antenne sans élévation, un rotor à débattement limité, des obstacles qui cachent une partie du ciel. Il ne dit pas seulement où se trouve la Lune, mais si **votre** antenne peut vraiment l'atteindre, quand et dans quelles conditions. Les bandes au-dessus de 432 MHz sont en cours de finalisation, mais le DGRD est déjà calculé correctement à chaque fréquence ; d'autres conseils pour ceux qui débutent au-dessus de 900 MHz suivront.

**En direct**
- **Position en direct et +- 24h** – l'écran principal, mis à jour chaque seconde : votre locator et celui du DX (4 à 14 caractères), fréquence, horloges UTC, locale et du DX, bande d'état (pointable, hors limites, sous l'horizon, fenêtre commune) avec compte à rebours, boussole et arc d'élévation. En saisissant l'indicatif du DX, son locator vient de CALL3.TXT.
- **Reconnaissance de mes obstacles** – carte aérienne ou topographique centrée sur votre station avec le ciel dessiné dessus : position de la Lune, trajet des 24 prochaines heures, lever et coucher, limites de l'antenne à faire glisser à la souris.
- **Mon horizon** – *Horizon du relief* : panorama du relief autour de ta station à partir des altitudes SRTM1 (environ 30 m), avec la courbure terrestre et la réfraction, sur le fond de la voûte céleste (trois échelles de couleurs) ou d'un ciel bleu clair ; trajectoire de la Lune, lever et coucher au-dessus du relief, principaux obstacles nommés d'après OpenStreetMap et minutes de Lune perdues. Une case fait du relief l'élévation minimale dans tout le programme. *Carte du bruit local (NJ9R)* : grille azimut × élévation où tu notes le bruit vu dans WSJT-X en tournant l'antenne ; les heures où la Lune est dans une direction bruyante reçoivent un ⚠.
- **Voûte céleste** – le ciel vu de votre QTH avec les couleurs du bruit du ciel à votre fréquence, les limites de l'antenne, l'horizon du DX, les radiosources, le Soleil et le trajet de la Lune.

**Planification**
- **Distance et Dgrd** – de 7 à 61 jours de Dgrd et de distance moyenne de la Lune, avec la déclinaison superposée, périgée, apogée, nouvelle lune, les trois meilleurs jours (dans l'ordre chronologique), un éventuel quatrième jour utile et une alerte pour les jours où la Lune est proche du Soleil. Seules comptent les heures où la Lune est vraiment pointable avec vos limites.
- **DGRD par fréquence** – le Dgrd à votre fréquence de travail avec le bruit réel de votre station et le ciel moyenné sur le faisceau de l'antenne, comparé au calcul habituel de WSJT-X ; le choix vaut pour tout le programme.
- **Stations à essayer** – pour le jour choisi, les stations actives sur le chat EME de N0UK (144 MHz) ayant une fenêtre commune avec toi, la meilleure par champ de locator, classées par un indice de 0 à 100 tiré du S/N dans les deux sens ; l'installation du DX est lue dans ce qu'il écrit sur le chat. Un calcul d'exemple, très approximatif, idée de Matteo IW5DHN.
- **Position de la Lune** – tableau pour la période choisie, coloré selon la pointabilité, avec les fenêtres communes à vous et au DX ; export CSV pour Excel.
- **La Lune sur le monde** – carte du monde colorée selon l'élévation de la Lune vue de chaque lieu ; un clic fait de ce point le DX.

**Liaison**
- **Bilan EME Yagi** – bilan de liaison pour chaque bande, mémorisé bande par bande : six indicateurs (liaison possible, ma PIRE, PIRE du DX, perte de trajet, S/B moi → DX et DX → moi, aussi avec le Soleil et en 2500 Hz), le tableau complet des étapes et un schéma interactif de la station (antenne, câbles, relais, préampli, transverter, radio). Gain de sol pour les antennes sans élévation. Modes à période de 60 s : JT65, Q65-60A, Q65-60B, Q65-60C et personnalisé. Calcul de l'écho (*J'émets et je reçois mon propre écho*) : niveau, retard et Doppler de l'écho.
- **Bilan EME paraboles** – le même bilan, écho compris, pour les paraboles sur 432, 902 et 1296 MHz, à foyer primaire ou offset (W2IMU) : gain avec la formule de PE1RKI, ouverture du faisceau 70·λ/D, préampli à un ou deux étages, transverter et puissance d'attaque du PA ; sur 23 cm, polarisation circulaire avec 0,4 dB de perte (KA1GT).
- **Radar GRAVES** – le radar français GRAVES (143,050 MHz) comme banc d'essai : quand la Lune est dans son faisceau et dans les limites de votre antenne, avec le Doppler et le retard de l'écho.
- **Bruit solaire** – télécharge les flux solaires mesurés par le réseau RSTN (NOAA) et estime de combien le Soleil augmente le bruit du récepteur près de la nouvelle lune.
- **Export des calculs vers Excel** et **Contrôle des calculs** – le bilan sous forme de feuille Excel, et chaque formule avec les valeurs substituées, étape par étape, pour le bilan Yagi ou paraboles.

**Log, aide et outils**
- **Carte WWL et ADIF** – grille Maidenhead avec les carrés contactés et confirmés à partir de votre fichier ADIF ou téléchargés directement de LoTW, aussi par bande et EME seulement.
- **MANUEL D'UTILISATION** et **THÉORIE ET CONSEILS SUR L'EME** – manuels complets dans le programme, dans toutes les langues, avec sommaire cliquable, recherche, formules et sources ; exportables en Word. Le manuel de théorie comprend les conseils d'opérateurs EME expérimentés, une section sur les chats Internet et les tableaux d'antennes de VE7BQH.
- **CÂBLES COAXIAUX** – base de données des câbles 50 Ω avec l'atténuation de 50 à 1296 MHz (valeurs des fiches techniques et formule α = k1·√f + k2·f) et la source de chaque valeur ; triable, filtrable, avec un calcul de perte et un bouton qui envoie le câble au bilan EME. On peut ajouter ses propres câbles.

**Et aussi**
- CALL3.TXT téléchargé chez W7GJ et WSJT-X Improved, fusionné, renouvelé tous les 7 jours et copié dans WSJT-X sur demande.
- Alertes d'absorption de la calotte polaire et aurorale (PCA) quand une station est au-delà des cercles polaires ou dans la zone aurorale.
- 37 langues ; thèmes de couleurs clair, nuit (bleu), noir, huit pastels et trois d'IP-TRX-CTRL (bleu, violet, vert).
- Positions de la Lune précises à environ 0,01° (Meeus, ELP-2000/82), tous les calculs sur votre ordinateur ; données dans un seul dossier `data`.

### Español

<table><tr><td width="33%" align="center"><a href="docs/screenshots/es-1.jpg"><img src="docs/screenshots/es-1.jpg" alt="Posición en vivo y +- 24h"></a><br><sub>Posición en vivo y +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/es-2.jpg"><img src="docs/screenshots/es-2.jpg" alt="Balance EME Yagi"></a><br><sub>Balance EME Yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/es-3.jpg"><img src="docs/screenshots/es-3.jpg" alt="Distancia y Dgrd"></a><br><sub>Distancia y Dgrd</sub></td></tr></table>

YAEC reúne en un solo programa todo lo necesario para operar EME (Tierra–Luna–Tierra) en 50, 70, 144, 222, 432 y 902 MHz y 23 cm (1296 MHz), sobre todo cuando la estación tiene limitaciones: una antena sin elevación, un rotor de recorrido limitado, obstáculos que ocultan parte del cielo. No solo dice dónde está la Luna, sino si **tu** antena puede alcanzarla de verdad, cuándo y en qué condiciones. Las bandas por encima de 432 MHz están en fase de finalización, pero el DGRD ya se calcula correctamente en cada frecuencia; seguirán más consejos para quien se inicia por encima de 900 MHz.

**En directo**
- **Posición en vivo y +- 24h** – la pantalla principal, actualizada cada segundo: tu locator y el del DX (de 4 a 14 caracteres), frecuencia, relojes UTC, local y del DX, franja de estado (apuntable, fuera de límites, bajo el horizonte, ventana común) con cuenta atrás, brújula y arco de elevación. Al escribir el indicativo del DX, su locator llega del CALL3.TXT.
- **Reconocimiento de mis obstáculos** – mapa aéreo o topográfico centrado en tu estación con el cielo dibujado encima: posición de la Luna, trayectoria de las próximas 24 horas, salida y puesta, límites de la antena que se arrastran con el ratón.
- **Mi horizonte** – *Horizonte del terreno*: panorama del terreno alrededor de tu estación con los datos de altitud SRTM1 (unos 30 m), con curvatura terrestre y refracción, sobre el fondo de la bóveda celeste (tres escalas de color) o de un cielo celeste; trayectoria de la Luna, salida y puesta sobre el terreno, obstáculos principales con los nombres de OpenStreetMap y minutos de Luna perdidos. Una casilla convierte el terreno en la elevación mínima en todo el programa. *Mapa del ruido local (NJ9R)*: cuadrícula acimut × elevación donde anotas el ruido visto en WSJT-X al girar la antena; las horas con la Luna en una dirección ruidosa llevan ⚠.
- **Bóveda celeste** – el cielo visto desde tu QTH con los colores del ruido del cielo en tu frecuencia, los límites de la antena, el horizonte del DX, las radiofuentes, el Sol y la trayectoria de la Luna.

**Planificación**
- **Distancia y Dgrd** – de 7 a 61 días de Dgrd y distancia media de la Luna, con la declinación superpuesta, perigeo, apogeo, luna nueva, los tres mejores días (por orden de fecha), un posible cuarto día útil y un aviso para los días con la Luna cerca del Sol. Solo cuentan las horas en que la Luna es realmente apuntable con tus límites.
- **DGRD por frecuencia** – el Dgrd en tu frecuencia de trabajo con el ruido real de tu estación y el cielo promediado sobre el haz de la antena, comparado con el cálculo habitual de WSJT-X; la elección vale en todo el programa.
- **Estaciones para probar** – para el día elegido, las estaciones activas en el chat EME de N0UK (144 MHz) con una ventana común contigo, la mejor por campo de locator, ordenadas por un índice de 0 a 100 obtenido del S/N en ambos sentidos; el equipo del DX se lee de lo que escribe en el chat. Un cálculo de ejemplo, muy aproximado, idea de Matteo IW5DHN.
- **Posición de la Luna** – tabla para el periodo elegido, coloreada según la apuntabilidad, con las ventanas comunes para ti y el DX; exportación CSV para Excel.
- **La Luna sobre el mundo** – mapa del mundo coloreado según la elevación de la Luna vista desde cada lugar; con un clic ese punto pasa a ser el DX.

**Enlace**
- **Balance EME Yagi** – balance del enlace para cada banda, guardado banda por banda: seis indicadores (enlace posible, mi PIRE, PIRE del DX, pérdida de trayecto, S/R yo → DX y DX → yo, también con el Sol y en 2500 Hz), la tabla completa de pasos y un esquema interactivo de la estación (antena, cables, relé, preamplificador, transverter, radio). Ganancia de suelo para antenas sin elevación. Modos con periodo de 60 s: JT65, Q65-60A, Q65-60B, Q65-60C y personalizado. Cálculo del eco (*Yo transmito y recibo mi propio eco*): nivel, retardo y Doppler del eco.
- **Balance EME parábolas** – el mismo balance, eco incluido, para antenas parabólicas en 432, 902 y 1296 MHz, de foco primario u offset (W2IMU): ganancia con la fórmula de PE1RKI, ancho de haz 70·λ/D, preamplificador de una o dos etapas, transverter y excitación del PA; en 23 cm, polarización circular con 0,4 dB de pérdida (KA1GT).
- **Radar GRAVES** – el radar francés GRAVES (143,050 MHz) como banco de pruebas: cuándo la Luna está en su haz y dentro de los límites de tu antena, con el Doppler y el retardo del eco.
- **Ruido solar** – descarga los flujos solares medidos por la red RSTN (NOAA) y estima cuánto aumenta el Sol el ruido del receptor cerca de la luna nueva.
- **Exportar los cálculos a Excel** y **Control de los cálculos** – el balance como hoja de Excel, y cada fórmula con los valores sustituidos, paso a paso, para el balance Yagi o parábolas.

**Log, ayuda y herramientas**
- **Mapa WWL y ADIF** – cuadrícula Maidenhead con los cuadrados trabajados y confirmados desde tu fichero ADIF o descargados directamente de LoTW, también por banda y solo EME.
- **MANUAL DE USO** y **TEORÍA Y CONSEJOS SOBRE EME** – manuales completos dentro del programa en todos los idiomas, con índice clicable, búsqueda, fórmulas y fuentes; exportables a Word. El manual de teoría incluye los consejos de operadores EME experimentados, un apartado sobre los chats de Internet y las tablas de antenas de VE7BQH.
- **CABLES COAXIALES** – base de datos de cables de 50 Ω con la atenuación de 50 a 1296 MHz (valores de las hojas de datos y fórmula α = k1·√f + k2·f) y la fuente de cada valor; ordenable, filtrable, con cálculo de pérdida y un botón que lleva el cable al balance EME. Se pueden añadir cables propios.

**Además**
- CALL3.TXT descargado de W7GJ y de WSJT-X Improved, fusionado, renovado cada 7 días y copiado en WSJT-X a petición.
- Avisos de absorción del casquete polar y auroral (PCA) cuando una estación está más allá de los círculos polares o en la zona auroral.
- 37 idiomas; esquemas de colores claro, noche (azul), negro, ocho pastel y tres de IP-TRX-CTRL (azul, violeta, verde).
- Posiciones de la Luna con una precisión de unos 0,01° (Meeus, ELP-2000/82), todos los cálculos en tu ordenador; datos en una sola carpeta `data`.

### Português

<table><tr><td width="33%" align="center"><a href="docs/screenshots/pt-1.jpg"><img src="docs/screenshots/pt-1.jpg" alt="Posição em direto e +- 24h"></a><br><sub>Posição em direto e +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/pt-2.jpg"><img src="docs/screenshots/pt-2.jpg" alt="Balanço EME Yagi"></a><br><sub>Balanço EME Yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/pt-3.jpg"><img src="docs/screenshots/pt-3.jpg" alt="Distância e Dgrd"></a><br><sub>Distância e Dgrd</sub></td></tr></table>

O YAEC reúne num só programa tudo o que é preciso para trabalhar em EME (Terra–Lua–Terra) em 50, 70, 144, 222, 432 e 902 MHz e 23 cm (1296 MHz), sobretudo quando a estação tem limitações: uma antena sem elevação, um rotor de curso limitado, obstáculos que escondem parte do céu. Não diz apenas onde está a Lua, mas se a **tua** antena a alcança mesmo, quando e em que condições. As bandas acima de 432 MHz estão a ser concluídas, mas a DGRD já é calculada corretamente em todas as frequências; seguir-se-ão mais conselhos para quem começa acima de 900 MHz.

**Em direto**
- **Posição em direto e +- 24h** – o ecrã principal, atualizado a cada segundo: o teu locator e o do DX (de 4 a 14 caracteres), frequência, relógios UTC, local e do DX, faixa de estado (apontável, fora dos limites, abaixo do horizonte, janela comum) com contagem decrescente, bússola e arco de elevação. Ao escrever o indicativo do DX, o locator vem do CALL3.TXT.
- **Reconhecimento dos meus obstáculos** – mapa aéreo ou topográfico centrado na tua estação com o céu desenhado por cima: posição da Lua, percurso nas próximas 24 horas, nascimento e ocaso, limites da antena que se arrastam com o rato.
- **O meu horizonte** – *Horizonte do relevo*: panorama do terreno em redor da tua estação a partir das altitudes SRTM1 (cerca de 30 m), com curvatura terrestre e refração, sobre o fundo da abóbada celeste (três escalas de cores) ou de um céu azul-claro; trajetória da Lua, nascer e ocaso acima do terreno, obstáculos principais com os nomes do OpenStreetMap e minutos de Lua perdidos. Uma caixa torna o terreno a elevação mínima em todo o programa. *Mapa do ruído local (NJ9R)*: grelha azimute × elevação onde anotas o ruído visto no WSJT-X ao rodar a antena; as horas com a Lua numa direção ruidosa recebem ⚠.
- **Abóbada celeste** – o céu visto do teu QTH com as cores do ruído do céu na tua frequência, os limites da antena, o horizonte do DX, as radiofontes, o Sol e o percurso da Lua.

**Planeamento**
- **Distância e Dgrd** – de 7 a 61 dias de Dgrd e distância média da Lua, com a declinação sobreposta, perigeu, apogeu, lua nova, os três melhores dias (por ordem de data), um eventual quarto dia útil e um aviso para os dias com a Lua perto do Sol. Só contam as horas em que a Lua é realmente apontável com os teus limites.
- **DGRD por frequência** – a Dgrd na tua frequência de trabalho com o ruído real da tua estação e o céu médio sobre o feixe da antena, comparada com o cálculo habitual do WSJT-X; a escolha vale para todo o programa.
- **Estações a experimentar** – para o dia escolhido, as estações ativas no chat EME de N0UK (144 MHz) com uma janela comum contigo, a melhor por campo de locator, ordenadas por um índice de 0 a 100 obtido do S/N nos dois sentidos; a instalação do DX é lida do que escreve no chat. Um cálculo de exemplo, muito aproximado, ideia de Matteo IW5DHN.
- **Posição da Lua** – tabela para o período escolhido, colorida segundo a apontabilidade, com as janelas comuns a ti e ao DX; exportação CSV para Excel.
- **Lua sobre o mundo** – mapa do mundo colorido segundo a elevação da Lua vista de cada lugar; com um clique esse ponto passa a ser o DX.

**Ligação**
- **Balanço EME Yagi** – balanço da ligação para cada banda, guardado banda a banda: seis indicadores (ligação possível, o meu EIRP, EIRP do DX, perda de percurso, S/N eu → DX e DX → eu, também com o Sol e em 2500 Hz), a tabela completa dos passos e um esquema interativo da estação (antena, cabos, relé, pré-amplificador, transverter, rádio). Ganho do solo para antenas sem elevação. Modos com período de 60 s: JT65, Q65-60A, Q65-60B, Q65-60C e personalizado. Cálculo do eco (*Eu transmito e recebo o meu próprio eco*): nível, atraso e Doppler do eco.
- **Balanço EME parabólicas** – o mesmo balanço, eco incluído, para antenas parabólicas em 432, 902 e 1296 MHz, de foco primário ou offset (W2IMU): ganho com a fórmula de PE1RKI, largura do feixe 70·λ/D, pré-amplificador de um ou dois andares, transverter e excitação do PA; em 23 cm, polarização circular com 0,4 dB de perda (KA1GT).
- **Radar GRAVES** – o radar francês GRAVES (143,050 MHz) como banco de ensaio: quando a Lua está no seu feixe e dentro dos limites da tua antena, com o Doppler e o atraso do eco.
- **Ruído solar** – descarrega os fluxos solares medidos pela rede RSTN (NOAA) e estima quanto o Sol aumenta o ruído do recetor perto da lua nova.
- **Exportar os cálculos para Excel** e **Verificação dos cálculos** – o balanço como folha de Excel, e cada fórmula com os valores substituídos, passo a passo, para o balanço Yagi ou parabólicas.

**Registo, ajuda e ferramentas**
- **Mapa WWL e ADIF** – grelha Maidenhead com os quadrados trabalhados e confirmados a partir do teu ficheiro ADIF ou descarregados diretamente do LoTW, também por banda e só EME.
- **MANUAL DE UTILIZAÇÃO** e **TEORIA E CONSELHOS SOBRE EME** – manuais completos dentro do programa em todas as línguas, com índice clicável, pesquisa, fórmulas e fontes; exportáveis para Word. O manual de teoria inclui os conselhos de operadores EME experientes, uma secção sobre os chats na Internet e as tabelas de antenas de VE7BQH.
- **CABOS COAXIAIS** – base de dados de cabos de 50 Ω com a atenuação de 50 a 1296 MHz (valores das fichas técnicas e fórmula α = k1·√f + k2·f) e a fonte de cada valor; ordenável, filtrável, com cálculo de perda e um botão que leva o cabo para o balanço EME. Podem acrescentar-se cabos próprios.

**E ainda**
- CALL3.TXT descarregado de W7GJ e do WSJT-X Improved, fundido, renovado a cada 7 dias e copiado para o WSJT-X a pedido.
- Avisos de absorção da calote polar e auroral (PCA) quando uma estação está para lá dos círculos polares ou na zona auroral.
- 37 línguas; esquemas de cores claro, noite (azul), preto, oito pastel e três do IP-TRX-CTRL (azul, violeta, verde).
- Posições da Lua com uma precisão de cerca de 0,01° (Meeus, ELP-2000/82), todos os cálculos no teu computador; dados numa única pasta `data`.

### Türkçe

<table><tr><td width="33%" align="center"><a href="docs/screenshots/tr-1.jpg"><img src="docs/screenshots/tr-1.jpg" alt="Canlı konum ve +- 24h"></a><br><sub>Canlı konum ve +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/tr-2.jpg"><img src="docs/screenshots/tr-2.jpg" alt="EME bütçesi yagi"></a><br><sub>EME bütçesi yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/tr-3.jpg"><img src="docs/screenshots/tr-3.jpg" alt="Mesafe ve Dgrd"></a><br><sub>Mesafe ve Dgrd</sub></td></tr></table>

YAEC, 50, 70, 144, 222, 432 ve 902 MHz ile 23 cm (1296 MHz) bantlarında EME (Dünya–Ay–Dünya) çalışmak için gereken her şeyi tek bir programda toplar; özellikle istasyonun kısıtları olduğunda: elevasyonu olmayan bir anten, sınırlı dönüşlü bir rotor, gökyüzünün bir kısmını gizleyen engeller. Yalnızca Ay'ın nerede olduğunu değil, **sizin** antenin ona gerçekten ulaşıp ulaşamadığını, ne zaman ve hangi koşullarda ulaştığını söyler. 432 MHz üstündeki bantlar tamamlanma aşamasındadır, ancak DGRD her frekansta zaten doğru hesaplanır; 900 MHz üstüne yeni başlayanlar için daha fazla öneri gelecek.

**Canlı**
- **Canlı konum ve +- 24h** – her saniye güncellenen ana ekran: sizin ve DX'in lokatörü (4 ila 14 karakter), frekans, UTC, yerel ve DX saatleri, geri sayımlı bir durum şeridi (yönlendirilebilir, sınırların dışında, ufkun altında, ortak pencere), pusula ve elevasyon yayı. DX'in çağrı işareti yazıldığında lokatörü CALL3.TXT'den gelir.
- **Engellerimin keşfi** – istasyonunuzu merkeze alan, üzerine gökyüzü çizilmiş hava fotoğrafı veya topografik harita: Ay'ın konumu, sonraki 24 saatteki yolu, doğuş ve batış, fareyle sürüklenen anten sınırları.
- **Ufkum** – *Araziden ufuk*: istasyonunun çevresindeki arazinin SRTM1 yükseklik verilerinden (yaklaşık 30 m), Dünya eğriliği ve kırılmayla hesaplanan panoraması, gök kubbesi (üç renk ölçeği) ya da açık mavi bir gök arka planında; Ay'ın yolu, arazinin üzerinde doğuş ve batış, OpenStreetMap adlarıyla başlıca engeller ve kaybedilen Ay dakikaları. Bir onay kutusu araziyi tüm programda en düşük yükseklik açısı yapar. *Yerel gürültü haritası (NJ9R)*: anteni döndürürken WSJT-X'te görülen gürültüyü yazdığın azimut × yükseklik ızgarası; Ay'ın gürültülü bir yönde olduğu saatler ⚠ alır.
- **Gök kubbesi** – QTH'nizden görülen gökyüzü; frekansınızdaki gök gürültüsü renkleri, anten sınırları, DX'in ufku, radyo kaynakları, Güneş ve Ay'ın yolu.

**Planlama**
- **Mesafe ve Dgrd** – 7 ila 61 günlük Dgrd ve ortalama Ay mesafesi; üzerine bindirilmiş deklinasyon, yerberi, yeröte, yeni Ay, en iyi üç gün (tarih sırasıyla), olası dördüncü kullanışlı gün ve Ay'ın Güneş'e yakın olduğu günler için uyarı. Yalnızca Ay'ın sınırlarınızla gerçekten yönlendirilebilir olduğu saatler sayılır.
- **Frekansa göre DGRD** – istasyonunuzun gerçek gürültüsü ve anten hüzmesi üzerinde ortalanmış gökyüzüyle çalışma frekansınızdaki Dgrd, alışılmış WSJT-X hesabıyla karşılaştırmalı; seçim tüm programda geçerlidir.
- **Denenecek istasyonlar** – seçilen gün için N0UK EME sohbetinde etkin olan ve seninle ortak penceresi bulunan istasyonlar (144 MHz), her lokatör alanından en iyisi, iki yöndeki S/N'den elde edilen 0–100 endeksine göre sıralı; DX'in donanımı sohbette yazdıklarından okunur. Çok kaba bir örnek hesap, fikir Matteo IW5DHN'den.
- **Ay konumu** – seçilen dönem için, yönlendirilebilirliğe göre renklendirilmiş tablo; sizin ve DX'in ortak pencereleriyle; Excel için CSV dışa aktarma.
- **Dünya üzerinde Ay** – her yerden görülen Ay elevasyonuna göre renklendirilmiş dünya haritası; tek tıkla o nokta DX olur.

**Bağlantı**
- **EME bütçesi yagi** – her bant için bağlantı bütçesi, bant bant saklanır: altı gösterge (bağlantı mümkün, benim EIRP'm, DX'in EIRP'si, yol kaybı, S/N ben → DX ve DX → ben, Güneş ile ve 2500 Hz'de de), tüm adımların tablosu ve istasyonun etkileşimli şeması (anten, kablolar, röle, ön yükselteç, transverter, telsiz). Elevasyonsuz antenler için yer kazancı. 60 s periyotlu modlar: JT65, Q65-60A, Q65-60B, Q65-60C ve özel. Yankı hesabı (*Ben yayın yapar ve kendi yankımı alırım*): yankının seviyesi, gecikmesi ve Doppler'i.
- **EME bütçesi çanaklar** – aynı bütçe, yankı dahil, 432, 902 ve 1296 MHz'de birincil odaklı veya ofset (W2IMU) parabolik antenler için: PE1RKI formülüyle kazanç, 70·λ/D hüzme genişliği, tek veya iki katlı ön yükselteç, transverter ve PA sürüşü; 23 cm'de 0,4 dB kayıplı dairesel polarizasyon (KA1GT).
- **GRAVES radarı** – deneme tezgâhı olarak Fransız GRAVES radarı (143,050 MHz): Ay'ın onun hüzmesinde ve anteninizin sınırları içinde olduğu zamanlar, Doppler ve yankı gecikmesiyle.
- **Güneş gürültüsü** – RSTN ağının (NOAA) ölçtüğü Güneş akılarını indirir ve yeni Ay yakınında Güneş'in alıcı gürültüsünü ne kadar artırdığını tahmin eder.
- **Hesaplamaları Excel'e aktar** ve **Hesapların kontrolü** – bütçe bir Excel sayfası olarak ve her formül yerine konmuş değerleriyle adım adım, yagi veya çanak bütçesi için.

**Kayıt, yardım ve araçlar**
- **WWL haritası ve ADIF** – ADIF dosyanızdan veya doğrudan LoTW'den indirilen çalışılmış ve onaylanmış karelerle Maidenhead ızgarası, bant bazında ve yalnızca EME olarak da.
- **KULLANIM KILAVUZU** ve **EME ÜZERİNE TEORİ VE ÖNERİLER** – programın içinde, tüm dillerde, tıklanabilir içindekiler, arama, formüller ve kaynaklarla eksiksiz kılavuzlar; Word'e aktarılabilir. Teori kılavuzunda deneyimli EME operatörlerinin önerileri, internet sohbetleri üzerine bir bölüm ve VE7BQH anten tabloları bulunur.
- **KOAKSİYEL KABLOLAR** – 50 Ω kabloların 50 ila 1296 MHz arasındaki zayıflamasını (veri sayfası değerleri ve α = k1·√f + k2·f formülü) ve her değerin kaynağını içeren veritabanı; sıralanabilir, süzülebilir, kayıp hesabı ve kabloyu EME bütçesine gönderen bir düğmeyle. Kendi kablolarınızı ekleyebilirsiniz.

**Ayrıca**
- W7GJ'den ve WSJT-X Improved'dan indirilen, birleştirilen, 7 günde bir yenilenen ve istenirse WSJT-X'e kopyalanan CALL3.TXT.
- Bir istasyon kutup dairelerinin ötesinde veya auroral bölgede olduğunda kutup başlığı ve auroral soğurma (PCA) uyarıları.
- 37 dil; açık, gece (mavi), siyah, sekiz pastel ve IP-TRX-CTRL'den üç (mavi, mor, yeşil) renk şeması.
- Yaklaşık 0,01° doğrulukta Ay konumları (Meeus, ELP-2000/82), tüm hesaplar bilgisayarınızda; veriler tek bir `data` klasöründe.

### Čeština

<table><tr><td width="33%" align="center"><a href="docs/screenshots/cs-1.jpg"><img src="docs/screenshots/cs-1.jpg" alt="Poloha živě a +- 24h"></a><br><sub>Poloha živě a +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/cs-2.jpg"><img src="docs/screenshots/cs-2.jpg" alt="Bilance EME yagi"></a><br><sub>Bilance EME yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/cs-3.jpg"><img src="docs/screenshots/cs-3.jpg" alt="Vzdálenost a Dgrd"></a><br><sub>Vzdálenost a Dgrd</sub></td></tr></table>

YAEC shromažďuje v jediném programu vše, co je potřeba pro provoz EME (Země–Měsíc–Země) na 50, 70, 144, 222, 432 a 902 MHz a v pásmu 23 cm (1296 MHz), zejména když má stanice omezení: anténu bez elevace, rotátor s omezeným rozsahem, překážky, které zakrývají část oblohy. Neříká jen, kde je Měsíc, ale zda na něj **tvá** anténa opravdu dosáhne, kdy a za jakých podmínek. Pásma nad 432 MHz se dokončují, ale DGRD se již počítá správně na každém kmitočtu; budou následovat další rady pro začátečníky nad 900 MHz.

**Živě**
- **Poloha živě a +- 24h** – hlavní obrazovka, aktualizovaná každou sekundu: tvůj lokátor a lokátor DX (4 až 14 znaků), kmitočet, hodiny UTC, místní a DX, stavový pruh (zamiřitelný, mimo limity, pod obzorem, společné okno) s odpočtem, kompas a oblouk elevace. Po napsání značky DX se lokátor doplní z CALL3.TXT.
- **Průzkum mých překážek** – letecká nebo topografická mapa vystředěná na tvou stanici s oblohou nakreslenou navrch: poloha Měsíce, dráha v příštích 24 hodinách, východ a západ, limity antény, které se táhnou myší.
- **Můj obzor** – *Obzor z terénu*: panorama terénu kolem tvé stanice z výškových dat SRTM1 (asi 30 m), se zakřivením Země a refrakcí, na pozadí nebeské klenby (tři barevné škály) nebo světle modrého nebe; dráha Měsíce, východ a západ nad terénem, hlavní překážky s názvy z OpenStreetMap a ztracené minuty Měsíce. Jedno políčko udělá z terénu minimální elevaci v celém programu. *Mapa místního rušení (NJ9R)*: mřížka azimut × elevace, do které zapisuješ šum viděný ve WSJT-X při otáčení antény; hodiny s Měsícem v hlučném směru dostanou ⚠.
- **Nebeská klenba** – obloha viděná z tvého QTH s barvami šumu oblohy na tvém kmitočtu, limity antény, obzor DX, rádiové zdroje, Slunce a dráha Měsíce.

**Plánování**
- **Vzdálenost a Dgrd** – 7 až 61 dní Dgrd a průměrné vzdálenosti Měsíce, s překrytou deklinací, perigeem, apogeem, novem, třemi nejlepšími dny (podle data), případným čtvrtým užitečným dnem a upozorněním na dny s Měsícem blízko Slunce. Počítají se jen hodiny, kdy je Měsíc s tvými limity opravdu zamiřitelný.
- **DGRD podle kmitočtu** – Dgrd na tvém pracovním kmitočtu se skutečným šumem tvé stanice a oblohou průměrovanou přes svazek antény, porovnaná s obvyklým výpočtem WSJT-X; volba platí v celém programu.
- **Stanice k vyzkoušení** – pro zvolený den stanice aktivní v EME chatu N0UK (144 MHz) se společným oknem, nejlepší v každém poli lokátoru, seřazené podle indexu 0 až 100 z S/N v obou směrech; vybavení DX se čte z toho, co píše v chatu. Hrubý ukázkový výpočet, nápad Matteo IW5DHN.
- **Poloha Měsíce** – tabulka pro zvolené období, obarvená podle zamiřitelnosti, se společnými okny pro tebe a DX; export CSV pro Excel.
- **Měsíc nad světem** – mapa světa obarvená podle elevace Měsíce viděné z každého místa; jedním kliknutím se bod stane stanicí DX.

**Spojení**
- **Bilance EME yagi** – bilance spojení pro každé pásmo, ukládaná pásmo po pásmu: šest ukazatelů (spojení možné, moje EIRP, EIRP DX, útlum trasy, S/N já → DX a DX → já, i se Sluncem a v 2500 Hz), úplná tabulka kroků a interaktivní schéma stanice (anténa, kabely, relé, předzesilovač, transvertor, rádio). Ground gain pro antény bez elevace. Druhy provozu s periodou 60 s: JT65, Q65-60A, Q65-60B, Q65-60C a vlastní. Výpočet echa (*Vysílám a přijímám své echo*): úroveň, zpoždění a Doppler echa.
- **Bilance EME paraboly** – stejná bilance, včetně echa, pro parabolické antény na 432, 902 a 1296 MHz, s primárním ohniskem nebo offsetové (W2IMU): zisk podle vzorce PE1RKI, šířka svazku 70·λ/D, jedno- nebo dvoustupňový předzesilovač, transvertor a buzení PA; v pásmu 23 cm kruhová polarizace se ztrátou 0,4 dB (KA1GT).
- **Radar GRAVES** – francouzský radar GRAVES (143,050 MHz) jako zkušební stolice: kdy je Měsíc v jeho svazku a v limitech tvé antény, s Dopplerem a zpožděním echa.
- **Sluneční šum** – stáhne sluneční toky měřené sítí RSTN (NOAA) a odhadne, o kolik Slunce zvýší šum přijímače v blízkosti novu.
- **Export výpočtů do Excelu** a **Kontrola výpočtů** – bilance jako list Excelu a každý vzorec s dosazenými hodnotami, krok za krokem, pro bilanci yagi nebo parabol.

**Deník, nápověda a nástroje**
- **Mapa WWL a ADIF** – síť Maidenhead s pracovanými a potvrzenými čtverci z tvého souboru ADIF nebo stažené přímo z LoTW, i podle pásma a jen EME.
- **PŘÍRUČKA K POUŽITÍ** a **TEORIE A RADY K EME** – úplné příručky uvnitř programu ve všech jazycích, s klikatelným obsahem, vyhledáváním, vzorci a zdroji; exportovatelné do Wordu. Příručka teorie obsahuje rady zkušených operátorů EME, oddíl o chatech na internetu a tabulky antén VE7BQH.
- **KOAXIÁLNÍ KABELY** – databáze kabelů 50 Ω s útlumem od 50 do 1296 MHz (hodnoty z katalogových listů a vzorec α = k1·√f + k2·f) a zdrojem každé hodnoty; řaditelná, filtrovatelná, s výpočtem ztráty a tlačítkem, které přenese kabel do bilance EME. Lze přidat vlastní kabely.

**Dále**
- CALL3.TXT stažený od W7GJ a z WSJT-X Improved, sloučený, obnovovaný každých 7 dní a na požádání zkopírovaný do WSJT-X.
- Upozornění na absorpci v polární čepičce a aurorální absorpci (PCA), když je stanice za polárními kruhy nebo v aurorální zóně.
- 37 jazyků; barevná schémata světlé, noční (modré), černé, osm pastelových a tři z IP-TRX-CTRL (modré, fialové, zelené).
- Polohy Měsíce s přesností asi 0,01° (Meeus, ELP-2000/82), všechny výpočty na tvém počítači; data v jediné složce `data`.

### Slovenčina

<table><tr><td width="33%" align="center"><a href="docs/screenshots/sk-1.jpg"><img src="docs/screenshots/sk-1.jpg" alt="Poloha naživo a +- 24h"></a><br><sub>Poloha naživo a +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/sk-2.jpg"><img src="docs/screenshots/sk-2.jpg" alt="Bilancia EME yagi"></a><br><sub>Bilancia EME yagi</sub></td><td width="33%" align="center"><a href="docs/screenshots/sk-3.jpg"><img src="docs/screenshots/sk-3.jpg" alt="Vzdialenosť a Dgrd"></a><br><sub>Vzdialenosť a Dgrd</sub></td></tr></table>

YAEC zhromažďuje v jedinom programe všetko, čo treba na prevádzku EME (Zem–Mesiac–Zem) na 50, 70, 144, 222, 432 a 902 MHz a v pásme 23 cm (1296 MHz), najmä keď má stanica obmedzenia: anténu bez elevácie, rotátor s obmedzeným rozsahom, prekážky, ktoré zakrývajú časť oblohy. Nehovorí len, kde je Mesiac, ale či naň **tvoja** anténa naozaj dosiahne, kedy a za akých podmienok. Pásma nad 432 MHz sa dokončujú, ale DGRD sa už počíta správne na každom kmitočte; budú nasledovať ďalšie rady pre začiatočníkov nad 900 MHz.

**Naživo**
- **Poloha naživo a +- 24h** – hlavná obrazovka, aktualizovaná každú sekundu: tvoj lokátor a lokátor DX (4 až 14 znakov), kmitočet, hodiny UTC, miestne a DX, stavový pás (namieriteľný, mimo limitov, pod obzorom, spoločné okno) s odpočtom, kompas a oblúk elevácie. Po napísaní značky DX sa lokátor doplní z CALL3.TXT.
- **Prieskum mojich prekážok** – letecká alebo topografická mapa vycentrovaná na tvoju stanicu s oblohou nakreslenou navrchu: poloha Mesiaca, dráha v nasledujúcich 24 hodinách, východ a západ, limity antény, ktoré sa ťahajú myšou.
- **Môj obzor** – *Obzor z terénu*: panoráma terénu okolo tvojej stanice z výškových dát SRTM1 (asi 30 m), so zakrivením Zeme a refrakciou, na pozadí nebeskej klenby (tri farebné škály) alebo svetlomodrej oblohy; dráha Mesiaca, východ a západ nad terénom, hlavné prekážky s názvami z OpenStreetMap a stratené minúty Mesiaca. Jedno políčko urobí z terénu minimálnu eleváciu v celom programe. *Mapa miestneho rušenia (NJ9R)*: mriežka azimut × elevácia, do ktorej zapisuješ šum videný vo WSJT-X pri otáčaní antény; hodiny s Mesiacom v hlučnom smere dostanú ⚠.
- **Nebeská klenba** – obloha videná z tvojho QTH s farbami šumu oblohy na tvojom kmitočte, limity antény, obzor DX, rádiové zdroje, Slnko a dráha Mesiaca.

**Plánovanie**
- **Vzdialenosť a Dgrd** – 7 až 61 dní Dgrd a priemernej vzdialenosti Mesiaca, s prekrytou deklináciou, perigeom, apogeom, novom, tromi najlepšími dňami (podľa dátumu), prípadným štvrtým užitočným dňom a upozornením na dni s Mesiacom blízko Slnka. Počítajú sa len hodiny, keď je Mesiac s tvojimi limitmi naozaj namieriteľný.
- **DGRD podľa kmitočtu** – Dgrd na tvojom pracovnom kmitočte so skutočným šumom tvojej stanice a oblohou priemerovanou cez zväzok antény, porovnaný s obvyklým výpočtom WSJT-X; voľba platí v celom programe.
- **Stanice na vyskúšanie** – pre zvolený deň stanice aktívne v EME čete N0UK (144 MHz) so spoločným oknom, najlepšia v každom poli lokátora, zoradené podľa indexu 0 až 100 zo S/N v oboch smeroch; vybavenie DX sa číta z toho, čo píše v čete. Hrubý ukážkový výpočet, nápad Matteo IW5DHN.
- **Poloha Mesiaca** – tabuľka pre zvolené obdobie, zafarbená podľa namieriteľnosti, so spoločnými oknami pre teba a DX; export CSV pre Excel.
- **Mesiac nad svetom** – mapa sveta zafarbená podľa elevácie Mesiaca videnej z každého miesta; jedným kliknutím sa bod stane stanicou DX.

**Spojenie**
- **Bilancia EME yagi** – bilancia spojenia pre každé pásmo, ukladaná pásmo po pásme: šesť ukazovateľov (spojenie možné, moje EIRP, EIRP DX, útlm trasy, S/N ja → DX a DX → ja, aj so Slnkom a v 2500 Hz), úplná tabuľka krokov a interaktívna schéma stanice (anténa, káble, relé, predzosilňovač, transvertor, rádio). Ground gain pre antény bez elevácie. Druhy prevádzky s periódou 60 s: JT65, Q65-60A, Q65-60B, Q65-60C a vlastný. Výpočet echa (*Vysielam a prijímam svoje echo*): úroveň, oneskorenie a Doppler echa.
- **Bilancia EME paraboly** – rovnaká bilancia, vrátane echa, pre parabolické antény na 432, 902 a 1296 MHz, s primárnym ohniskom alebo offsetové (W2IMU): zisk podľa vzorca PE1RKI, šírka zväzku 70·λ/D, jedno- alebo dvojstupňový predzosilňovač, transvertor a budenie PA; v pásme 23 cm kruhová polarizácia so stratou 0,4 dB (KA1GT).
- **Radar GRAVES** – francúzsky radar GRAVES (143,050 MHz) ako skúšobná stolica: kedy je Mesiac v jeho zväzku a v limitoch tvojej antény, s Dopplerom a oneskorením echa.
- **Slnečný šum** – stiahne slnečné toky merané sieťou RSTN (NOAA) a odhadne, o koľko Slnko zvýši šum prijímača v blízkosti novu.
- **Export výpočtov do Excelu** a **Kontrola výpočtov** – bilancia ako hárok Excelu a každý vzorec s dosadenými hodnotami, krok za krokom, pre bilanciu yagi alebo parabol.

**Denník, nápoveda a nástroje**
- **Mapa WWL a ADIF** – sieť Maidenhead s pracovanými a potvrdenými štvorcami z tvojho súboru ADIF alebo stiahnutými priamo z LoTW, aj podľa pásma a len EME.
- **PRÍRUČKA NA POUŽITIE** a **TEÓRIA A RADY K EME** – úplné príručky vnútri programu vo všetkých jazykoch, s klikateľným obsahom, vyhľadávaním, vzorcami a zdrojmi; exportovateľné do Wordu. Príručka teórie obsahuje rady skúsených operátorov EME, oddiel o chatoch na internete a tabuľky antén VE7BQH.
- **KOAXIÁLNE KÁBLE** – databáza káblov 50 Ω s útlmom od 50 do 1296 MHz (hodnoty z katalógových listov a vzorec α = k1·√f + k2·f) a zdrojom každej hodnoty; zoraditeľná, filtrovateľná, s výpočtom straty a tlačidlom, ktoré prenesie kábel do bilancie EME. Možno pridať vlastné káble.

**Ďalej**
- CALL3.TXT stiahnutý od W7GJ a z WSJT-X Improved, zlúčený, obnovovaný každých 7 dní a na požiadanie skopírovaný do WSJT-X.
- Upozornenia na absorpciu v polárnej čiapočke a aurorálnu absorpciu (PCA), keď je stanica za polárnymi kruhmi alebo v aurorálnej zóne.
- 37 jazykov; farebné schémy svetlá, nočná (modrá), čierna, osem pastelových a tri z IP-TRX-CTRL (modrá, fialová, zelená).
- Polohy Mesiaca s presnosťou asi 0,01° (Meeus, ELP-2000/82), všetky výpočty na tvojom počítači; údaje v jedinom priečinku `data`.

### 中文

<table><tr><td width="33%" align="center"><a href="docs/screenshots/zh-1.jpg"><img src="docs/screenshots/zh-1.jpg" alt="实时位置与 +- 24h"></a><br><sub>实时位置与 +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/zh-2.jpg"><img src="docs/screenshots/zh-2.jpg" alt="EME 链路预算 八木"></a><br><sub>EME 链路预算 八木</sub></td><td width="33%" align="center"><a href="docs/screenshots/zh-3.jpg"><img src="docs/screenshots/zh-3.jpg" alt="距离与 Dgrd"></a><br><sub>距离与 Dgrd</sub></td></tr></table>

YAEC 把在 50、70、144、222、432、902 MHz 和 23 cm（1296 MHz）上进行 EME（地–月–地）通信所需的一切集中在一个程序里，尤其适合有限制的电台：没有仰角的天线、转动范围有限的转台、遮挡部分天空的障碍物。它不仅告诉你月亮在哪里，还告诉你**你的**天线能否真正对准它、何时、在什么条件下。432 MHz 以上的频段仍在完善中，但 DGRD 已在每个频率上正确计算；之后还会为刚接触 900 MHz 以上频段的人提供更多建议。

**实时**
- **实时位置与 +- 24h** – 每秒更新的主屏幕：你和 DX 的定位码（4 至 14 个字符）、频率、UTC、本地和 DX 时钟、带倒计时的状态条（可对准、超出限制、在地平线下、共同窗口）、罗盘和仰角弧。输入 DX 呼号后，定位码从 CALL3.TXT 自动填入。
- **我的障碍物勘察** – 以你的电台为中心的航拍或地形图，上面叠加天空：月亮位置、未来 24 小时的轨迹、升起和落下、可用鼠标拖动的天线限制。
- **我的地平线** – *地形地平线*：根据 SRTM1 高程数据（约 30 米）计算你电台周围的地形全景，考虑地球曲率和折射，背景为天穹（三种配色）或浅蓝色天空；月球轨迹、在地形之上的升起与落下、带 OpenStreetMap 名称的主要障碍物以及损失的月球分钟数。勾选一个框即可在整个程序中把地形用作最低仰角。*本地噪声图 (NJ9R)*：方位角 × 仰角网格，转动天线时记下 WSJT-X 中看到的噪声；月球处于噪声方向的时段标 ⚠。
- **天穹** – 从你的 QTH 看到的天空，以你所用频率的天空噪声着色，并显示天线限制、DX 的地平线、射电源、太阳和月亮轨迹。

**规划**
- **距离与 Dgrd** – 7 至 61 天的 Dgrd 和月球平均距离，叠加赤纬、近地点、远地点、新月、三个最佳日（按日期排序）、可能的第四个可用日，以及月亮靠近太阳日子的提醒。只计算月亮在你的限制范围内真正可对准的时段。
- **按频率 DGRD** – 你的工作频率上的 Dgrd，使用你电台的真实噪声和在天线波束上平均的天空，并与 WSJT-X 的常规计算对比；该选择在整个程序中生效。
- **值得尝试的电台** – 所选日期中，N0UK EME 聊天里与你有共同窗口的活跃电台（144 MHz），每个定位网格取最佳一个，按由双向 S/N 得出的 0–100 指数排序；DX 的设备取自其在聊天中所写内容。非常粗略的示例计算，创意来自 Matteo IW5DHN。
- **月球位置** – 所选时段的表格，按可对准性着色，显示你和 DX 的共同窗口；可导出为 Excel 用的 CSV。
- **月照全球** – 按各地所见月亮仰角着色的世界地图；单击即可把该点设为 DX。

**通联**
- **EME 链路预算 八木** – 每个频段的链路预算，按频段分别保存：六个指标（能否通联、我的 EIRP、DX 的 EIRP、路径损耗、S/N 我 → DX 和 DX → 我，也包括有太阳时和 2500 Hz 下的值）、全部步骤的表格，以及电台的交互式示意图（天线、电缆、继电器、前置放大器、变频器、电台）。无仰角天线的地面增益。60 s 周期的模式：JT65、Q65-60A、Q65-60B、Q65-60C 和自定义。回波计算（*我发射并接收自己的回波*）：回波电平、延迟和多普勒。
- **EME 链路预算 抛物面** – 同样的预算（含回波），用于 432、902 和 1296 MHz 的抛物面天线，可选主焦点或偏馈（W2IMU）：按 PE1RKI 公式计算增益，波束宽度 70·λ/D，单级或两级前置放大器，变频器和功放激励；在 23 cm 上使用圆极化，损耗 0.4 dB（KA1GT）。
- **GRAVES 雷达** – 把法国 GRAVES 雷达（143.050 MHz）作为测试台：月亮何时位于其波束中且在你的天线限制内，并给出多普勒和回波延迟。
- **太阳噪声** – 下载 RSTN 网络（NOAA）测得的太阳通量，估算新月附近太阳使接收机噪声升高多少。
- **计算结果导出到 Excel** 和 **计算核查** – 把预算导出为 Excel 工作表，并逐步列出代入数值的每个公式，可选八木或抛物面预算。

**日志、帮助和工具**
- **WWL 与 ADIF 地图** – Maidenhead 网格，显示来自你的 ADIF 文件或直接从 LoTW 下载的已通联和已确认方格，也可按频段或仅 EME 显示。
- **使用手册** 和 **EME 理论与建议** – 程序内置、提供所有语言的完整手册，含可点击目录、搜索、公式和来源；可导出为 Word。理论手册包含资深 EME 操作员的建议、关于网络聊天室的章节以及 VE7BQH 天线表。
- **同轴电缆** – 50 Ω 电缆数据库，含 50 至 1296 MHz 的衰减（数据手册数值和公式 α = k1·√f + k2·f）以及每个数值的来源；可排序、筛选，带损耗计算和把电缆送入 EME 预算的按钮。可以添加自己的电缆。

**此外**
- 从 W7GJ 和 WSJT-X Improved 下载并合并的 CALL3.TXT，每 7 天更新一次，可按需复制到 WSJT-X。
- 当电台位于极圈以外或极光区时，提示极盖吸收和极光吸收（PCA）。
- 37 种语言；浅色、夜间（蓝色）、黑色、八种柔和配色以及三种 IP-TRX-CTRL 配色（蓝、紫、绿）。
- 月球位置精度约 0.01°（Meeus，ELP-2000/82），所有计算都在你的电脑上完成；数据集中在一个 `data` 文件夹里。

### 日本語

<table><tr><td width="33%" align="center"><a href="docs/screenshots/ja-1.jpg"><img src="docs/screenshots/ja-1.jpg" alt="ライブ位置と +- 24h"></a><br><sub>ライブ位置と +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/ja-2.jpg"><img src="docs/screenshots/ja-2.jpg" alt="EME 回線計算 八木"></a><br><sub>EME 回線計算 八木</sub></td><td width="33%" align="center"><a href="docs/screenshots/ja-3.jpg"><img src="docs/screenshots/ja-3.jpg" alt="距離と Dgrd"></a><br><sub>距離と Dgrd</sub></td></tr></table>

YAEC は、50、70、144、222、432、902 MHz と 23 cm（1296 MHz）で EME（地球–月–地球）運用に必要なものを一つのプログラムにまとめています。特に、仰角のないアンテナ、回転範囲が限られたローテーター、空の一部を隠す障害物など、制約のある局に向いています。月がどこにあるかだけでなく、**あなたの**アンテナが本当に月に向けられるか、いつ、どんな条件でかを示します。432 MHz より上のバンドは整備中ですが、DGRD はすでにすべての周波数で正しく計算されます。900 MHz 以上を始めたばかりの方へのアドバイスも今後追加します。

**ライブ**
- **ライブ位置と +- 24h** – 毎秒更新されるメイン画面：自局と DX のロケーター（4～14 文字）、周波数、UTC・ローカル・DX の時計、カウントダウン付きの状態帯（指向可能、制限外、地平線下、共通ウィンドウ）、コンパスと仰角の弧。DX のコールサインを入力すると、ロケーターが CALL3.TXT から入ります。
- **自局障害物の偵察** – 自局を中心にした航空写真または地形図に空を重ねて表示：月の位置、今後 24 時間の軌跡、出と入り、マウスでドラッグできるアンテナの制限。
- **自局の地平線** – *地形からの地平線*：SRTM1 標高データ（約 30 m）から地球の曲率と屈折を考慮して計算した局周辺の地形パノラマを、天球（3 配色）または水色の空の上に表示。月の軌跡、地形上の出と入り、OpenStreetMap の名前付きの主な障害物、失われる月の分数。チェックボックス 1 つで地形をプログラム全体の最低仰角にできます。*ローカル雑音マップ (NJ9R)*：アンテナを回しながら WSJT-X で見たノイズを入力する方位角 × 仰角のグリッド。月がノイズの多い方向にある時間には ⚠ が付きます。
- **天球** – 自局 QTH から見た空を、使用周波数の空の雑音の色で表示し、アンテナの制限、DX の地平線、電波源、太陽、月の軌跡も示します。

**計画**
- **距離と Dgrd** – 7～61 日分の Dgrd と月の平均距離。赤緯の重ね表示、近地点、遠地点、新月、最良の 3 日（日付順）、4 日目の候補、月が太陽に近い日の警告付き。月が制限内で本当に指向できる時間だけを数えます。
- **周波数別 DGRD** – 自局の実際の雑音とアンテナビームで平均した空を使った運用周波数での Dgrd を、通常の WSJT-X の計算と比較。選択はプログラム全体に適用されます。
- **試してみたい局** – 選んだ日に N0UK EME チャットでアクティブで共通ウィンドウがある局（144 MHz）を、ロケーター フィールドごとに最良の 1 局ずつ、双方向の S/N から求めた 0〜100 の指数で並べます。DX の設備はチャットへの書き込みから読み取ります。非常に大まかな計算例で、Matteo IW5DHN のアイデアです。
- **月の位置** – 選んだ期間の表。指向の可否で色分けし、自局と DX の共通ウィンドウを表示。Excel 用 CSV 書き出し。
- **世界から見た月** – 各地から見た月の仰角で色分けした世界地図。クリックするとその地点が DX になります。

**交信**
- **EME 回線計算 八木** – バンドごとに保存される回線計算：6 つの指標（交信可能か、自局 EIRP、DX の EIRP、伝搬損失、S/N 自局 → DX と DX → 自局、太陽ありと 2500 Hz 換算も）、全ステップの表、局の対話型ブロック図（アンテナ、ケーブル、リレー、プリアンプ、トランスバーター、無線機）。仰角のないアンテナのグラウンドゲイン。周期 60 s のモード：JT65、Q65-60A、Q65-60B、Q65-60C とカスタム。エコー計算（*自局送信 → 自局エコー受信*）：エコーのレベル、遅延、ドップラー。
- **EME 回線計算 パラボラ** – 同じ回線計算（エコーを含む）を、432、902、1296 MHz のパラボラアンテナ（プライムフォーカスまたはオフセット、W2IMU）に適用：PE1RKI の式による利得、ビーム幅 70·λ/D、1 段または 2 段のプリアンプ、トランスバーターと PA のドライブ。23 cm では損失 0.4 dB の円偏波（KA1GT）。
- **GRAVES レーダー** – フランスの GRAVES レーダー（143.050 MHz）を試験台として使用：月がそのビーム内かつアンテナの制限内にあるとき、ドップラーとエコー遅延付き。
- **太陽雑音** – RSTN 網（NOAA）が測定した太陽フラックスをダウンロードし、新月付近で太陽が受信雑音をどれだけ上げるかを推定します。
- **計算結果を Excel へエクスポート** と **計算のチェック** – 回線計算を Excel シートとして出力し、すべての式を値を代入して一歩ずつ表示。八木またはパラボラの回線計算を選べます。

**ログ、ヘルプ、ツール**
- **WWL・ADIF 地図** – ADIF ファイルから、または LoTW から直接ダウンロードした交信済み・確認済みのグリッドを Maidenhead 格子上に表示。バンド別や EME のみの表示も可能。
- **取扱説明書** と **EME の理論とアドバイス** – プログラム内蔵の完全なマニュアル（全言語）。クリックできる目次、検索、数式、出典付きで、Word に書き出せます。理論マニュアルには経験豊富な EME 運用者のアドバイス、インターネットのチャットに関する節、VE7BQH のアンテナ表が含まれます。
- **同軸ケーブル** – 50 Ω ケーブルのデータベース。50～1296 MHz の減衰量（データシートの値と式 α = k1·√f + k2·f）と各値の出典付き。並べ替え・絞り込み、損失計算、ケーブルを EME 回線計算に送るボタンがあります。独自のケーブルも追加できます。

**その他**
- W7GJ と WSJT-X Improved からダウンロードして統合し、7 日ごとに更新、必要に応じて WSJT-X にコピーする CALL3.TXT。
- 局が極圏の外側やオーロラ帯にあるときの極冠吸収・オーロラ吸収（PCA）の警告。
- 37 言語。ライト、ナイト（青）、ブラック、8 種類のパステル、IP-TRX-CTRL の 3 配色（青、紫、緑）。
- 月の位置の精度は約 0.01°（Meeus、ELP-2000/82）。すべての計算はあなたのパソコン上で行い、データは一つの `data` フォルダーにまとめます。

### 한국어


YAEC는 50, 70, 144, 222, 432, 902 MHz와 23 cm(1296 MHz)에서 EME(지구–달–지구) 운용에 필요한 모든 것을 하나의 프로그램에 모았습니다. 특히 앙각이 없는 안테나, 회전 범위가 제한된 로테이터, 하늘 일부를 가리는 장애물처럼 제약이 있는 국에 유용합니다. 달이 어디 있는지뿐 아니라 **당신의** 안테나가 정말 달에 닿을 수 있는지, 언제, 어떤 조건에서인지 알려 줍니다. 432 MHz 이상의 밴드는 아직 보완 중이지만 DGRD는 이미 모든 주파수에서 올바르게 계산됩니다. 900 MHz 이상을 처음 시작하는 분을 위한 조언도 추가될 예정입니다.

**실시간**
- **실시간 위치 및 +- 24h** – 매초 갱신되는 주 화면: 내 로케이터와 DX 로케이터(4~14자), 주파수, UTC·현지·DX 시계, 카운트다운이 있는 상태 띠(지향 가능, 한계 밖, 지평선 아래, 공통 창), 나침반과 앙각 호. DX 호출 부호를 입력하면 로케이터가 CALL3.TXT에서 채워집니다.
- **내 장애물 정찰** – 내 국을 중심으로 한 항공 사진 또는 지형도 위에 하늘을 겹쳐 표시: 달의 위치, 다음 24시간 경로, 월출과 월몰, 마우스로 끌어 조정하는 안테나 한계.
- **내 지평선** – *지형 지평선*: SRTM1 고도 데이터(약 30 m)로 지구 곡률과 굴절을 고려해 계산한 국 주변 지형의 파노라마를 천구(세 가지 색상) 또는 하늘색 하늘 위에 표시합니다. 달의 경로, 지형 위의 출몰, OpenStreetMap 이름이 붙은 주요 장애물, 잃는 달의 분. 확인란 하나로 지형을 프로그램 전체의 최소 앙각으로 사용합니다. *국지 잡음 지도(NJ9R)*: 안테나를 돌리며 WSJT-X에서 본 잡음을 입력하는 방위각 × 앙각 격자; 달이 잡음이 많은 방향에 있는 시간에는 ⚠ 표시.
- **하늘 보기** – 내 QTH에서 본 하늘을 사용 주파수의 하늘 잡음 색으로 보여 주며, 안테나 한계, DX의 지평선, 전파원, 태양과 달의 경로를 표시합니다.

**계획**
- **거리와 Dgrd** – 7~61일간의 Dgrd와 달의 평균 거리, 적위 겹쳐 보기, 근지점, 원지점, 신월, 최고의 3일(날짜순), 가능한 네 번째 유효일, 달이 태양에 가까운 날의 경고. 내 한계 안에서 달을 정말 지향할 수 있는 시간만 셉니다.
- **주파수별 DGRD** – 내 국의 실제 잡음과 안테나 빔에서 평균한 하늘을 사용한 운용 주파수의 Dgrd를 일반적인 WSJT-X 계산과 비교합니다. 선택은 프로그램 전체에 적용됩니다.
- **시도해 볼 국** – 선택한 날에 N0UK EME 채팅에서 활동하며 공통 창이 있는 국(144 MHz)을 로케이터 필드마다 가장 좋은 한 국씩, 양방향 S/N에서 구한 0~100 지수로 정렬합니다. DX의 설비는 채팅에 쓴 내용에서 읽습니다. 매우 대략적인 예시 계산이며, 아이디어는 Matteo IW5DHN입니다.
- **달의 위치** – 선택한 기간의 표를 지향 가능 여부에 따라 색으로 표시하고, 나와 DX의 공통 창을 보여 줍니다. Excel용 CSV 내보내기.
- **세계 위의 달** – 각 지역에서 본 달의 앙각으로 색칠한 세계 지도. 클릭하면 그 지점이 DX가 됩니다.

**교신**
- **EME 링크 버짓 야기** – 밴드별로 저장되는 링크 버짓: 6개 지표(교신 가능 여부, 내 EIRP, DX EIRP, 경로 손실, S/N 나 → DX와 DX → 나, 태양 포함 및 2500 Hz 기준), 모든 단계의 표, 국의 대화형 계통도(안테나, 케이블, 릴레이, 프리앰프, 트랜스버터, 무선기). 앙각 없는 안테나의 그라운드 게인. 60 s 주기 모드: JT65, Q65-60A, Q65-60B, Q65-60C, 사용자 지정. 에코 계산(*내가 송신하고 내 에코를 수신*): 에코의 레벨, 지연, 도플러.
- **EME 링크 버짓 파라볼라** – 같은 버짓(에코 포함)을 432, 902, 1296 MHz의 파라볼라 안테나(주초점 또는 오프셋, W2IMU)에 적용: PE1RKI 공식에 의한 이득, 빔폭 70·λ/D, 1단 또는 2단 프리앰프, 트랜스버터와 PA 구동. 23 cm에서는 손실 0.4 dB의 원편파(KA1GT).
- **GRAVES 레이더** – 프랑스 GRAVES 레이더(143.050 MHz)를 시험대로 사용: 달이 레이더 빔 안에 있고 내 안테나 한계 안에 있는 때를 도플러와 에코 지연과 함께 보여 줍니다.
- **태양 잡음** – RSTN 망(NOAA)이 측정한 태양 플럭스를 내려받아, 신월 무렵 태양이 수신기 잡음을 얼마나 올리는지 추정합니다.
- **계산 결과 Excel 내보내기**와 **계산 검증** – 버짓을 Excel 시트로 내보내고, 모든 공식을 값을 대입하여 단계별로 보여 줍니다. 야기 또는 파라볼라 버짓을 선택할 수 있습니다.

**로그, 도움말, 도구**
- **WWL 지도와 ADIF** – ADIF 파일이나 LoTW에서 직접 내려받은 교신·확인 그리드를 Maidenhead 격자에 표시합니다. 밴드별, EME만 보기도 가능합니다.
- **사용 설명서**와 **EME 이론과 조언** – 프로그램에 내장된 모든 언어의 완전한 설명서로, 클릭 가능한 목차, 검색, 공식, 출처가 있으며 Word로 내보낼 수 있습니다. 이론 설명서에는 숙련된 EME 운용자의 조언, 인터넷 채팅에 관한 절, VE7BQH 안테나 표가 들어 있습니다.
- **동축 케이블** – 50 Ω 케이블 데이터베이스로, 50~1296 MHz의 감쇠(데이터시트 값과 공식 α = k1·√f + k2·f)와 각 값의 출처를 담고 있습니다. 정렬·필터, 손실 계산, 케이블을 EME 버짓으로 보내는 버튼이 있으며, 직접 케이블을 추가할 수 있습니다.

**그 밖에**
- W7GJ와 WSJT-X Improved에서 내려받아 합치고 7일마다 갱신하며, 요청하면 WSJT-X로 복사하는 CALL3.TXT.
- 국이 극권 너머나 오로라대에 있을 때 극관 흡수와 오로라 흡수(PCA) 경고.
- 37개 언어; 밝은, 야간(파랑), 검정, 8가지 파스텔과 IP-TRX-CTRL의 3가지(파랑, 보라, 초록) 색 구성.
- 약 0.01° 정확도의 달 위치(Meeus, ELP-2000/82), 모든 계산은 내 컴퓨터에서 수행하며 데이터는 하나의 `data` 폴더에 저장합니다.

## Version history

From the first stable version (1.0) to the current one; the full history, including the beta versions, is in the program (*Help and tools*) and in the README of every language in the [`lingue`](lingue) folder.

<details><summary><b>English</b> – Version history</summary>

- **1.9.1** – Automatic update from GitHub, with SHA-256 fingerprint check, on Windows, with the portable archives (Linux, FreeBSD, OpenBSD, Alpine), the AppImage and the macOS app (the .deb, .rpm, Arch, Slackware packages are updated with the package manager), and warning about missing files; new packages for Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; CORRECT button to correct a station's locator in CALL3.TXT; Distance and Dgrd with the classic Dgrd at 144 MHz, while the per-band Dgrd stays in DGRD by frequency; My horizon with the violet boxes of Sky view and the time taken from the planning table; Stations to try with the time from the table, a scroll bar and the option to leave out the stations of your own country (cty.dat); Yagi gain from the DL6WU table (G3SEK), with the formula attributed to W8IO only below 10 elements; drop-down lists and numeric boxes in the YA-MS style; 144 MHz transverters in the manual.
- **1.9** – New tab My horizon (Live): horizon from the terrain computed from SRTM1 data with Earth curvature and refraction, over the Sky view background in one of the three colour scales, Moon path, main obstacles with OpenStreetMap names and minutes of Moon lost; checkbox to use the terrain as minimum elevation throughout the program; local noise map after NJ9R, with ⚠ in the hours when the Moon is in a noisy direction; new tab Stations to try (Planning), idea by Matteo IW5DHN: the active stations of the N0UK chat ranked by an index from 0 to 100; numeric boxes with side-by-side arrows, pill-shaped tabs and three new colour schemes taken from IP-TRX-CTRL.
- **1.8** – New Slovak language (37 in total), with the manuals, the README and the licence; one beamwidth throughout the program: 0.93·√(41253/G) for Yagis (Kraus's rule corrected with W4RNL's NEC simulations, as in YA-MS) and 70·λ/D for dishes (IZ0JNY), replacing the unsourced √(32000/G) in DGRD by frequency; manual updated with the new formula and the pointing example; on macOS the launcher starts XQuartz by itself, writes the Mono version to the log and warns if YAEC does not start; README presentation also in Portuguese, Turkish, Czech, Slovak, Chinese, Japanese and Korean; translations corrected in Thai, Romanian, Greek, Brazilian Portuguese, Polish, Czech and Hungarian.
- **1.7** – Eight new languages: Brazilian Portuguese, Thai, Traditional Chinese, Polish, Czech, Romanian, Greek and Hungarian (36 in all), with the manuals and the READMEs; in EME budget Yagi and EME budget dishes, the echo calculation for your own station (I transmit and receive my own echo); prime-focus or offset dish (W2IMU); at 1296 MHz with dishes, the circular polarization loss of real feeds (KA1GT); in Calculation check, the choice between EME budget Yagi and EME budget dishes; formulas of DGRD by frequency written as in an equation editor; manual: Faraday rotation at 1296 MHz according to ITU-R P.531, depolarization at 23 cm (Hagfors) and circular polarization on 23 cm.
- **1.6** – 902 MHz and 23 cm (1296 and 1298 MHz) bands throughout the program, with all the bands in the MHz drop-down list; the EME budget tab becomes EME budget Yagi and there is the new EME budget dishes tab (prime-focus dish, gain with the PE1RKI formula, preamplifier also with two stages, transverter and PA drive); new DGRD by frequency tab, with the real noise of the station and the sky averaged over the beam, used throughout the program; coaxial cables calculated with the formula α = k1·√f + k2·f from the datasheet data, also at 902 and 1296 MHz; new style of the controls in all tabs; in Live position and +- 24h, the tooltip on the red cursor and the red DX lines at the cursor time; manual revised after comparing the sources (path loss band by band, thresholds of Q65-60B and Q65-60C, ground gain according to IK1UWL's measurements, connectors, Dgrd of other programs, dishes above 432 MHz); packages for every architecture (Windows x64 and x86, Linux x64, arm64 and arm, macOS Apple Silicon and Intel); thanks to Robert HA5OLA. The bands above 432 MHz are still being completed.
- **1.5** – New GRAVES radar tab in the Link group: Moon in the radar beam with sector and step, common window with you, Doppler and delay of the echo, next beam pass on the Moon, sky seen from GRAVES, reconstruction of the 24 UTC hours with the detail of the next 10 seconds, tips for hearing the echo and sources; list of active stations also in JSON and text for LunaCalc Mobile; two new languages, Danish and Tagalog (28 in all), with the manuals.
- **1.4** – Active stations: the DX callsign box gets an orange border if the station has written in the N0UK EME chat in the last 90 days, with the date of the last message in the tooltip; Font type with 10 recommended fonts for Windows, Linux and macOS, tested tab by tab; packages for 32-bit Windows and for Raspberry Pi (arm64); Sky view with dashed purple boxes around the area you can point at; Distance and Dgrd with the fourth useful day and the chosen day also selectable with a click in the chart; number boxes with a rounded frame and the arrows one above the other; dialog buttons at the edges (left, centre, right); acknowledgements box at full width; in narrow windows IN-DEPTH CALCULATIONS goes on two lines and no text ends up under the buttons.
- **1.3** – Nine new languages: Dutch, Estonian, Latvian, Lithuanian, Swedish, Norwegian, Icelandic, Hebrew and Urdu (26 in all), with the manuals; licence and README in all languages, licence in the installer's language; GRAVES button; TX connectors and RX connectors in the EME budget (advice from NJ9R); draggable splitter between the left column and the EME budget diagram; Grey veil checkbox in Reconnaissance of my obstacles; FORMULA DEBUG becomes Calculation check and ABOUT & CREDITS is now translated in every language; technical chapters of the user manual in Bengali, Arabic and Turkish; pastel schemes fixed; the CALL3.TXT window closes by itself after the update; dialog box buttons spaced out.
- **1.2.1** – The AUTHOR CONTACTS AND ACKNOWLEDGEMENTS page opens correctly again on Linux and macOS; the reference for the transverters points to § 1.7.1.
- **1.2** – EME budget with the indicators My EIRP, DX EIRP, path loss and S/N in both directions (with the Sun); Word document formulas in a single size, within the margins; filled buttons and flat drop-down lists with rounded borders in all schemes; eight pastel colour schemes; value boxes with side-by-side arrows; the three best days in date order; blurred sky background; FORMULA DEBUG translated; THEORY AND TIPS ON EME manual with the advice of Relu NJ9R (GRAVES, pointing, connectors, antenna gain, JT65B and MAP65, polarization relay), the new sections on the first reception and on internet chats, and the VE7BQH tables in the preface; thanks to NJ9R, the memory of IK1UWL and the authors of articles, hardware and software, with a tooltip on their works.
- **1.1** – Live position and +- 24h (formerly Tracking) also in the past and in the future: day from the calendar and time by dragging the red line, frequency in the Echo and frequencies box; DX callsign box with CALL3.TXT downloaded from W7GJ and WSJT-X Improved and merged, suggested locator and copy into the WSJT-X folder; Distance and Dgrd without the ranking, with the declination overlaid, rows colored like the chart and optional green usable hours; tickboxes in the program's style; cables sorted by diameter in the drop-down lists and by name, manufacturer and type in the table, with translated sources; EME budget with only the 60 s modes (JT65, Q65-60A, Q65-60B, Q65-60C) and a station diagram that adapts to the texts; USER MANUAL reviewing every screen; THEORY AND TIPS ON EME with the author's preface, numbering from 1 and the solar noise formulas; HTTPS on Linux and macOS with the system certificates.
- **1.0.1** – The GitHub release page now has the file SHA256SUMS.txt with the SHA-256 fingerprints of all the packages: use them to check that the downloaded files are the original ones (instructions in the README).
- **1.0** – First stable version, for Windows, Linux and macOS (Linux and macOS with Mono; data in ~/.local/share/YAEC/data or in ~/Library/Application Support/YAEC/data); Windows installer and Linux and macOS packages built on GitHub; earlier versions are called beta. New Moon over the world tab (Moon elevation over the land areas of the whole world, DX station with one click, status of your antenna); manual split into IN-DEPTH USER MANUAL and THEORY AND TIPS ON EME; Help and tools and Credits and thanks groups; Export calculations to Excel tab; no more mode margin: S/N in 2500 Hz with the typical threshold as reference and the JT65 limits in the manual; the manual also has the Q65 table for TX1 – TX6, Faraday rotation and the summary of the SM5BSZ article; cable table sortable by loss, with new Messi & Paoloni, SSB (SeaTex for marine environments, Aircom Premium), Belden and Tasker cables; boxes with a unit no longer show leftover text.

</details>

<details><summary><b>Italiano</b> – Storia delle versioni</summary>

- **1.9.1** – Aggiornamento automatico da GitHub, con controllo dell'impronta SHA-256, su Windows, con gli archivi portatili (Linux, FreeBSD, OpenBSD, Alpine), con l'AppImage e con l'app per macOS (i pacchetti .deb, .rpm, Arch e Slackware si aggiornano con il gestore dei pacchetti), e avviso dei file mancanti; nuovi pacchetti per Windows ARM64, Fedora e openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS a 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686 e AppImage; pulsante CORREGGI per correggere il locator di una stazione nel CALL3.TXT; Distanza e Dgrd con la Dgrd classica a 144 MHz, mentre la Dgrd per banda resta in DGRD per frequenza; Il mio orizzonte con i riquadri viola della Volta celeste e il momento preso dalla tabella di pianificazione; Stazioni da provare con il momento della tabella, la barra di scorrimento e l'esclusione delle stazioni del proprio paese (cty.dat); guadagno delle yagi dalla tabella di DL6WU (G3SEK), con la formula attribuita a W8IO solo sotto i 10 elementi; tendine e caselle numeriche nello stile di YA-MS; transverter per i 144 MHz nel manuale.
- **1.9** – Nuova linguetta Il mio orizzonte (In diretta): orizzonte dal terreno calcolato dai dati SRTM1 con curvatura terrestre e rifrazione, sullo sfondo della Volta celeste con una delle tre colorazioni, percorso della Luna, ostacoli principali con i nomi di OpenStreetMap e minuti di Luna persi; casella per usare il terreno come elevazione minima in tutto il programma; mappa del rumore locale secondo NJ9R, con ⚠ nelle ore in cui la Luna è in una direzione rumorosa; nuova linguetta Stazioni da provare (Pianificazione), idea di Matteo IW5DHN: le stazioni attive della chat N0UK ordinate con un indice da 0 a 100; caselle numeriche con le frecce affiancate, linguette a pillola e tre nuovi schemi di colori presi da IP-TRX-CTRL.
- **1.8** – Nuova lingua slovacca (37 in tutto), con i manuali, il LEGGIMI e la licenza; larghezza del fascio unica in tutto il programma: 0,93·√(41253/G) per le yagi (regola di Kraus corretta con le simulazioni NEC di W4RNL, come in YA-MS) e 70·λ/D per i dischi (IZ0JNY), al posto di √(32000/G) senza fonte nella DGRD per frequenza; manuale aggiornato con la nuova formula e l'esempio del puntamento; su macOS l'avvio apre da solo XQuartz, scrive la versione di Mono nel registro e avvisa se YAEC non parte; presentazione del README anche in portoghese, turco, ceco, slovacco, cinese, giapponese e coreano; traduzioni corrette in thailandese, rumeno, greco, portoghese brasiliano, polacco, ceco e ungherese.
- **1.7** – Otto lingue nuove: portoghese brasiliano, thailandese, cinese tradizionale, polacco, ceco, rumeno, greco e ungherese (36 in tutto), con i manuali e i LEGGIMI; nel Budget EME yagi e nel Budget EME dischi il calcolo dell'eco della propria stazione (io trasmetto e ricevo il mio eco); disco a primo fuoco oppure offset (W2IMU); a 1296 MHz con i dischi la perdita della polarizzazione circolare degli illuminatori reali (KA1GT); nel Controllo dei calcoli la scelta tra Budget EME yagi e Budget EME dischi; formule della DGRD per frequenza scritte come in un editor di equazioni; manuale: rotazione di Faraday a 1296 MHz secondo ITU-R P.531, depolarizzazione a 23 cm (Hagfors) e polarizzazione circolare in 23 cm.
- **1.6** – Bande 902 MHz e 23 cm (1296 e 1298 MHz) in tutto il programma, con tutte le bande nella tendina dei MHz; la linguetta Budget EME diventa Budget EME yagi e c'è la nuova linguetta Budget EME dischi (disco a primo fuoco, guadagno con la formula di PE1RKI, preamplificatore anche a due stadi, transverter e pilotaggio del PA); nuova linguetta DGRD per frequenza, con il rumore vero della stazione e il cielo mediato sul fascio, usata in tutto il programma; cavi coassiali calcolati con la formula α = k1·√f + k2·f dai dati delle schede, anche a 902 e 1296 MHz; nuovo stile dei comandi in tutte le linguette; nella Posizione live e +- 24h il fumetto sul cursore rosso e le linee rosse del DX all'ora del cursore; manuale rivisto dopo il confronto delle fonti (perdita di tratta banda per banda, soglie del Q65-60B e del Q65-60C, ground gain secondo le misure di IK1UWL, connettori, Dgrd degli altri programmi, dischi sopra i 432 MHz); pacchetti per ogni architettura (Windows x64 e x86, Linux x64, arm64 e arm, macOS Apple Silicon e Intel); ringraziamenti a Robert HA5OLA. Le bande sopra i 432 MHz sono in fase di completamento.
- **1.5** – Nuova linguetta Radar GRAVES nel gruppo Collegamento: Luna nel fascio del radar con settore e passo, finestra comune con te, Doppler e ritardo dell'eco, prossimo passaggio del fascio sulla Luna, cielo visto da GRAVES, ricostruzione delle 24 ore UTC con il dettaglio dei prossimi 10 secondi, consigli per ascoltare l'eco e fonti; elenco delle stazioni attive anche in JSON e in testo per LunaCalc Mobile; due lingue nuove, danese e tagalog (28 in tutto), con i manuali.
- **1.4** – Stazioni attive: la casella del nominativo del DX ha il bordo arancione se la stazione ha scritto nella chat EME di N0UK negli ultimi 90 giorni, con la data dell'ultimo messaggio nel fumetto; Tipo di carattere con 10 caratteri consigliati per Windows, Linux e macOS, provati linguetta per linguetta; pacchetti per Windows a 32 bit e per Raspberry Pi (arm64); Volta celeste con i riquadri viola tratteggiati della zona puntabile; Distanza e Dgrd con il quarto giorno utile e il giorno scelto anche con un clic nel grafico; caselle dei numeri con la cornice arrotondata e le frecce una sopra l'altra; pulsanti delle finestre ai bordi (a sinistra, al centro, a destra); riquadro dei ringraziamenti a tutta larghezza; nelle finestre strette CALCOLI APPROFONDITI va su due righe e nessuna scritta finisce sotto i pulsanti.
- **1.3** – Nove lingue nuove: olandese, estone, lettone, lituano, svedese, norvegese, islandese, ebraico e urdu (26 in tutto), con i manuali; licenza e LEGGIMI in tutte le lingue, licenza nella lingua dell'installatore; pulsante GRAVES; Connettori in TX e Connettori in RX nel Budget EME (consiglio di NJ9R); separatore trascinabile tra la colonna sinistra e lo schema del Budget EME; casella del velo grigio nella Ricognizione dei miei ostacoli; DEBUG FORMULE diventa Controllo dei calcoli e ABOUT & CREDITS diventa INFORMAZIONI E CREDITI; capitoli tecnici del manuale d'uso in bengalese, arabo e turco; schemi pastello corretti; la finestra del CALL3.TXT si chiude da sola dopo l'aggiornamento; pulsanti delle finestre di dialogo distanziati.
- **1.2.1** – La pagina CONTATTI DELL'AUTORE E RINGRAZIAMENTI si apre di nuovo correttamente su Linux e macOS; il rimando per i transverter indica il § 1.7.1.
- **1.2** – Budget EME con gli indicatori EIRP mia, EIRP del DX, perdita di tratta e S/N nei due sensi (con il Sole); formule del documento Word di una sola grandezza, dentro i margini; pulsanti pieni e menu a tendina piatti con bordo arrotondato in tutti gli schemi; otto schemi di colori pastello; caselle dei valori con le frecce affiancate; i tre giorni migliori in ordine di data; sfondo del cielo sfocato; DEBUG FORMULE tradotto; manuale TEORIA E CONSIGLI SULL'EME con i consigli di Relu NJ9R (GRAVES, puntamento, connettori, guadagno delle antenne, JT65B e MAP65, relè di polarizzazione), i nuovi paragrafi sulla prima ricezione e sulle chat via Internet e le tabelle di VE7BQH nella prefazione; ringraziamenti a NJ9R, il ricordo di IK1UWL e gli autori di articoli, hardware e software, con il fumetto delle loro opere.
- **1.1** – Posizione live e +- 24h (ex Tracciamento) anche nel passato e nel futuro: giorno dal calendario e ora trascinando la linea rossa, frequenza nel riquadro Eco e frequenze; casella del nominativo del DX con il CALL3.TXT scaricato da W7GJ e da WSJT-X Improved e fuso, locator proposto e copia nella cartella di WSJT-X; Distanza e Dgrd senza classifica, con la declinazione sovrapposta, righe colorate come il grafico e ore utili in verde a scelta; caselle di spunta nello stile del programma; cavi ordinati per diametro nelle tendine e per nome, costruttore e tipo nella tabella, con fonti tradotte; Budget EME con i soli modi a 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) e schema dell'impianto che si adatta ai testi; MANUALE D'USO con la rassegna di tutte le schermate; TEORIA E CONSIGLI SULL'EME con la prefazione dell'autore, numerazione da 1 e formule del rumore solare; HTTPS su Linux e macOS con i certificati del sistema.
- **1.0.1** – Nella pagina della release su GitHub c'è il file SHA256SUMS.txt con le impronte SHA-256 di tutti i pacchetti: servono a verificare che i file scaricati siano proprio quelli originali (istruzioni nel README).
- **1.0** – Prima versione stabile, per Windows, Linux e macOS (Linux e macOS con Mono; i dati in ~/.local/share/YAEC/data o in ~/Library/Application Support/YAEC/data); installatore per Windows e pacchetti per Linux e macOS creati su GitHub; le versioni precedenti si chiamano beta. Nuova linguetta Luna sul mondo (elevazione della Luna sulle terre emerse di tutto il mondo, stazione DX con un clic, stato della tua antenna); manuale diviso in MANUALE D'USO APPROFONDITO e TEORIA E CONSIGLI SULL'EME; gruppi Aiuto e tools e Credits and thanks; linguetta Export in Excel dei calcoli; niente più margine sul modo: S/N in 2500 Hz con la soglia tipica come riferimento e i limiti del JT65 nel manuale; nel manuale anche la tabella del Q65 per TX1 – TX6, la rotazione di Faraday e la sintesi dell'articolo di SM5BSZ; tabella dei cavi ordinabile per perdita, con nuovi cavi Messi & Paoloni, SSB (SeaTex per ambienti marini, Aircom Premium), Belden e Tasker; caselle con l'unità senza scritte residue.

</details>

<details><summary><b>Deutsch</b> – Versionsgeschichte</summary>

- **1.9.1** – Automatisches Update von GitHub mit Prüfung des SHA-256-Fingerabdrucks unter Windows, bei den portablen Archiven (Linux, FreeBSD, OpenBSD, Alpine), beim AppImage und bei der macOS-App (die Pakete .deb, .rpm, Arch, Slackware werden mit der Paketverwaltung aktualisiert) und Hinweis auf fehlende Dateien; neue Pakete für Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; Schaltfläche KORRIGIEREN, um den Locator einer Station in CALL3.TXT zu korrigieren; Entfernung und Dgrd mit der klassischen Dgrd bei 144 MHz, die Dgrd je Band bleibt in DGRD nach Frequenz; Mein Horizont mit den violetten Rahmen aus Himmelsansicht und dem Zeitpunkt aus der Planungstabelle; Stationen zum Ausprobieren mit dem Zeitpunkt aus der Tabelle, Bildlaufleiste und Ausschluss der Stationen des eigenen Landes (cty.dat); Yagi-Gewinn aus der DL6WU-Tabelle (G3SEK), die W8IO zugeschriebene Formel nur unter 10 Elementen; Auswahllisten und Zahlenfelder im YA-MS-Stil; 144-MHz-Transverter im Handbuch.
- **1.9** – Neuer Reiter Mein Horizont (Live): Horizont aus dem Gelände, berechnet aus SRTM1-Daten mit Erdkrümmung und Refraktion, vor dem Hintergrund der Himmelsansicht in einer der drei Farbskalen, Mondbahn, Haupthindernisse mit Namen aus OpenStreetMap und verlorene Mondminuten; Kästchen, um das Gelände im ganzen Programm als Mindestelevation zu verwenden; Karte des lokalen Rauschens nach NJ9R, mit ⚠ in den Stunden, in denen der Mond in einer verrauschten Richtung steht; neuer Reiter Stationen zum Ausprobieren (Planung), Idee von Matteo IW5DHN: die aktiven Stationen des N0UK-Chats, geordnet nach einem Index von 0 bis 100; Zahlenfelder mit nebeneinander liegenden Pfeilen, Reiter in Pillenform und drei neue Farbschemata aus IP-TRX-CTRL.
- **1.8** – Neue Sprache Slowakisch (37 insgesamt), mit den Handbüchern, der README und der Lizenz; eine einzige Keulenbreite im ganzen Programm: 0,93·√(41253/G) für Yagis (Kraus-Regel, korrigiert mit den NEC-Simulationen von W4RNL, wie in YA-MS) und 70·λ/D für Spiegel (IZ0JNY), statt des quellenlosen √(32000/G) in DGRD nach Frequenz; Handbuch mit der neuen Formel und dem Ausrichtungsbeispiel aktualisiert; unter macOS startet der Starter XQuartz selbst, schreibt die Mono-Version ins Protokoll und warnt, wenn YAEC nicht startet; README-Vorstellung auch auf Portugiesisch, Türkisch, Tschechisch, Slowakisch, Chinesisch, Japanisch und Koreanisch; Übersetzungen in Thai, Rumänisch, Griechisch, brasilianischem Portugiesisch, Polnisch, Tschechisch und Ungarisch korrigiert.
- **1.7** – Acht neue Sprachen: brasilianisches Portugiesisch, Thailändisch, traditionelles Chinesisch, Polnisch, Tschechisch, Rumänisch, Griechisch und Ungarisch (insgesamt 36), mit den Handbüchern und den LIESMICH; im EME-Budget Yagi und im EME-Budget Spiegel die Berechnung des Echos der eigenen Station (Ich sende und empfange mein eigenes Echo); Primärfokus- oder Offsetspiegel (W2IMU); bei 1296 MHz mit Spiegeln der Verlust durch die zirkulare Polarisation realer Erreger (KA1GT); in der Rechenkontrolle die Wahl zwischen EME-Budget Yagi und EME-Budget Spiegel; Formeln von DGRD nach Frequenz wie in einem Formeleditor geschrieben; Handbuch: Faraday-Rotation bei 1296 MHz nach ITU-R P.531, Depolarisation auf 23 cm (Hagfors) und zirkulare Polarisation auf 23 cm.
- **1.6** – Bänder 902 MHz und 23 cm (1296 und 1298 MHz) im ganzen Programm, mit allen Bändern in der MHz-Auswahlliste; der Reiter EME-Budget wird zu EME-Budget Yagi, und es gibt den neuen Reiter EME-Budget Spiegel (Primärfokusspiegel, Gewinn mit der Formel von PE1RKI, Vorverstärker auch zweistufig, Transverter und Ansteuerung der PA); neuer Reiter DGRD nach Frequenz, mit dem tatsächlichen Rauschen der Station und dem über die Keule gemittelten Himmel, im ganzen Programm verwendet; Koaxialkabel mit der Formel α = k1·√f + k2·f aus den Datenblattwerten berechnet, auch bei 902 und 1296 MHz; neuer Stil der Bedienelemente in allen Reitern; in Position live und +- 24h der Tooltip am roten Cursor und die roten Linien des DX zur Uhrzeit des Cursors; Handbuch nach dem Vergleich der Quellen überarbeitet (Streckendämpfung Band für Band, Schwellen von Q65-60B und Q65-60C, Bodengewinn nach den Messungen von IK1UWL, Stecker, Dgrd anderer Programme, Parabolspiegel oberhalb 432 MHz); Pakete für jede Architektur (Windows x64 und x86, Linux x64, arm64 und arm, macOS Apple Silicon und Intel); Dank an Robert HA5OLA. Die Bänder oberhalb 432 MHz werden noch vervollständigt.
- **1.5** – Neuer Reiter GRAVES-Radar in der Gruppe Verbindung: Mond im Radarstrahl mit Sektor und Schritt, gemeinsames Fenster mit dir, Doppler und Verzögerung des Echos, nächster Strahldurchgang über den Mond, Himmel von GRAVES aus gesehen, Rekonstruktion der 24 UTC-Stunden mit dem Detail der nächsten 10 Sekunden, Tipps zum Hören des Echos und Quellen; Liste der aktiven Stationen auch als JSON und Text für LunaCalc Mobile; zwei neue Sprachen, Dänisch und Tagalog (28 insgesamt), mit den Handbüchern.
- **1.4** – Aktive Stationen: Das Rufzeichenfeld des DX erhält einen orangen Rahmen, wenn die Station in den letzten 90 Tagen im EME-Chat von N0UK geschrieben hat, mit dem Datum der letzten Nachricht im Tooltip; Schriftart mit 10 empfohlenen Schriften für Windows, Linux und macOS, Reiter für Reiter geprüft; Pakete für 32-Bit-Windows und für Raspberry Pi (arm64); Himmelsansicht mit violett gestrichelten Rahmen um den anpeilbaren Bereich; Entfernung und Dgrd mit dem vierten nutzbaren Tag und dem gewählten Tag auch per Klick im Diagramm; Zahlenfelder mit abgerundetem Rahmen und übereinanderliegenden Pfeilen; Schaltflächen der Dialoge an den Rändern (links, Mitte, rechts); Danksagungsfeld in voller Breite; in schmalen Fenstern steht VERTIEFTE BERECHNUNGEN auf zwei Zeilen und kein Text liegt unter den Schaltflächen.
- **1.3** – Neun neue Sprachen: Niederländisch, Estnisch, Lettisch, Litauisch, Schwedisch, Norwegisch, Isländisch, Hebräisch und Urdu (insgesamt 26), mit den Handbüchern; Lizenz und LIESMICH in allen Sprachen, Lizenz in der Sprache des Installationsprogramms; Schaltfläche GRAVES; Stecker TX und Stecker RX im EME-Budget (Rat von NJ9R); verschiebbarer Trenner zwischen der linken Spalte und dem Schema des EME-Budgets; Kontrollkästchen Grauer Schleier in Erkundung meiner Hindernisse; FORMEL-DEBUG wird zu Rechenkontrolle und ABOUT & CREDITS wird zu INFO UND NACHWEISE; technische Kapitel des Benutzerhandbuchs auf Bengalisch, Arabisch und Türkisch; Pastell-Schemata korrigiert; das Fenster der CALL3.TXT schließt sich nach der Aktualisierung von selbst; Schaltflächen der Dialogfenster mit mehr Abstand.
- **1.2.1** – Die Seite KONTAKT ZUM AUTOR UND DANK öffnet sich unter Linux und macOS wieder korrekt; der Verweis für die Transverter zeigt auf § 1.7.1.
- **1.2** – EME-Budget mit den Anzeigen Meine EIRP, EIRP des DX, Streckendämpfung und S/N in beide Richtungen (mit der Sonne); Formeln des Word-Dokuments in einer einzigen Größe, innerhalb der Ränder; gefüllte Schaltflächen und flache Auswahllisten mit abgerundetem Rand in allen Schemata; acht Pastell-Farbschemata; Wertfelder mit nebeneinanderliegenden Pfeilen; die drei besten Tage nach Datum geordnet; unscharfer Himmelshintergrund; FORMEL-DEBUG übersetzt; Handbuch THEORIE UND TIPPS ZU EME mit den Ratschlägen von Relu NJ9R (GRAVES, Ausrichtung, Stecker, Antennengewinn, JT65B und MAP65, Polarisationsrelais), den neuen Abschnitten zum ersten Empfang und zu den Internet-Chats und den VE7BQH-Tabellen im Vorwort; Dank an NJ9R, Erinnerung an IK1UWL und an die Autoren von Artikeln, Hardware und Software, mit einem Tooltip zu ihren Werken.
- **1.1** – Position live und +- 24h (früher Verfolgung) auch in Vergangenheit und Zukunft: Tag aus dem Kalender und Uhrzeit durch Ziehen der roten Linie, Frequenz im Feld Echo und Frequenzen; Rufzeichenfeld des DX mit der CALL3.TXT von W7GJ und WSJT-X Improved, zusammengeführt, mit vorgeschlagenem Locator und Kopie in den WSJT-X-Ordner; Entfernung und Dgrd ohne Rangliste, mit überlagerter Deklination, Zeilen in den Farben des Diagramms und wahlweise grünen nutzbaren Stunden; Kontrollkästchen im Stil des Programms; Kabel in den Auswahllisten nach Durchmesser und in der Tabelle nach Name, Hersteller und Typ sortiert, mit übersetzten Quellen; EME-Budget nur mit den 60-s-Modi (JT65, Q65-60A, Q65-60B, Q65-60C) und einem Anlagenschema, das sich den Texten anpasst; BENUTZERHANDBUCH mit allen Bildschirmen; THEORIE UND TIPPS ZU EME mit dem Vorwort des Autors, Nummerierung ab 1 und den Formeln des Sonnenrauschens; HTTPS unter Linux und macOS mit den Zertifikaten des Systems.
- **1.0.1** – Auf der Release-Seite bei GitHub gibt es die Datei SHA256SUMS.txt mit den SHA-256-Prüfsummen aller Pakete: Damit lässt sich prüfen, ob die heruntergeladenen Dateien die Originale sind (Anleitung in der README).
- **1.0** – Erste stabile Version, für Windows, Linux und macOS (Linux und macOS mit Mono; Daten in ~/.local/share/YAEC/data bzw. in ~/Library/Application Support/YAEC/data); Installationsprogramm für Windows und Pakete für Linux und macOS auf GitHub erstellt; die früheren Versionen heißen beta. Neuer Reiter Mond über der Welt (Elevation des Mondes über den Landflächen der ganzen Welt, DX-Station mit einem Klick, Zustand Ihrer Antenne); Handbuch aufgeteilt in AUSFÜHRLICHES BENUTZERHANDBUCH und THEORIE UND TIPPS ZU EME; Gruppen Hilfe und Tools sowie Credits and thanks; Reiter Export der Berechnungen nach Excel; keine Betriebsartreserve mehr: S/N in 2500 Hz mit der typischen Schwelle als Bezug und die Grenzen von JT65 im Handbuch; im Handbuch außerdem die Q65-Tabelle für TX1 – TX6, die Faraday-Drehung und die Zusammenfassung des Artikels von SM5BSZ; Kabeltabelle nach Dämpfung sortierbar, mit neuen Kabeln von Messi & Paoloni, SSB (SeaTex für maritime Umgebungen, Aircom Premium), Belden und Tasker; Felder mit Einheit ohne Textreste.

</details>

<details><summary><b>Français</b> – Historique des versions</summary>

- **1.9.1** – Mise à jour automatique depuis GitHub, avec contrôle de l'empreinte SHA-256, sous Windows, avec les archives portables (Linux, FreeBSD, OpenBSD, Alpine), l'AppImage et l'application macOS (les paquets .deb, .rpm, Arch, Slackware se mettent à jour avec le gestionnaire de paquets), et avertissement des fichiers manquants ; nouveaux paquets pour Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage ; bouton CORRIGER pour corriger le locator d'une station dans CALL3.TXT ; Distance et Dgrd avec la Dgrd classique à 144 MHz, la Dgrd par bande restant dans DGRD par fréquence ; Mon horizon avec les cadres violets de Voûte céleste et l'instant pris dans le tableau de planification ; Stations à essayer avec l'instant du tableau, une barre de défilement et l'exclusion des stations de son propre pays (cty.dat) ; gain des yagis d'après la table de DL6WU (G3SEK), la formule attribuée à W8IO seulement sous 10 éléments ; listes déroulantes et cases numériques dans le style de YA-MS ; transverters 144 MHz dans le manuel.
- **1.9** – Nouvel onglet Mon horizon (En direct) : horizon du relief calculé à partir des données SRTM1 avec la courbure terrestre et la réfraction, sur le fond de la Voûte céleste dans l'une des trois échelles de couleurs, trajectoire de la Lune, principaux obstacles avec les noms d'OpenStreetMap et minutes de Lune perdues ; case pour utiliser le relief comme élévation minimale dans tout le programme ; carte du bruit local selon NJ9R, avec ⚠ aux heures où la Lune est dans une direction bruyante ; nouvel onglet Stations à essayer (Planification), idée de Matteo IW5DHN : les stations actives du chat N0UK classées par un indice de 0 à 100 ; champs numériques avec flèches côte à côte, onglets en forme de pilule et trois nouveaux schémas de couleurs repris d'IP-TRX-CTRL.
- **1.8** – Nouvelle langue slovaque (37 au total), avec les manuels, le LISEZMOI et la licence ; une seule largeur de faisceau dans tout le programme : 0,93·√(41253/G) pour les yagis (règle de Kraus corrigée par les simulations NEC de W4RNL, comme dans YA-MS) et 70·λ/D pour les paraboles (IZ0JNY), à la place de √(32000/G) sans source dans DGRD par fréquence ; manuel mis à jour avec la nouvelle formule et l'exemple de pointage ; sur macOS le lanceur ouvre XQuartz tout seul, écrit la version de Mono dans le journal et avertit si YAEC ne démarre pas ; présentation du README aussi en portugais, turc, tchèque, slovaque, chinois, japonais et coréen ; traductions corrigées en thaï, roumain, grec, portugais du Brésil, polonais, tchèque et hongrois.
- **1.7** – Huit nouvelles langues : le portugais brésilien, le thaï, le chinois traditionnel, le polonais, le tchèque, le roumain, le grec et le hongrois (36 en tout), avec les manuels et les LISEZMOI ; dans Bilan EME Yagi et dans Bilan EME paraboles, le calcul de l'écho de sa propre station (J'émets et je reçois mon propre écho) ; parabole à foyer primaire ou offset (W2IMU) ; à 1296 MHz avec les paraboles, la perte due à la polarisation circulaire des sources réelles (KA1GT) ; dans Contrôle des calculs, le choix entre Bilan EME Yagi et Bilan EME paraboles ; formules de DGRD par fréquence écrites comme dans un éditeur d'équations ; manuel : rotation de Faraday à 1296 MHz selon ITU-R P.531, dépolarisation sur 23 cm (Hagfors) et polarisation circulaire sur 23 cm.
- **1.6** – Bandes 902 MHz et 23 cm (1296 et 1298 MHz) dans tout le programme, avec toutes les bandes dans la liste déroulante des MHz ; l'onglet Bilan EME devient Bilan EME Yagi et il y a le nouvel onglet Bilan EME paraboles (parabole à foyer primaire, gain avec la formule de PE1RKI, préamplificateur aussi à deux étages, transverter et excitation du PA) ; nouvel onglet DGRD par fréquence, avec le bruit réel de la station et le ciel moyenné sur le lobe, utilisé dans tout le programme ; câbles coaxiaux calculés avec la formule α = k1·√f + k2·f à partir des données des fiches techniques, aussi à 902 et 1296 MHz ; nouveau style des commandes dans tous les onglets ; dans Position en direct et +- 24h, l'infobulle sur le curseur rouge et les lignes rouges du DX à l'heure du curseur ; manuel revu après la comparaison des sources (affaiblissement de trajet bande par bande, seuils du Q65-60B et du Q65-60C, gain de sol selon les mesures d'IK1UWL, connecteurs, Dgrd des autres programmes, paraboles au-dessus de 432 MHz) ; paquets pour chaque architecture (Windows x64 et x86, Linux x64, arm64 et arm, macOS Apple Silicon et Intel) ; remerciements à Robert HA5OLA. Les bandes au-dessus de 432 MHz sont en cours d'achèvement.
- **1.5** – Nouvel onglet Radar GRAVES dans le groupe Liaison : Lune dans le faisceau du radar avec secteur et pas, fenêtre commune avec toi, Doppler et retard de l'écho, prochain passage du faisceau sur la Lune, ciel vu de GRAVES, reconstitution des 24 heures UTC avec le détail des 10 prochaines secondes, conseils pour entendre l'écho et sources ; liste des stations actives aussi en JSON et en texte pour LunaCalc Mobile ; deux nouvelles langues, le danois et le tagalog (28 en tout), avec les manuels.
- **1.4** – Stations actives : la case de l'indicatif du DX reçoit une bordure orange si la station a écrit dans le chat EME de N0UK au cours des 90 derniers jours, avec la date du dernier message dans l'infobulle ; Type de police avec 10 polices recommandées pour Windows, Linux et macOS, testées onglet par onglet ; paquets pour Windows 32 bits et pour Raspberry Pi (arm64) ; Voûte céleste avec des cadres violets en pointillés autour de la zone pointable ; Distance et Dgrd avec le quatrième jour utile et le jour choisi aussi d'un clic dans le graphique ; cases numériques avec un cadre arrondi et les flèches l'une au-dessus de l'autre ; boutons des fenêtres aux bords (à gauche, au centre, à droite) ; cadre des remerciements sur toute la largeur ; dans les fenêtres étroites, CALCULS APPROFONDIS passe sur deux lignes et aucun texte ne finit sous les boutons.
- **1.3** – Neuf nouvelles langues : néerlandais, estonien, letton, lituanien, suédois, norvégien, islandais, hébreu et ourdou (26 au total), avec les manuels ; licence et LISEZMOI dans toutes les langues, licence dans la langue du programme d'installation ; bouton GRAVES ; Connecteurs TX et Connecteurs RX dans le Bilan EME (conseil de NJ9R) ; séparateur déplaçable entre la colonne de gauche et le schéma du Bilan EME ; case Voile gris dans Reconnaissance de mes obstacles ; DÉBOGAGE DES FORMULES devient Contrôle des calculs et ABOUT & CREDITS devient À PROPOS ET CRÉDITS ; chapitres techniques du manuel d'utilisation en bengali, arabe et turc ; thèmes pastel corrigés ; la fenêtre du CALL3.TXT se ferme d'elle-même après la mise à jour ; boutons des boîtes de dialogue espacés.
- **1.2.1** – La page CONTACTS DE L'AUTEUR ET REMERCIEMENTS s'ouvre de nouveau correctement sous Linux et macOS ; le renvoi pour les transverters indique le § 1.7.1.
- **1.2** – Bilan EME avec les indicateurs Ma PIRE, PIRE du DX, perte de trajet et S/B dans les deux sens (avec le Soleil) ; formules du document Word d'une seule taille, dans les marges ; boutons pleins et listes déroulantes plates à bord arrondi dans tous les thèmes ; huit thèmes de couleurs pastel ; cases de valeurs avec les flèches côte à côte ; les trois meilleurs jours dans l'ordre chronologique ; fond du ciel flou ; DÉBOGAGE DES FORMULES traduit ; manuel THÉORIE ET CONSEILS SUR L'EME avec les conseils de Relu NJ9R (GRAVES, pointage, connecteurs, gain des antennes, JT65B et MAP65, relais de polarisation), les nouvelles sections sur la première réception et sur les chats Internet, et les tableaux de VE7BQH dans la préface ; remerciements à NJ9R, souvenir d'IK1UWL et des auteurs d'articles, de matériel et de logiciels, avec une infobulle sur leurs travaux.
- **1.1** – Position en direct et +- 24h (ex Suivi) aussi dans le passé et le futur : jour choisi dans le calendrier et heure en faisant glisser la ligne rouge, fréquence dans le cadre Écho et fréquences ; case de l'indicatif du DX avec CALL3.TXT téléchargé depuis W7GJ et WSJT-X Improved et fusionné, locator proposé et copie dans le dossier de WSJT-X ; Distance et Dgrd sans classement, avec la déclinaison superposée, des lignes colorées comme le graphique et des heures utiles en vert au choix ; cases à cocher dans le style du programme ; câbles triés par diamètre dans les listes et par nom, fabricant et type dans le tableau, avec sources traduites ; Bilan EME avec les seuls modes à 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) et schéma de l'installation qui s'adapte aux textes ; MANUEL D'UTILISATION passant en revue tous les écrans ; THÉORIE ET CONSEILS SUR L'EME avec la préface de l'auteur, une numérotation à partir de 1 et les formules du bruit solaire ; HTTPS sous Linux et macOS avec les certificats du système.
- **1.0.1** – La page de la version sur GitHub contient le fichier SHA256SUMS.txt avec les empreintes SHA-256 de tous les paquets : elles servent à vérifier que les fichiers téléchargés sont bien les originaux (instructions dans le README).
- **1.0** – Première version stable, pour Windows, Linux et macOS (Linux et macOS avec Mono ; données dans ~/.local/share/YAEC/data ou dans ~/Library/Application Support/YAEC/data) ; installateur pour Windows et paquets pour Linux et macOS créés sur GitHub ; les versions précédentes s'appellent beta. Nouvel onglet La Lune sur le monde (élévation de la Lune au-dessus des terres émergées du monde entier, station DX en un clic, état de votre antenne) ; manuel divisé en MANUEL D'UTILISATION DÉTAILLÉ et THÉORIE ET CONSEILS SUR L'EME ; groupes Aide et outils et Credits and thanks ; onglet Export des calculs vers Excel ; plus de marge sur le mode : S/N dans 2500 Hz avec le seuil typique comme référence et les limites du JT65 dans le manuel ; dans le manuel aussi le tableau du Q65 pour TX1 – TX6, la rotation de Faraday et la synthèse de l'article de SM5BSZ ; tableau des câbles triable par perte, avec de nouveaux câbles Messi & Paoloni, SSB (SeaTex pour milieux marins, Aircom Premium), Belden et Tasker ; cases avec unité sans texte résiduel.

</details>

<details><summary><b>Español</b> – Historial de versiones</summary>

- **1.9.1** – Actualización automática desde GitHub, con comprobación de la huella SHA-256, en Windows, con los archivos portátiles (Linux, FreeBSD, OpenBSD, Alpine), con la AppImage y con la aplicación de macOS (los paquetes .deb, .rpm, Arch, Slackware se actualizan con el gestor de paquetes), y aviso de archivos que faltan; nuevos paquetes para Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; botón CORREGIR para corregir el locator de una estación en CALL3.TXT; Distancia y Dgrd con la Dgrd clásica a 144 MHz, mientras la Dgrd por banda sigue en DGRD por frecuencia; Mi horizonte con los recuadros violeta de Bóveda celeste y el momento tomado de la tabla de planificación; Estaciones para probar con el momento de la tabla, barra de desplazamiento y exclusión de las estaciones del propio país (cty.dat); ganancia de las yagis según la tabla de DL6WU (G3SEK), con la fórmula atribuida a W8IO solo por debajo de 10 elementos; listas desplegables y casillas numéricas al estilo de YA-MS; transverters de 144 MHz en el manual.
- **1.9** – Nueva pestaña Mi horizonte (En directo): horizonte del terreno calculado con datos SRTM1 con curvatura terrestre y refracción, sobre el fondo de la Bóveda celeste en una de las tres escalas de color, trayectoria de la Luna, obstáculos principales con los nombres de OpenStreetMap y minutos de Luna perdidos; casilla para usar el terreno como elevación mínima en todo el programa; mapa del ruido local según NJ9R, con ⚠ en las horas en que la Luna está en una dirección ruidosa; nueva pestaña Estaciones para probar (Planificación), idea de Matteo IW5DHN: las estaciones activas del chat N0UK ordenadas con un índice de 0 a 100; casillas numéricas con flechas una al lado de otra, pestañas en forma de píldora y tres nuevos esquemas de colores tomados de IP-TRX-CTRL.
- **1.8** – Nuevo idioma eslovaco (37 en total), con los manuales, el LÉAME y la licencia; una sola anchura de haz en todo el programa: 0,93·√(41253/G) para las yagis (regla de Kraus corregida con las simulaciones NEC de W4RNL, como en YA-MS) y 70·λ/D para las parábolas (IZ0JNY), en lugar de √(32000/G) sin fuente en DGRD por frecuencia; manual actualizado con la nueva fórmula y el ejemplo de apuntamiento; en macOS el lanzador abre XQuartz solo, escribe la versión de Mono en el registro y avisa si YAEC no arranca; presentación del README también en portugués, turco, checo, eslovaco, chino, japonés y coreano; traducciones corregidas en tailandés, rumano, griego, portugués de Brasil, polaco, checo y húngaro.
- **1.7** – Ocho idiomas nuevos: portugués brasileño, tailandés, chino tradicional, polaco, checo, rumano, griego y húngaro (36 en total), con los manuales y los LÉAME; en Balance EME Yagi y en Balance EME parábolas, el cálculo del eco de la propia estación (Yo transmito y recibo mi propio eco); parábola de foco primario u offset (W2IMU); a 1296 MHz con las parábolas, la pérdida por la polarización circular de los iluminadores reales (KA1GT); en Control de los cálculos, la elección entre Balance EME Yagi y Balance EME parábolas; fórmulas de DGRD por frecuencia escritas como en un editor de ecuaciones; manual: rotación de Faraday a 1296 MHz según ITU-R P.531, despolarización en 23 cm (Hagfors) y polarización circular en 23 cm.
- **1.6** – Bandas de 902 MHz y 23 cm (1296 y 1298 MHz) en todo el programa, con todas las bandas en la lista desplegable de los MHz; la pestaña Balance EME pasa a ser Balance EME Yagi y está la nueva pestaña Balance EME parábolas (parábola de foco primario, ganancia con la fórmula de PE1RKI, previo también de dos etapas, transverter y excitación del PA); nueva pestaña DGRD por frecuencia, con el ruido real de la estación y el cielo promediado sobre el haz, usada en todo el programa; cables coaxiales calculados con la fórmula α = k1·√f + k2·f a partir de los datos de las hojas de datos, también a 902 y 1296 MHz; nuevo estilo de los controles en todas las pestañas; en Posición en vivo y +- 24h, la ayuda emergente sobre el cursor rojo y las líneas rojas del DX a la hora del cursor; manual revisado tras comparar las fuentes (pérdida de trayecto banda por banda, umbrales del Q65-60B y del Q65-60C, ganancia del suelo según las medidas de IK1UWL, conectores, Dgrd de otros programas, parábolas por encima de 432 MHz); paquetes para cada arquitectura (Windows x64 y x86, Linux x64, arm64 y arm, macOS Apple Silicon e Intel); agradecimientos a Robert HA5OLA. Las bandas por encima de 432 MHz se están completando.
- **1.5** – Nueva pestaña Radar GRAVES en el grupo Enlace: Luna en el haz del radar con sector y paso, ventana común contigo, Doppler y retardo del eco, próximo paso del haz por la Luna, cielo visto desde GRAVES, reconstrucción de las 24 horas UTC con el detalle de los próximos 10 segundos, consejos para oír el eco y fuentes; lista de estaciones activas también en JSON y en texto para LunaCalc Mobile; dos idiomas nuevos, danés y tagalo (28 en total), con los manuales.
- **1.4** – Estaciones activas: la casilla del indicativo del DX tiene borde naranja si la estación ha escrito en el chat EME de N0UK en los últimos 90 días, con la fecha del último mensaje en la ayuda emergente; Tipo de letra con 10 fuentes recomendadas para Windows, Linux y macOS, probadas pestaña por pestaña; paquetes para Windows de 32 bits y para Raspberry Pi (arm64); Bóveda celeste con recuadros morados discontinuos alrededor de la zona apuntable; Distancia y Dgrd con el cuarto día útil y el día elegido también con un clic en el gráfico; casillas numéricas con marco redondeado y las flechas una encima de otra; botones de las ventanas en los bordes (izquierda, centro, derecha); recuadro de agradecimientos a todo el ancho; en ventanas estrechas CÁLCULOS DETALLADOS pasa a dos líneas y ningún texto queda bajo los botones.
- **1.3** – Nueve idiomas nuevos: neerlandés, estonio, letón, lituano, sueco, noruego, islandés, hebreo y urdu (26 en total), con los manuales; licencia y LÉAME en todos los idiomas, licencia en el idioma del instalador; botón GRAVES; Conectores TX y Conectores RX en el Balance EME (consejo de NJ9R); separador arrastrable entre la columna izquierda y el esquema del Balance EME; casilla Velo gris en Reconocimiento de mis obstáculos; DEPURACIÓN DE FÓRMULAS pasa a ser Control de los cálculos y ABOUT & CREDITS pasa a ser ACERCA DE Y CRÉDITOS; capítulos técnicos del manual de uso en bengalí, árabe y turco; esquemas pastel corregidos; la ventana del CALL3.TXT se cierra sola después de la actualización; botones de los cuadros de diálogo espaciados.
- **1.2.1** – La página CONTACTOS DEL AUTOR Y AGRADECIMIENTOS vuelve a abrirse correctamente en Linux y macOS; la referencia para los transverters indica el § 1.7.1.
- **1.2** – Balance EME con los indicadores Mi PIRE, PIRE del DX, pérdida de trayecto y S/R en los dos sentidos (con el Sol); fórmulas del documento Word de un solo tamaño, dentro de los márgenes; botones rellenos y listas desplegables planas con borde redondeado en todos los esquemas; ocho esquemas de colores pastel; casillas de valores con las flechas una al lado de la otra; los tres mejores días en orden de fecha; fondo del cielo desenfocado; DEPURACIÓN DE FÓRMULAS traducido; manual TEORÍA Y CONSEJOS SOBRE EME con los consejos de Relu NJ9R (GRAVES, apuntamiento, conectores, ganancia de las antenas, JT65B y MAP65, relé de polarización), los nuevos apartados sobre la primera recepción y sobre los chats de Internet y las tablas de VE7BQH en el prefacio; agradecimientos a NJ9R, el recuerdo de IK1UWL y los autores de artículos, hardware y software, con un globo de ayuda sobre sus obras.
- **1.1** – Posición en vivo y +- 24h (antes Seguimiento) también en el pasado y en el futuro: día desde el calendario y hora arrastrando la línea roja, frecuencia en el recuadro Eco y frecuencias; casilla del indicativo del DX con CALL3.TXT descargado de W7GJ y de WSJT-X Improved y fusionado, locator propuesto y copia en la carpeta de WSJT-X; Distancia y Dgrd sin clasificación, con la declinación superpuesta, filas coloreadas como el gráfico y horas útiles en verde a elección; casillas de verificación con el estilo del programa; cables ordenados por diámetro en las listas y por nombre, fabricante y tipo en la tabla, con fuentes traducidas; Balance EME solo con los modos de 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) y esquema de la instalación que se adapta a los textos; MANUAL DE USO con el repaso de todas las pantallas; TEORÍA Y CONSEJOS SOBRE EME con el prefacio del autor, numeración desde 1 y fórmulas del ruido solar; HTTPS en Linux y macOS con los certificados del sistema.
- **1.0.1** – En la página de la versión en GitHub está el archivo SHA256SUMS.txt con las huellas SHA-256 de todos los paquetes: sirven para comprobar que los archivos descargados son los originales (instrucciones en el README).
- **1.0** – Primera versión estable, para Windows, Linux y macOS (Linux y macOS con Mono; los datos en ~/.local/share/YAEC/data o en ~/Library/Application Support/YAEC/data); instalador para Windows y paquetes para Linux y macOS creados en GitHub; las versiones anteriores se llaman beta. Nueva pestaña Luna sobre el mundo (elevación de la Luna sobre las tierras emergidas de todo el mundo, estación DX con un clic, estado de tu antena); manual dividido en MANUAL DE USO DETALLADO y TEORÍA Y CONSEJOS SOBRE EME; grupos Ayuda y herramientas y Credits and thanks; pestaña Exportar los cálculos a Excel; ya no hay margen sobre el modo: S/N en 2500 Hz con el umbral típico como referencia y los límites del JT65 en el manual; en el manual también la tabla del Q65 para TX1 – TX6, la rotación de Faraday y la síntesis del artículo de SM5BSZ; tabla de cables ordenable por pérdida, con nuevos cables Messi & Paoloni, SSB (SeaTex para entornos marinos, Aircom Premium), Belden y Tasker; casillas con la unidad sin textos residuales.

</details>

<details><summary><b>Português</b> – Histórico de versões</summary>

- **1.9.1** – Atualização automática a partir do GitHub, com verificação da impressão SHA-256, no Windows, com os arquivos portáteis (Linux, FreeBSD, OpenBSD, Alpine), com a AppImage e com a aplicação para macOS (os pacotes .deb, .rpm, Arch, Slackware atualizam-se com o gestor de pacotes), e aviso de ficheiros em falta; novos pacotes para Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; botão CORRIGIR para corrigir o locator de uma estação no CALL3.TXT; Distância e Dgrd com a Dgrd clássica a 144 MHz, ficando a Dgrd por banda em DGRD por frequência; O meu horizonte com os retângulos violeta de Abóbada celeste e o momento tirado da tabela de planeamento; Estações a experimentar com o momento da tabela, barra de deslocamento e exclusão das estações do próprio país (cty.dat); ganho das yagis pela tabela de DL6WU (G3SEK), com a fórmula atribuída a W8IO só abaixo de 10 elementos; listas pendentes e caixas numéricas no estilo do YA-MS; transverters de 144 MHz no manual.
- **1.9** – Novo separador O meu horizonte (Em direto): horizonte do terreno calculado a partir dos dados SRTM1 com curvatura terrestre e refração, sobre o fundo da Abóbada celeste numa das três escalas de cores, trajetória da Lua, obstáculos principais com os nomes do OpenStreetMap e minutos de Lua perdidos; caixa para usar o terreno como elevação mínima em todo o programa; mapa do ruído local segundo NJ9R, com ⚠ nas horas em que a Lua está numa direção ruidosa; novo separador Estações a experimentar (Planeamento), ideia de Matteo IW5DHN: as estações ativas do chat N0UK ordenadas por um índice de 0 a 100; caixas numéricas com setas lado a lado, separadores em forma de pílula e três novos esquemas de cores retirados do IP-TRX-CTRL.
- **1.8** – Nova língua eslovaca (37 no total), com os manuais, o LEIA-ME e a licença; uma só largura de feixe em todo o programa: 0,93·√(41253/G) para as yagis (regra de Kraus corrigida com as simulações NEC de W4RNL, como no YA-MS) e 70·λ/D para as parabólicas (IZ0JNY), em vez de √(32000/G) sem fonte na DGRD por frequência; manual atualizado com a nova fórmula e o exemplo de apontamento; no macOS o lançador abre o XQuartz sozinho, escreve a versão do Mono no registo e avisa se o YAEC não arrancar; apresentação do README também em português, turco, checo, eslovaco, chinês, japonês e coreano; traduções corrigidas em tailandês, romeno, grego, português do Brasil, polaco, checo e húngaro.
- **1.7** – Oito línguas novas: português do Brasil, tailandês, chinês tradicional, polaco, checo, romeno, grego e húngaro (36 no total), com os manuais e os LEIA-ME; no Balanço EME Yagi e no Balanço EME parabólicas, o cálculo do eco da própria estação (Eu transmito e recebo o meu próprio eco); parabólica de foco primário ou offset (W2IMU); a 1296 MHz com as parabólicas, a perda da polarização circular dos iluminadores reais (KA1GT); na Verificação dos cálculos, a escolha entre Balanço EME Yagi e Balanço EME parabólicas; fórmulas do DGRD por frequência escritas como num editor de equações; manual: rotação de Faraday a 1296 MHz segundo a ITU-R P.531, despolarização nos 23 cm (Hagfors) e polarização circular nos 23 cm.
- **1.6** – Bandas de 902 MHz e 23 cm (1296 e 1298 MHz) em todo o programa, com todas as bandas na lista pendente dos MHz; o separador Balanço EME passa a Balanço EME Yagi e há o novo separador Balanço EME parabólicas (parabólica de foco primário, ganho com a fórmula de PE1RKI, pré-amplificador também de dois andares, transverter e excitação do PA); novo separador DGRD por frequência, com o ruído real da estação e o céu médio sobre o feixe, usado em todo o programa; cabos coaxiais calculados com a fórmula α = k1·√f + k2·f a partir dos dados das fichas técnicas, também a 902 e 1296 MHz; novo estilo dos comandos em todos os separadores; na Posição em direto e +- 24h, a dica sobre o cursor vermelho e as linhas vermelhas do DX à hora do cursor; manual revisto após a comparação das fontes (perda de percurso banda a banda, limiares do Q65-60B e do Q65-60C, ganho do solo segundo as medições de IK1UWL, conectores, Dgrd de outros programas, parabólicas acima de 432 MHz); pacotes para cada arquitetura (Windows x64 e x86, Linux x64, arm64 e arm, macOS Apple Silicon e Intel); agradecimentos a Robert HA5OLA. As bandas acima de 432 MHz estão em fase de conclusão.
- **1.5** – Novo separador Radar GRAVES no grupo Ligação: Lua no feixe do radar com setor e passo, janela comum contigo, Doppler e atraso do eco, próxima passagem do feixe pela Lua, céu visto do GRAVES, reconstrução das 24 horas UTC com o detalhe dos próximos 10 segundos, conselhos para ouvir o eco e fontes; lista das estações ativas também em JSON e em texto para o LunaCalc Mobile; duas línguas novas, dinamarquês e tagalo (28 no total), com os manuais.
- **1.4** – Estações ativas: a caixa do indicativo do DX tem contorno laranja se a estação escreveu no chat EME de N0UK nos últimos 90 dias, com a data da última mensagem na dica; Tipo de letra com 10 tipos recomendados para Windows, Linux e macOS, testados separador a separador; pacotes para Windows de 32 bits e para Raspberry Pi (arm64); Abóbada celeste com retângulos roxos tracejados à volta da zona apontável; Distância e Dgrd com o quarto dia útil e o dia escolhido também com um clique no gráfico; caixas numéricas com moldura arredondada e as setas uma sobre a outra; botões das janelas nas margens (esquerda, centro, direita); quadro dos agradecimentos em toda a largura; nas janelas estreitas CÁLCULOS APROFUNDADOS passa para duas linhas e nenhum texto fica por baixo dos botões.
- **1.3** – Nove novas línguas: neerlandês, estónio, letão, lituano, sueco, norueguês, islandês, hebraico e urdu (26 no total), com os manuais; licença e LEIA-ME em todas as línguas, licença na língua do instalador; botão GRAVES; Conectores TX e Conectores RX no Balanço EME (conselho de NJ9R); separador arrastável entre a coluna esquerda e o esquema do Balanço EME; caixa Véu cinzento no Reconhecimento dos meus obstáculos; DEPURAÇÃO DE FÓRMULAS passa a Verificação dos cálculos e ABOUT & CREDITS passa a SOBRE E CRÉDITOS; capítulos técnicos do manual de utilização em bengali, árabe e turco; esquemas pastel corrigidos; a janela do CALL3.TXT fecha-se sozinha após a atualização; botões das caixas de diálogo espaçados.
- **1.2.1** – A página CONTACTOS DO AUTOR E AGRADECIMENTOS volta a abrir corretamente em Linux e macOS; a referência para os transverters indica o § 1.7.1.
- **1.2** – Balanço EME com os indicadores A minha EIRP, EIRP do DX, perda de percurso e S/R nos dois sentidos (com o Sol); fórmulas do documento Word num só tamanho, dentro das margens; botões preenchidos e listas pendentes planas com rebordo arredondado em todos os esquemas; oito esquemas de cores pastel; caixas de valores com as setas lado a lado; os três melhores dias por ordem de data; fundo do céu desfocado; DEPURAÇÃO DE FÓRMULAS traduzido; manual TEORIA E CONSELHOS SOBRE EME com os conselhos de Relu NJ9R (GRAVES, apontamento, conectores, ganho das antenas, JT65B e MAP65, relé de polarização), as novas secções sobre a primeira receção e sobre os chats na Internet e as tabelas de VE7BQH no prefácio; agradecimentos a NJ9R, a memória de IK1UWL e os autores de artigos, hardware e software, com um balão de ajuda sobre as suas obras.
- **1.1** – Posição em direto e +- 24h (antes Seguimento) também no passado e no futuro: dia no calendário e hora arrastando a linha vermelha, frequência no quadro Eco e frequências; caixa do indicativo do DX com o CALL3.TXT descarregado de W7GJ e do WSJT-X Improved e fundido, locator proposto e cópia para a pasta do WSJT-X; Distância e Dgrd sem classificação, com a declinação sobreposta, linhas coloridas como o gráfico e horas úteis a verde à escolha; caixas de verificação no estilo do programa; cabos ordenados por diâmetro nas listas e por nome, fabricante e tipo na tabela, com fontes traduzidas; Balanço EME só com os modos de 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) e esquema da instalação que se adapta aos textos; MANUAL DE UTILIZAÇÃO com a revisão de todos os ecrãs; TEORIA E CONSELHOS SOBRE EME com o prefácio do autor, numeração a partir de 1 e fórmulas do ruído solar; HTTPS em Linux e macOS com os certificados do sistema.
- **1.0.1** – Na página da versão no GitHub está o ficheiro SHA256SUMS.txt com as impressões SHA-256 de todos os pacotes: servem para verificar que os ficheiros descarregados são os originais (instruções no README).
- **1.0** – Primeira versão estável, para Windows, Linux e macOS (Linux e macOS com Mono; os dados em ~/.local/share/YAEC/data ou em ~/Library/Application Support/YAEC/data); instalador para Windows e pacotes para Linux e macOS criados no GitHub; as versões anteriores chamam-se beta. Novo separador Lua sobre o mundo (elevação da Lua sobre as terras emersas de todo o mundo, estação DX com um clique, estado da sua antena); manual dividido em MANUAL DE UTILIZAÇÃO APROFUNDADO e TEORIA E CONSELHOS SOBRE EME; grupos Ajuda e ferramentas e Credits and thanks; separador Exportar os cálculos para Excel; deixa de haver margem sobre o modo: S/N em 2500 Hz com o limiar típico como referência e os limites do JT65 no manual; no manual também a tabela do Q65 para TX1 – TX6, a rotação de Faraday e a síntese do artigo de SM5BSZ; tabela de cabos ordenável por perda, com novos cabos Messi & Paoloni, SSB (SeaTex para ambientes marinhos, Aircom Premium), Belden e Tasker; caixas com a unidade sem textos residuais.

</details>

<details><summary><b>Türkçe</b> – Sürüm geçmişi</summary>

- **1.9.1** – GitHub'dan SHA-256 parmak izi denetimiyle otomatik güncelleme: Windows'ta, taşınabilir arşivlerde (Linux, FreeBSD, OpenBSD, Alpine), AppImage'da ve macOS uygulamasında (.deb, .rpm, Arch, Slackware paketleri paket yöneticisiyle güncellenir) ve eksik dosya uyarısı; yeni paketler: Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; CALL3.TXT'te bir istasyonun lokatörünü düzeltmek için DÜZELT düğmesi; Mesafe ve Dgrd'de 144 MHz'te klasik Dgrd, banda göre Dgrd Frekansa göre DGRD'de kalır; Ufkum'de Gök kubbesi'nin mor çerçeveleri ve planlama tablosundan alınan an; Denenecek istasyonlar'de tablodaki an, kaydırma çubuğu ve kendi ülkenin istasyonlarını dışarıda bırakma (cty.dat); Yagi kazancı DL6WU tablosundan (G3SEK), W8IO'ya atfedilen formül yalnızca 10 elemanın altında; YA-MS tarzında açılır listeler ve sayı kutuları; el kitabında 144 MHz transverterler.
- **1.9** – Yeni sekme Ufkum (Canlı): Dünya eğriliği ve kırılma hesaba katılarak SRTM1 verilerinden hesaplanan arazi ufku, üç renk ölçeğinden biriyle Gök kubbesi arka planı üzerinde; Ay'ın yolu, OpenStreetMap adlarıyla başlıca engeller ve kaybedilen Ay dakikaları; araziyi tüm programda en düşük yükseklik açısı olarak kullanmak için onay kutusu; NJ9R'ye göre yerel gürültü haritası, Ay'ın gürültülü bir yönde olduğu saatlerde ⚠ ile; yeni sekme Denenecek istasyonlar (Planlama), fikir Matteo IW5DHN'den: N0UK sohbetindeki etkin istasyonlar 0'dan 100'e bir endeksle sıralanır; yan yana oklu sayı kutuları, hap biçimli sekmeler ve IP-TRX-CTRL'den alınan üç yeni renk şeması.
- **1.8** – Yeni dil Slovakça (toplam 37), kılavuzlar, README ve lisans ile; tüm programda tek hüzme genişliği: yagiler için 0,93·√(41253/G) (W4RNL'nin NEC benzetimleriyle düzeltilmiş Kraus kuralı, YA-MS'deki gibi) ve çanaklar için 70·λ/D (IZ0JNY); frekansa göre DGRD'deki kaynaksız √(32000/G) yerine; kılavuz yeni formül ve yönlendirme örneğiyle güncellendi; macOS'ta başlatıcı XQuartz'ı kendisi açar, Mono sürümünü günlüğe yazar ve YAEC başlamazsa uyarır; README tanıtımı ayrıca Portekizce, Türkçe, Çekçe, Slovakça, Çince, Japonca ve Korece; Tayca, Rumence, Yunanca, Brezilya Portekizcesi, Lehçe, Çekçe ve Macarca çeviriler düzeltildi.
- **1.7** – Sekiz yeni dil: Brezilya Portekizcesi, Tayca, Geleneksel Çince, Lehçe, Çekçe, Rumence, Yunanca ve Macarca (toplam 36), kılavuzları ve README dosyalarıyla birlikte; EME bütçesi yagi ve EME bütçesi çanaklar sekmelerinde kendi istasyonunun eko hesabı (Ben yayın yapar ve kendi yankımı alırım); birincil odaklı ya da offset çanak (W2IMU); 1296 MHz'de çanaklarla gerçek besleyicilerin dairesel polarizasyon kaybı (KA1GT); Hesapların kontrolü sekmesinde EME bütçesi yagi ile EME bütçesi çanaklar arasında seçim; Frekansa göre DGRD formülleri bir denklem düzenleyicisindeki gibi yazılmış; kılavuz: ITU-R P.531'e göre 1296 MHz'de Faraday dönmesi, 23 cm'de depolarizasyon (Hagfors) ve 23 cm'de dairesel polarizasyon.
- **1.6** – Programın tamamında 902 MHz ve 23 cm (1296 ve 1298 MHz) bantları, MHz açılır listesinde tüm bantlar; EME bütçesi sekmesi EME bütçesi yagi olur ve yeni EME bütçesi çanaklar sekmesi eklenir (birincil odaklı çanak, PE1RKI formülüyle kazanç, iki katlı da olabilen ön yükseltici, transverter ve PA sürümü); istasyonun gerçek gürültüsü ve hüzme üzerinden ortalanmış gökyüzüyle yeni Frekansa göre DGRD sekmesi, programın tamamında kullanılır; koaksiyel kablolar veri sayfalarındaki verilerden α = k1·√f + k2·f formülüyle hesaplanır, 902 ve 1296 MHz'de de; tüm sekmelerde denetimlerin yeni stili; Canlı konum ve +- 24h'de kırmızı imleçte bilgi balonu ve imlecin saatinde DX'in kırmızı çizgileri; kaynakların karşılaştırılmasından sonra gözden geçirilmiş kılavuz (bant bant yol kaybı, Q65-60B ve Q65-60C eşikleri, IK1UWL ölçümlerine göre zemin kazancı, konektörler, diğer programların Dgrd'si, 432 MHz üzerindeki çanaklar); her mimari için paketler (Windows x64 ve x86, Linux x64, arm64 ve arm, macOS Apple Silicon ve Intel); Robert HA5OLA'ya teşekkürler. 432 MHz'in üzerindeki bantlar tamamlanma aşamasındadır.
- **1.5** – Bağlantı grubunda yeni GRAVES radarı sekmesi: sektör ve adımıyla radar ışınındaki Ay, seninle ortak pencere, ekonun Doppler'i ve gecikmesi, ışının Ay üzerinden bir sonraki geçişi, GRAVES'ten görülen gökyüzü, sonraki 10 saniyenin ayrıntısıyla 24 saatlik UTC yeniden yapılandırması, ekoyu duymak için öneriler ve kaynaklar; etkin istasyon listesi LunaCalc Mobile için JSON ve metin olarak da; iki yeni dil, Danca ve Tagalogca (toplam 28), kılavuzlarıyla birlikte.
- **1.4** – Etkin istasyonlar: istasyon son 90 günde N0UK EME sohbetine yazdıysa DX çağrı işareti kutusu turuncu çerçeve alır, ipucunda son mesajın tarihi görünür; Yazı tipi türünde Windows, Linux ve macOS için sekme sekme denenmiş 10 önerilen yazı tipi; 32 bit Windows ve Raspberry Pi (arm64) için paketler; Gökyüzü görünümünde yönelinebilen bölgenin çevresinde mor kesikli kutular; Mesafe ve Dgrd'de dördüncü kullanışlı gün ve grafikte tıklayarak da gün seçimi; sayı kutuları yuvarlatılmış çerçeveli, oklar üst üste; pencere düğmeleri kenarlarda (sol, orta, sağ); teşekkür kutusu tam genişlikte; dar pencerelerde AYRINTILI HESAPLAR iki satıra geçer ve hiçbir yazı düğmelerin altında kalmaz.
- **1.3** – Dokuz yeni dil: Felemenkçe, Estonca, Letonca, Litvanca, İsveççe, Norveççe, İzlandaca, İbranice ve Urduca (toplam 26), kılavuzlarıyla birlikte; lisans ve README tüm dillerde, lisans yükleyicinin dilinde; GRAVES düğmesi; EME bütçesinde TX konektörleri ve RX konektörleri (NJ9R'nin önerisi); sol sütun ile EME bütçesi şeması arasında sürüklenebilir ayırıcı; Engellerimin keşfi penceresinde Gri örtü onay kutusu; FORMÜL HATA AYIKLAMA artık Hesapların kontrolü, ABOUT & CREDITS artık HAKKINDA VE KAYNAKLAR; kullanım kılavuzunun teknik bölümleri Bengalce, Arapça ve Türkçe; pastel şemalar düzeltildi; CALL3.TXT penceresi güncellemeden sonra kendiliğinden kapanıyor; iletişim kutusu düğmeleri arasındaki boşluk artırıldı.
- **1.2.1** – YAZARLA İLETİŞİM VE TEŞEKKÜRLER sayfası Linux ve macOS'ta yeniden doğru açılıyor; transverterler için yapılan atıf artık § 1.7.1'i gösteriyor.
- **1.2** – EME bütçesinde Benim EIRP, DX'in EIRP'si, yol kaybı ve iki yönde S/N (Güneş dahil) göstergeleri; Word belgesindeki formüller tek boyutta, kenar boşlukları içinde; tüm şemalarda dolu düğmeler ve yuvarlak kenarlı düz açılır listeler; sekiz pastel renk şeması; yan yana oklu değer kutuları; en iyi üç gün tarih sırasına göre; bulanık gökyüzü arka planı; FORMÜL HATA AYIKLAMA çevrildi; EME ÜZERİNE TEORİ VE ÖNERİLER kılavuzuna Relu NJ9R'nin önerileri (GRAVES, yönlendirme, konektörler, anten kazancı, JT65B ve MAP65, polarizasyon rölesi), ilk alım ve internet sohbetleri üzerine yeni bölümler ve önsözde VE7BQH tabloları; NJ9R'ye teşekkür, IK1UWL'nin anısı ve makale, donanım ve yazılım yazarlarına teşekkür, eserleri hakkında ipucu balonuyla.
- **1.1** – Canlı konum ve +- 24h (eski Takip) geçmişte ve gelecekte de: gün takvimden, saat kırmızı çizgiyi sürükleyerek, frekans Yankı ve frekanslar kutusunda; W7GJ ve WSJT-X Improved'dan indirilip birleştirilen CALL3.TXT ile DX çağrı işareti kutusu, önerilen lokatör ve WSJT-X klasörüne kopyalama; Mesafe ve Dgrd sıralama sütunu olmadan, üst üste çizilen dik açıklık, grafikle aynı renkte satırlar ve isteğe bağlı yeşil kullanılabilir saatlerle; programın stilinde onay kutuları; açılır listelerde çapa göre, tabloda ada, üreticiye ve türe göre sıralanan kablolar, çevrilmiş kaynaklarla; yalnızca 60 s modlarıyla (JT65, Q65-60A, Q65-60B, Q65-60C) EME bütçesi ve metinlere uyum sağlayan tesis şeması; tüm ekranları gözden geçiren KULLANIM KILAVUZU; yazarın önsözü, 1'den başlayan numaralandırma ve güneş gürültüsü formülleriyle EME ÜZERİNE TEORİ VE ÖNERİLER; Linux ve macOS'ta sistem sertifikalarıyla HTTPS.
- **1.0.1** – GitHub sürüm sayfasında artık tüm paketlerin SHA-256 parmak izlerini içeren SHA256SUMS.txt dosyası var: indirilen dosyaların orijinal olduğunu doğrulamak için kullanılır (talimatlar README'de).
- **1.0** – İlk kararlı sürüm, Windows, Linux ve macOS için (Linux ve macOS'ta Mono ile; veriler ~/.local/share/YAEC/data veya ~/Library/Application Support/YAEC/data içinde); Windows için kurulum programı ile Linux ve macOS paketleri GitHub'da oluşturuldu; önceki sürümlerin adı beta. Yeni Dünya üzerinde Ay sekmesi (tüm dünyadaki karaların üzerinde Ay'ın yükselişi, tek tıklamayla DX istasyonu, antenninizin durumu); kılavuz AYRINTILI KULLANIM KILAVUZU ve EME ÜZERİNE TEORİ VE ÖNERİLER olarak ikiye ayrıldı; Yardım ve araçlar ile Credits and thanks grupları; Hesaplamaları Excel'e aktar sekmesi; artık mod payı yok: 2500 Hz'de S/N, referans olarak tipik eşikle birlikte, JT65'in sınırları ise kılavuzda; kılavuzda ayrıca TX1 – TX6 için Q65 tablosu, Faraday dönmesi ve SM5BSZ'nin makalesinin özeti; kayba göre sıralanabilen kablo tablosu, Messi & Paoloni, SSB (deniz ortamları için SeaTex, Aircom Premium), Belden ve Tasker'ın yeni kablolarıyla; birimli kutularda artık kalıntı yazı yok.

</details>

<details><summary><b>Čeština</b> – Historie verzí</summary>

- **1.9.1** – Automatická aktualizace z GitHubu s ověřením otisku SHA-256 ve Windows, u přenosných archivů (Linux, FreeBSD, OpenBSD, Alpine), u AppImage a aplikace pro macOS (balíčky .deb, .rpm, Arch, Slackware aktualizuje správce balíčků) a upozornění na chybějící soubory; nové balíčky pro Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; tlačítko OPRAVIT k opravě lokátoru stanice v CALL3.TXT; Vzdálenost a Dgrd s klasickou Dgrd na 144 MHz, Dgrd podle pásem zůstává v DGRD podle kmitočtu; Můj obzor s fialovými rámečky z Nebeská klenba a okamžikem z plánovací tabulky; Stanice k vyzkoušení s okamžikem z tabulky, posuvníkem a vyloučením stanic vlastní země (cty.dat); zisk antén Yagi z tabulky DL6WU (G3SEK), vzorec připisovaný W8IO jen pod 10 prvků; rozbalovací seznamy a číselná pole ve stylu YA-MS; transvertory pro 144 MHz v příručce.
- **1.9** – Nová karta Můj obzor (Živě): obzor z terénu vypočtený z dat SRTM1 se zakřivením Země a refrakcí, na pozadí Nebeská klenba v jedné ze tří barevných škál, dráha Měsíce, hlavní překážky s názvy z OpenStreetMap a ztracené minuty Měsíce; zaškrtávací políčko pro použití terénu jako minimální elevace v celém programu; mapa místního šumu podle NJ9R, s ⚠ v hodinách, kdy je Měsíc v hlučném směru; nová karta Stanice k vyzkoušení (Plánování), nápad Matteo IW5DHN: aktivní stanice chatu N0UK seřazené podle indexu od 0 do 100; číselná pole se šipkami vedle sebe, karty ve tvaru pilulky a tři nová barevná schémata z IP-TRX-CTRL.
- **1.8** – Nový jazyk slovenština (celkem 37), s příručkami, README a licencí; jediná šířka svazku v celém programu: 0,93·√(41253/G) pro antény Yagi (Krausovo pravidlo opravené simulacemi NEC od W4RNL, stejně jako v YA-MS) a 70·λ/D pro paraboly (IZ0JNY), místo √(32000/G) bez zdroje v DGRD podle kmitočtu; příručka aktualizována o nový vzorec a příklad zamíření; na macOS spouštěč sám otevře XQuartz, zapíše verzi Mono do protokolu a upozorní, pokud se YAEC nespustí; prezentace README také v portugalštině, turečtině, češtině, slovenštině, čínštině, japonštině a korejštině; opravené překlady do thajštiny, rumunštiny, řečtiny, brazilské portugalštiny, polštiny, češtiny a maďarštiny.
- **1.7** – Osm nových jazyků: brazilská portugalština, thajština, tradiční čínština, polština, čeština, rumunština, řečtina a maďarština (celkem 36), s příručkami a soubory README; v záložkách Bilance EME yagi a Bilance EME paraboly výpočet echa vlastní stanice (Vysílám a přijímám své echo); parabola s primárním ohniskem nebo offsetová (W2IMU); na 1296 MHz s parabolami ztráta kruhové polarizace skutečných ozařovačů (KA1GT); v záložce Kontrola výpočtů volba mezi Bilancí EME yagi a Bilancí EME paraboly; vzorce v záložce DGRD podle kmitočtu zapsané jako v editoru rovnic; příručka: Faradayova rotace na 1296 MHz podle ITU-R P.531, depolarizace v pásmu 23 cm (Hagfors) a kruhová polarizace v pásmu 23 cm.
- **1.6** – Pásma 902 MHz a 23 cm (1296 a 1298 MHz) v celém programu, se všemi pásmy v rozbalovacím seznamu MHz; záložka Bilance EME se mění na Bilanci EME yagi a přibyla nová záložka Bilance EME paraboly (parabola s primárním ohniskem, zisk podle vzorce PE1RKI, předzesilovač i dvoustupňový, transvertor a buzení PA); nová záložka DGRD podle kmitočtu, se skutečným šumem stanice a oblohou průměrovanou přes svazek, používaná v celém programu; koaxiální kabely počítané vzorcem α = k1·√f + k2·f z údajů katalogových listů, i na 902 a 1296 MHz; nový styl ovládacích prvků na všech záložkách; v Poloze živě a +- 24h bublina nápovědy u červeného kurzoru a červené čáry DX v čase kurzoru; příručka přepracovaná po porovnání zdrojů (útlum trasy pásmo po pásmu, prahy Q65-60B a Q65-60C, ground gain podle měření IK1UWL, konektory, Dgrd v jiných programech, paraboly nad 432 MHz); balíčky pro každou architekturu (Windows x64 a x86, Linux x64, arm64 a arm, macOS Apple Silicon a Intel); poděkování Robertu HA5OLA. Pásma nad 432 MHz se dokončují.
- **1.5** – Nová záložka Radar GRAVES ve skupině Spojení: Měsíc ve svazku radaru se sektorem a krokem, společné okno s tebou, Doppler a zpoždění echa, příští průchod svazku přes Měsíc, obloha viděná z GRAVES, rekonstrukce 24 hodin UTC s detailem příštích 10 sekund, rady pro poslech echa a zdroje; seznam aktivních stanic také v JSON a jako text pro LunaCalc Mobile; dva nové jazyky, dánština a tagalština (celkem 28), s příručkami.
- **1.4** – Aktivní stanice: pole značky DX má oranžový okraj, pokud stanice psala do EME chatu N0UK v posledních 90 dnech, s datem poslední zprávy v bublině nápovědy; Typ písma s 10 doporučenými písmy pro Windows, Linux a macOS, vyzkoušenými záložku po záložce; balíčky pro 32bitové Windows a pro Raspberry Pi (arm64); Nebeská klenba s fialovými čárkovanými rámečky zamiřitelné oblasti; Vzdálenost a Dgrd se čtvrtým užitečným dnem a dnem vybíraným i kliknutím v grafu; číselná pole se zaobleným rámečkem a šipkami nad sebou; tlačítka oken u okrajů (vlevo, uprostřed, vpravo); rámeček poděkování přes celou šířku; v úzkých oknech jsou PODROBNÉ VÝPOČTY na dvou řádcích a žádný popisek nekončí pod tlačítky.
- **1.3** – Devět nových jazyků: nizozemština, estonština, lotyština, litevština, švédština, norština, islandština, hebrejština a urdština (celkem 26), s příručkami; licence a ČTIMNE ve všech jazycích, licence v jazyce instalátoru; tlačítko GRAVES; Konektory v TX a Konektory v RX v Bilanci EME (rada NJ9R); posuvný oddělovač mezi levým sloupcem a schématem Bilance EME; pole šedého závoje v Průzkumu mých překážek; DEBUG VZORCŮ se mění na Kontrolu výpočtů a ABOUT & CREDITS na INFORMACE A PODĚKOVÁNÍ; technické kapitoly příručky k použití v bengálštině, arabštině a turečtině; opravená pastelová schémata; okno CALL3.TXT se po aktualizaci samo zavře; tlačítka dialogových oken s rozestupy.
- **1.2.1** – Stránka KONTAKTY NA AUTORA A DÍKY se na Linuxu a macOS opět správně otevírá; odkaz pro transvertory uvádí § 1.7.1.
- **1.2** – Bilance EME s ukazateli Moje EIRP, EIRP DX, útlum trasy a S/N v obou směrech (se Sluncem); vzorce v dokumentu Wordu jednotné velikosti, uvnitř okrajů; plná tlačítka a ploché rozbalovací nabídky se zaobleným okrajem ve všech schématech; osm pastelových barevných schémat; pole hodnot s šipkami vedle sebe; tři nejlepší dny v pořadí podle data; rozostřené pozadí oblohy; přeložený DEBUG VZORCŮ; příručka TEORIE A RADY K EME s radami Relu NJ9R (GRAVES, zamíření, konektory, zisk antén, JT65B a MAP65, polarizační relé), novými odstavci o prvním příjmu a o chatech přes internet a tabulkami VE7BQH v předmluvě; poděkování NJ9R, vzpomínka na IK1UWL a autory článků, hardwaru a softwaru, s bublinou nápovědy jejich děl.
- **1.1** – Poloha živě a +- 24h (dříve Sledování) i v minulosti a budoucnosti: den z kalendáře a čas přetažením červené čáry, kmitočet v rámečku Echo a kmitočty; pole pro značku DX s CALL3.TXT staženým od W7GJ a z WSJT-X Improved a sloučeným, nabízený lokátor a kopírování do složky WSJT-X; Vzdálenost a Dgrd bez pořadí, s překrytou deklinací, řádky obarvenými jako graf a volitelně užitečnými hodinami zeleně; zaškrtávací pole ve stylu programu; kabely seřazené podle průměru v rozbalovacích seznamech a podle názvu, výrobce a typu v tabulce, s přeloženými zdroji; Bilance EME jen s druhy provozu 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) a schéma zařízení přizpůsobující se textům; PŘÍRUČKA K POUŽITÍ s přehledem všech obrazovek; TEORIE A RADY K EME s předmluvou autora, číslováním od 1 a vzorci slunečního šumu; HTTPS na Linuxu a macOS se systémovými certifikáty.
- **1.0.1** – Na stránce vydání na GitHubu je soubor SHA256SUMS.txt s otisky SHA-256 všech balíčků: slouží k ověření, že stažené soubory jsou skutečně ty původní (návod v README).
- **1.0** – První stabilní verze pro Windows, Linux a macOS (Linux a macOS s Mono; data v ~/.local/share/YAEC/data nebo v ~/Library/Application Support/YAEC/data); instalátor pro Windows a balíčky pro Linux a macOS vytvářené na GitHubu; předchozí verze se nazývají beta. Nová záložka Měsíc nad světem (elevace Měsíce nad pevninou celého světa, stanice DX jedním kliknutím, stav tvé antény); příručka rozdělena na PODROBNOU PŘÍRUČKU K POUŽITÍ a TEORII A RADY K EME; skupiny Nápověda a nástroje a Credits and thanks; záložka Export výpočtů do Excelu; už žádná rezerva pro druh provozu: S/N v 2500 Hz s typickým prahem jako referencí a limity JT65 v příručce; v příručce také tabulka Q65 pro TX1 – TX6, Faradayova rotace a shrnutí článku SM5BSZ; tabulka kabelů řaditelná podle útlumu, s novými kabely Messi & Paoloni, SSB (SeaTex pro námořní prostředí, Aircom Premium), Belden a Tasker; pole s jednotkou bez zbytkových popisků.

</details>

<details><summary><b>Slovenčina</b> – História verzií</summary>

- **1.9.1** – Automatická aktualizácia z GitHubu s overením odtlačku SHA-256 vo Windows, pri prenosných archívoch (Linux, FreeBSD, OpenBSD, Alpine), pri AppImage a aplikácii pre macOS (balíky .deb, .rpm, Arch, Slackware aktualizuje správca balíkov) a upozornenie na chýbajúce súbory; nové balíky pre Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; tlačidlo OPRAVIŤ na opravu lokátora stanice v CALL3.TXT; Vzdialenosť a Dgrd s klasickou Dgrd na 144 MHz, Dgrd podľa pásiem zostáva v DGRD podľa kmitočtu; Môj obzor s fialovými rámčekmi z Nebeská klenba a okamihom z plánovacej tabuľky; Stanice na vyskúšanie s okamihom z tabuľky, posuvníkom a vylúčením staníc vlastnej krajiny (cty.dat); zisk antén Yagi z tabuľky DL6WU (G3SEK), vzorec pripisovaný W8IO len pod 10 prvkov; rozbaľovacie zoznamy a číselné polia v štýle YA-MS; transvertory pre 144 MHz v príručke.
- **1.9** – Nová karta Môj obzor (Naživo): obzor z terénu vypočítaný z dát SRTM1 so zakrivením Zeme a refrakciou, na pozadí Nebeská klenba v jednej z troch farebných škál, dráha Mesiaca, hlavné prekážky s názvami z OpenStreetMap a stratené minúty Mesiaca; začiarkavacie políčko na použitie terénu ako minimálnej elevácie v celom programe; mapa miestneho šumu podľa NJ9R, s ⚠ v hodinách, keď je Mesiac v hlučnom smere; nová karta Stanice na vyskúšanie (Plánovanie), nápad Matteo IW5DHN: aktívne stanice četu N0UK zoradené podľa indexu od 0 do 100; číselné polia so šípkami vedľa seba, karty v tvare tabletky a tri nové farebné schémy z IP-TRX-CTRL.
- **1.8** – Nový jazyk slovenčina (spolu 37), s príručkami, README a licenciou; jediná šírka zväzku v celom programe: 0,93·√(41253/G) pre antény yagi (Krausovo pravidlo opravené simuláciami NEC od W4RNL, rovnako ako v YA-MS) a 70·λ/D pre paraboly (IZ0JNY), namiesto √(32000/G) bez zdroja v DGRD podľa kmitočtu; príručka aktualizovaná o nový vzorec a príklad namierenia; na macOS spúšťač sám otvorí XQuartz, zapíše verziu Mono do protokolu a upozorní, ak sa YAEC nespustí; prezentácia README aj v portugalčine, turečtine, češtine, slovenčine, čínštine, japončine a kórejčine; opravené preklady do thajčiny, rumunčiny, gréčtiny, brazílskej portugalčiny, poľštiny, češtiny a maďarčiny.
- **1.7** – Osem nových jazykov: brazílska portugalčina, thajčina, tradičná čínština, poľština, čeština, rumunčina, gréčtina a maďarčina (spolu 36), s príručkami a súbormi README; v záložkách Bilancia EME yagi a Bilancia EME paraboly výpočet echa vlastnej stanice (Vysielam a prijímam svoje echo); parabola s primárnym ohniskom alebo offsetová (W2IMU); na 1296 MHz s parabolami strata kruhovej polarizácie skutočných ožarovačov (KA1GT); v záložke Kontrola výpočtov voľba medzi Bilanciou EME yagi a Bilanciou EME paraboly; vzorce v záložke DGRD podľa kmitočtu zapísané ako v editore rovníc; príručka: Faradayova rotácia na 1296 MHz podľa ITU-R P.531, depolarizácia v pásme 23 cm (Hagfors) a kruhová polarizácia v pásme 23 cm.
- **1.6** – Pásma 902 MHz a 23 cm (1296 a 1298 MHz) v celom programe, so všetkými pásmami v rozbaľovacom zozname MHz; záložka Bilancia EME sa mení na Bilanciu EME yagi a pribudla nová záložka Bilancia EME paraboly (parabola s primárnym ohniskom, zisk podľa vzorca PE1RKI, predzosilňovač aj dvojstupňový, transvertor a budenie PA); nová záložka DGRD podľa kmitočtu, so skutočným šumom stanice a oblohou priemerovanou cez zväzok, používaná v celom programe; koaxiálne káble počítané vzorcom α = k1·√f + k2·f z údajov katalógových listov, aj na 902 a 1296 MHz; nový štýl ovládacích prvkov na všetkých záložkách; v Polohe naživo a +- 24h bublina nápovedy pri červenom kurzore a červené čiary DX v čase kurzora; príručka prepracovaná po porovnaní zdrojov (útlm trasy pásmo po pásme, prahy Q65-60B a Q65-60C, ground gain podľa meraní IK1UWL, konektory, Dgrd v iných programoch, paraboly nad 432 MHz); balíčky pre každú architektúru (Windows x64 a x86, Linux x64, arm64 a arm, macOS Apple Silicon a Intel); poďakovanie Robertovi HA5OLA. Pásma nad 432 MHz sa dokončujú.
- **1.5** – Nová záložka Radar GRAVES v skupine Spojenie: Mesiac vo zväzku radaru so sektorom a krokom, spoločné okno s tebou, Doppler a oneskorenie echa, ďalší prechod zväzku cez Mesiac, obloha videná z GRAVES, rekonštrukcia 24 hodín UTC s detailom nasledujúcich 10 sekúnd, rady na počúvanie echa a zdroje; zoznam aktívnych staníc aj v JSON a ako text pre LunaCalc Mobile; dva nové jazyky, dánčina a tagalčina (spolu 28), s príručkami.
- **1.4** – Aktívne stanice: pole značky DX má oranžový okraj, ak stanica písala do EME chatu N0UK v posledných 90 dňoch, s dátumom poslednej správy v bubline nápovedy; Typ písma s 10 odporúčanými písmami pre Windows, Linux a macOS, vyskúšanými záložku po záložke; balíčky pre 32-bitové Windows a pre Raspberry Pi (arm64); Nebeská klenba s fialovými čiarkovanými rámčekmi namieriteľnej oblasti; Vzdialenosť a Dgrd so štvrtým užitočným dňom a dňom vyberaným aj kliknutím v grafe; číselné polia so zaobleným rámčekom a šípkami nad sebou; tlačidlá okien pri okrajoch (vľavo, v strede, vpravo); rámček poďakovaní cez celú šírku; v úzkych oknách sú PODROBNÉ VÝPOČTY na dvoch riadkoch a žiadny popisok nekončí pod tlačidlami.
- **1.3** – Deväť nových jazykov: holandčina, estónčina, lotyština, litovčina, švédčina, nórčina, islandčina, hebrejčina a urdčina (spolu 26), s príručkami; licencia a ČÍTAJMA vo všetkých jazykoch, licencia v jazyku inštalátora; tlačidlo GRAVES; Konektory v TX a Konektory v RX v Bilancii EME (rada NJ9R); posuvný oddeľovač medzi ľavým stĺpcom a schémou Bilancie EME; pole sivého závoja v Prieskume mojich prekážok; DEBUG VZORCOV sa mení na Kontrolu výpočtov a ABOUT & CREDITS na INFORMÁCIE A POĎAKOVANIA; technické kapitoly príručky na použitie v bengálčine, arabčine a turečtine; opravené pastelové schémy; okno CALL3.TXT sa po aktualizácii samo zavrie; tlačidlá dialógových okien s rozstupmi.
- **1.2.1** – Stránka KONTAKTY NA AUTORA A POĎAKOVANIA sa na Linuxe a macOS opäť správne otvára; odkaz pre transvertory uvádza § 1.7.1.
- **1.2** – Bilancia EME s ukazovateľmi Moje EIRP, EIRP DX, útlm trasy a S/N v oboch smeroch (so Slnkom); vzorce v dokumente Wordu jednotnej veľkosti, vnútri okrajov; plné tlačidlá a ploché rozbaľovacie ponuky so zaobleným okrajom vo všetkých schémach; osem pastelových farebných schém; polia hodnôt so šípkami vedľa seba; tri najlepšie dni v poradí podľa dátumu; rozostrené pozadie oblohy; preložený DEBUG VZORCOV; príručka TEÓRIA A RADY K EME s radami Relu NJ9R (GRAVES, namierenie, konektory, zisk antén, JT65B a MAP65, polarizačné relé), novými odsekmi o prvom príjme a o chatoch cez internet a tabuľkami VE7BQH v predslove; poďakovanie NJ9R, spomienka na IK1UWL a autorov článkov, hardvéru a softvéru, s bublinou nápovedy ich diel.
- **1.1** – Poloha naživo a +- 24h (predtým Sledovanie) aj v minulosti a budúcnosti: deň z kalendára a čas pretiahnutím červenej čiary, kmitočet v rámčeku Echo a kmitočty; pole pre značku DX s CALL3.TXT stiahnutým od W7GJ a z WSJT-X Improved a zlúčeným, ponúkaný lokátor a kopírovanie do priečinka WSJT-X; Vzdialenosť a Dgrd bez poradia, s prekrytou deklináciou, riadkami zafarbenými ako graf a voliteľne užitočnými hodinami nazeleno; zaškrtávacie polia v štýle programu; káble zoradené podľa priemeru v rozbaľovacích zoznamoch a podľa názvu, výrobcu a typu v tabuľke, s preloženými zdrojmi; Bilancia EME len s druhmi prevádzky 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) a schéma zariadenia prispôsobujúca sa textom; PRÍRUČKA NA POUŽITIE s prehľadom všetkých obrazoviek; TEÓRIA A RADY K EME s predslovom autora, číslovaním od 1 a vzorcami slnečného šumu; HTTPS na Linuxe a macOS so systémovými certifikátmi.
- **1.0.1** – Na stránke vydania na GitHube je súbor SHA256SUMS.txt s odtlačkami SHA-256 všetkých balíčkov: slúži na overenie, že stiahnuté súbory sú naozaj tie pôvodné (návod v README).
- **1.0** – Prvá stabilná verzia pre Windows, Linux a macOS (Linux a macOS s Mono; údaje v ~/.local/share/YAEC/data alebo v ~/Library/Application Support/YAEC/data); inštalátor pre Windows a balíčky pre Linux a macOS vytvárané na GitHube; predchádzajúce verzie sa nazývajú beta. Nová záložka Mesiac nad svetom (elevácia Mesiaca nad pevninou celého sveta, stanica DX jedným kliknutím, stav tvojej antény); príručka rozdelená na PODROBNÚ PRÍRUČKU NA POUŽITIE a TEÓRIU A RADY K EME; skupiny Nápoveda a nástroje a Credits and thanks; záložka Export výpočtov do Excelu; už žiadna rezerva pre druh prevádzky: S/N v 2500 Hz s typickým prahom ako referenciou a limity JT65 v príručke; v príručke aj tabuľka Q65 pre TX1 – TX6, Faradayova rotácia a zhrnutie článku SM5BSZ; tabuľka káblov zoraditeľná podľa útlmu, s novými káblami Messi & Paoloni, SSB (SeaTex pre námorné prostredie, Aircom Premium), Belden a Tasker; polia s jednotkou bez zvyškových popiskov.

</details>

<details><summary><b>中文</b> – 版本历史</summary>

- **1.9.1** – 从 GitHub 自动更新并校验 SHA-256 指纹，适用于 Windows、便携归档（Linux、FreeBSD、OpenBSD、Alpine）、AppImage 和 macOS 应用（.deb, .rpm, Arch, Slackware 软件包通过软件包管理器更新），并提示缺失的文件；新增软件包：Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage；更正 按钮，用于修正 CALL3.TXT 中某电台的定位符；距离与 Dgrd 使用 144 MHz 的经典 Dgrd，按波段的 Dgrd 保留在 按频率 DGRD；我的地平线 加入 天穹 的紫色框，并从计划表获取计算时刻；值得尝试的电台 采用表格中的时刻，增加滚动条，可排除本国电台（cty.dat）；八木天线增益取自 DL6WU 表（G3SEK），仅在少于 10 单元时使用归于 W8IO 的公式；下拉列表和数字框采用 YA-MS 风格；手册加入 144 MHz 变频器。
- **1.9** – 新标签页 我的地平线（实时）：根据 SRTM1 数据计算的地形地平线，考虑地球曲率和折射，背景为三种配色之一的天穹，显示月球轨迹、带 OpenStreetMap 名称的主要障碍物以及损失的月球分钟数；可勾选在整个程序中把地形用作最低仰角；按 NJ9R 方法的本地噪声地图，月球处于噪声方向的时段标 ⚠；新标签页 值得尝试的电台（规划），创意来自 Matteo IW5DHN：N0UK 聊天中的活跃电台按 0 到 100 的指数排序；数字框箭头并排、药丸形标签页，以及取自 IP-TRX-CTRL 的三种新配色方案。
- **1.8** – 新增斯洛伐克语（共 37 种），含手册、README 和许可证；全程序统一波束宽度：八木天线用 0.93·√(41253/G)（按 W4RNL 的 NEC 仿真修正的 Kraus 规则，与 YA-MS 相同），抛物面用 70·λ/D（IZ0JNY），取代“按频率的 DGRD”中无出处的 √(32000/G)；手册已按新公式和指向示例更新；在 macOS 上启动器会自动打开 XQuartz、把 Mono 版本写入日志，并在 YAEC 无法启动时发出提示；README 介绍新增葡萄牙语、土耳其语、捷克语、斯洛伐克语、中文、日语和韩语版本；修正了泰语、罗马尼亚语、希腊语、巴西葡萄牙语、波兰语、捷克语和匈牙利语的翻译。
- **1.7** – 新增八种语言：巴西葡萄牙语、泰语、繁体中文、波兰语、捷克语、罗马尼亚语、希腊语和匈牙利语（共 36 种），含手册和 README；“EME 链路预算 八木”和“EME 链路预算 抛物面”中新增本台回波计算（“我发射并接收自己的回波”）；主焦点或偏馈抛物面（W2IMU）；1296 MHz 使用抛物面时计入实际馈源的圆极化损耗（KA1GT）；“计算核查”中可在“EME 链路预算 八木”和“EME 链路预算 抛物面”之间选择；“按频率 DGRD”的公式以公式编辑器的样式书写；手册：依据 ITU-R P.531 的 1296 MHz 法拉第旋转、23 cm 的去极化（Hagfors）以及 23 cm 的圆极化。
- **1.6** – 整个程序新增 902 MHz 和 23 cm（1296 和 1298 MHz）频段，MHz 下拉列表中包含所有频段；“EME 链路预算”标签页更名为“EME 链路预算 八木”，并新增“EME 链路预算 抛物面”标签页（主焦点抛物面天线，用 PE1RKI 公式计算增益，前置放大器也可为两级，变频器和 PA 激励）；新增“按频率 DGRD”标签页，使用电台的真实噪声和在波束内平均的天空，并在整个程序中使用；同轴电缆根据规格书数据用公式 α = k1·√f + k2·f 计算，也包括 902 和 1296 MHz；所有标签页采用新的控件样式；“实时位置与 +- 24h”中红色光标上显示提示，并显示光标时刻 DX 的红线；对照各资料来源修订手册（逐频段路径损耗、Q65-60B 和 Q65-60C 的门限、依据 IK1UWL 实测的地面增益、连接器、其他程序的 Dgrd、432 MHz 以上的抛物面天线）；提供各种架构的安装包（Windows x64 和 x86，Linux x64、arm64 和 arm，macOS Apple Silicon 和 Intel）；感谢 Robert HA5OLA。432 MHz 以上的频段仍在完善中。
- **1.5** – “通联”组新增“GRAVES 雷达”标签页：月球是否在雷达波束内（扇区与波位）、与你的共同窗口、回波的多普勒和延迟、波束下一次扫过月球的时间、从 GRAVES 看到的天空、24 小时 UTC 重建及未来 10 秒的细节、收听回波的建议和资料来源；活跃电台列表另提供 JSON 和文本格式，供 LunaCalc Mobile 使用；新增两种语言：丹麦语和他加禄语（共 28 种），含手册。
- **1.4** – 活跃电台：如果该电台在过去 90 天内在 N0UK 的 EME 聊天室发过言，DX 呼号框会显示橙色边框，提示中显示最后一条消息的日期；“字体类型”提供适用于 Windows、Linux 和 macOS 的 10 种推荐字体，已逐个标签页测试；提供 32 位 Windows 和 Raspberry Pi（arm64）安装包；天空视图用紫色虚线框标出可指向的区域；“距离与 Dgrd”增加第四个可用日，也可在图中单击选择日期；数字输入框采用圆角边框，箭头上下排列；对话框按钮位于两侧（左、中、右）；致谢框占满整个宽度；窗口较窄时“深入计算”分两行显示，文字不再被按钮遮挡。
- **1.3** – 新增九种语言：荷兰语、爱沙尼亚语、拉脱维亚语、立陶宛语、瑞典语、挪威语、冰岛语、希伯来语和乌尔都语（共 26 种），并附手册；许可协议和 README 提供所有语言版本，许可协议以安装程序的语言显示；新增 GRAVES 按钮；EME 链路预算中新增 TX 连接器和 RX 连接器（NJ9R 的建议）；左栏与 EME 链路预算示意图之间新增可拖动的分隔条；我的障碍物勘察中新增灰色遮罩复选框；公式调试更名为计算核查，ABOUT & CREDITS 更名为关于与鸣谢；用户手册的技术章节新增孟加拉语、阿拉伯语和土耳其语版本；修正粉彩配色方案；CALL3.TXT 窗口在更新后自动关闭；对话框按钮间距加大。
- **1.2.1** – 作者联系方式与致谢页面在 Linux 和 macOS 上恢复正常打开；变频器的参考章节改为 § 1.7.1。
- **1.2** – EME 链路预算新增指标：我的 EIRP、DX 的 EIRP、路径损耗以及双向 S/N（含太阳）；Word 文档中的公式统一为一种大小并保持在页边距内；所有配色方案中的按钮改为填充样式，下拉列表改为扁平圆角样式；八种粉彩配色方案；数值框的上下箭头并排显示；三个最佳日期按日期排序；天空背景模糊；公式调试已翻译；《EME 理论与建议》手册加入 Relu NJ9R 的建议（GRAVES、指向、连接器、天线增益、JT65B 与 MAP65、极化继电器）、关于首次接收和网络聊天室的新章节，并在序言中加入 VE7BQH 天线表；致谢 NJ9R，缅怀 IK1UWL，感谢文章、硬件和软件的作者，并以提示框介绍他们的作品。
- **1.1** – 实时位置与 +- 24h（原“跟踪”）也可查看过去和未来：用日历选择日期，拖动红线选择时间，频率移到“回波与频率”框；DX 呼号框，CALL3.TXT 从 W7GJ 和 WSJT-X Improved 下载并合并，自动建议定位并可复制到 WSJT-X 文件夹；距离与 Dgrd 去掉排名，叠加赤纬曲线，表格行颜色与图表一致，可选绿色可用时段；复选框采用程序风格；下拉列表中电缆按直径排序，表格可按名称、制造商和类型排序，来源已翻译；EME 链路预算只保留 60 s 模式（JT65、Q65-60A、Q65-60B、Q65-60C），设备示意图随文字自动调整；使用手册逐一介绍所有界面；EME 理论与建议加入作者序言、编号从 1 开始并给出太阳噪声公式；Linux 和 macOS 上使用系统证书进行 HTTPS。
- **1.0.1** – GitHub 发布页面新增 SHA256SUMS.txt 文件，列出所有安装包的 SHA-256 指纹，可用来确认下载的文件是原始文件（说明见 README）。
- **1.0** – 首个稳定版本，适用于 Windows、Linux 和 macOS（Linux 和 macOS 通过 Mono 运行；数据位于 ~/.local/share/YAEC/data 或 ~/Library/Application Support/YAEC/data）；Windows 安装程序以及 Linux 和 macOS 安装包在 GitHub 上生成；之前的版本称为 beta。新增“月照全球”页（全球陆地上空的月球仰角、一键选择 DX 电台、你的天线状态）；手册拆分为“详细使用手册”和“EME 理论与建议”；新增“帮助与工具”和“Credits and thanks”组；新增“计算结果导出到 Excel”页；不再使用模式余量：改为 2500 Hz 内的 S/N，以典型门限为参考，JT65 的限制写入手册；手册还新增 TX1 – TX6 的 Q65 表格、Faraday 旋转以及 SM5BSZ 文章摘要；电缆表可按损耗排序，新增 Messi & Paoloni、SSB（用于海洋环境的 SeaTex、Aircom Premium）、Belden 和 Tasker 电缆；带单位的输入框不再残留文字。

</details>

<details><summary><b>日本語</b> – バージョン履歴</summary>

- **1.9.1** – GitHub からの自動更新（SHA-256 フィンガープリントを確認）：Windows、ポータブルアーカイブ（Linux、FreeBSD、OpenBSD、Alpine）、AppImage、macOS アプリ（.deb, .rpm, Arch, Slackware のパッケージはパッケージマネージャーで更新）、不足ファイルの警告；新しいパッケージ：Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage；CALL3.TXT の局のロケーターを直す 修正 ボタン；距離と Dgrd は 144 MHz の従来の Dgrd、バンド別の Dgrd は 周波数別 DGRD に残る；自局の地平線 に 天球 の紫の枠と計画表からの時刻；試してみたい局 に表からの時刻、スクロールバー、自国の局を除外（cty.dat）；八木の利得は DL6WU の表（G3SEK）から、W8IO によるとされる式は 10 エレメント未満のみ；ドロップダウンと数値ボックスは YA-MS 風；マニュアルに 144 MHz トランスバーター。
- **1.9** – 新しいタブ 自局の地平線（ライブ）：SRTM1 データから地球の曲率と屈折を考慮して計算した地形の地平線を、3 つの配色から選べる天球の背景上に表示し、月の軌跡、OpenStreetMap の名前付きの主な障害物、失われる月の分数を示します。プログラム全体で地形を最低仰角として使うチェックボックス。NJ9R による局所ノイズマップで、月がノイズの多い方向にある時間に ⚠ を表示。新しいタブ 試してみたい局（計画）、Matteo IW5DHN のアイデア：N0UK チャットのアクティブ局を 0〜100 の指数で並べます。数値ボックスの矢印を横並びに、タブを錠剤形にし、IP-TRX-CTRL から 3 つの新しい配色を追加。
- **1.8** – スロバキア語を追加（計 37 言語）、マニュアル・README・ライセンス付き。プログラム全体でビーム幅を統一：八木は 0.93·√(41253/G)（W4RNL の NEC シミュレーションで補正した Kraus の法則、YA-MS と同じ）、パラボラは 70·λ/D（IZ0JNY）とし、周波数別 DGRD の出典のない √(32000/G) を置き換え。マニュアルを新しい式と指向の例で更新。macOS ではランチャーが XQuartz を自動で起動し、Mono のバージョンをログに書き、YAEC が起動しない場合は警告を表示。README の紹介にポルトガル語・トルコ語・チェコ語・スロバキア語・中国語・日本語・韓国語を追加。タイ語・ルーマニア語・ギリシャ語・ブラジルポルトガル語・ポーランド語・チェコ語・ハンガリー語の翻訳を修正。
- **1.7** – 新しい言語を 8 つ追加：ブラジルポルトガル語、タイ語、繁体字中国語、ポーランド語、チェコ語、ルーマニア語、ギリシャ語、ハンガリー語（計 36 言語）、マニュアルと README 付き。「EME 回線計算 八木」と「EME 回線計算 パラボラ」に自局エコーの計算を追加（「自局送信 → 自局エコー受信」）。プライムフォーカスまたはオフセットのディッシュ（W2IMU）。1296 MHz のディッシュでは実際のフィードの円偏波による損失を考慮（KA1GT）。「計算のチェック」で「EME 回線計算 八木」と「EME 回線計算 パラボラ」を選択可能に。「周波数別 DGRD」の数式を数式エディターのような表記に。マニュアル：ITU-R P.531 による 1296 MHz のファラデー回転、23 cm での偏波解消（Hagfors）、23 cm での円偏波。
- **1.6** – 902 MHz と 23 cm（1296 と 1298 MHz）のバンドをプログラム全体に追加し、MHz のドロップダウンリストに全バンドを表示。「EME 回線計算」タブは「EME 回線計算 八木」になり、新しいタブ「EME 回線計算 パラボラ」を追加（プライムフォーカスのディッシュ、PE1RKI の式による利得、2 段構成も可能なプリアンプ、トランスバーターと PA のドライブ）。新しいタブ「周波数別 DGRD」を追加し、局の実際の雑音とビーム全体で平均した空を使って、プログラム全体で利用。同軸ケーブルはデータシートの値から式 α = k1·√f + k2·f で計算し、902 と 1296 MHz にも対応。すべてのタブの操作部品を新しいスタイルに。「ライブ位置と +- 24h」で赤いカーソルにツールチップを表示し、カーソル時刻の DX の赤い線を表示。資料の比較に基づいてマニュアルを改訂（バンドごとの伝搬損失、Q65-60B と Q65-60C のしきい値、IK1UWL の測定による大地反射利得、コネクター、他のプログラムの Dgrd、432 MHz より上のディッシュ）。すべてのアーキテクチャ向けのパッケージ（Windows x64 と x86、Linux x64、arm64、arm、macOS Apple Silicon と Intel）。Robert HA5OLA に感謝。432 MHz より上のバンドは完成に向けて作業中です。
- **1.5** – 「交信」グループに新しいタブ「GRAVES レーダー」：月がレーダーのビーム内にあるか（セクターとステップ）、あなたとの共通ウィンドウ、エコーのドップラーと遅延、次にビームが月を通過する時刻、GRAVES から見た空、次の 10 秒の詳細付き UTC 24 時間の再構成、エコーを聞くためのヒントと出典。アクティブ局の一覧を LunaCalc Mobile 用に JSON とテキストでも提供。新しい言語としてデンマーク語とタガログ語を追加（合計 28 言語、マニュアル付き）。
- **1.4** – アクティブ局：過去 90 日以内に N0UK の EME チャットに書き込んだ局は、DX コールサイン欄がオレンジの枠で表示され、ツールチップに最後のメッセージの日付が出ます。「フォントの種類」は Windows、Linux、macOS 向けの推奨フォント 10 種類に絞り、タブごとに確認済み。32 ビット Windows 用と Raspberry Pi（arm64）用のパッケージ。天空図で向けられる範囲を紫の破線枠で表示。「距離と Dgrd」に 4 番目の有効日を追加し、グラフをクリックしても日を選択可能。数値欄は角の丸い枠で、矢印を上下に配置。ダイアログのボタンは端に配置（左・中央・右）。謝辞欄を全幅に拡大。狭いウィンドウでは「詳細な計算」を 2 行で表示し、文字がボタンの下に隠れません。
- **1.3** – 新しい言語を 9 つ追加：オランダ語、エストニア語、ラトビア語、リトアニア語、スウェーデン語、ノルウェー語、アイスランド語、ヘブライ語、ウルドゥー語（計 26 言語）、マニュアル付き。ライセンスと README を全言語で用意し、ライセンスはインストーラーの言語で表示。GRAVES ボタンを追加。EME 回線計算に「TXコネクター数」と「RXコネクター数」を追加（NJ9R の助言）。左の列と EME 回線計算の図の間にドラッグ可能な区切りを追加。自局障害物の偵察に「グレーのベール」チェックボックスを追加。数式デバッグを計算のチェックに、ABOUT & CREDITS を概要とクレジットに改名。ユーザーマニュアルの技術章をベンガル語、アラビア語、トルコ語で用意。パステル配色を修正。CALL3.TXT のウィンドウが更新後に自動で閉じるように。ダイアログのボタンの間隔を広げた。
- **1.2.1** – 作者への連絡と謝辞のページが Linux と macOS で再び正しく開くようになりました。トランスバーターの参照先を § 1.7.1 に修正。
- **1.2** – EME 回線計算に「自局 EIRP」「DX の EIRP」「経路損失」「双方向の S/N（太陽を含む）」の表示を追加。Word 文書の数式を単一サイズにして余白内に収めた。すべての配色でボタンを塗りつぶし型、ドロップダウンを角丸のフラット型に。パステル配色を 8 種類追加。数値ボックスの矢印を横並びに。ベスト 3 日を日付順に。空の背景をぼかした。数式デバッグを翻訳。「EME の理論とアドバイス」マニュアルに Relu NJ9R の助言（GRAVES、指向、コネクター、アンテナ利得、JT65B と MAP65、偏波リレー）、最初の受信とインターネットチャットに関する新しい節、序文に VE7BQH の表を追加。NJ9R への謝辞、IK1UWL の追悼、記事・ハードウェア・ソフトウェアの作者への謝辞と、その作品を示すツールチップを追加。
- **1.1** – ライブ位置と +- 24h（旧「追尾」）で過去と未来も表示：カレンダーで日を、赤い線のドラッグで時刻を選択し、周波数は「エコーと周波数」枠へ。DX のコールサイン欄を追加し、W7GJ と WSJT-X Improved からダウンロードして統合した CALL3.TXT でロケーターを提案、WSJT-X フォルダーへのコピーも可能。距離と Dgrd は順位列を廃止し、赤緯を重ねて表示、行をグラフと同じ色に、利用可能時間の緑表示は任意に。チェックボックスをプログラムのスタイルに統一。ケーブルはドロップダウンで直径順、表で名前・メーカー・種類順に並べ替え可能、出典も翻訳。EME 回線計算は 60 秒のモード（JT65、Q65-60A、Q65-60B、Q65-60C）のみとし、設備図は文字の長さに合わせて調整。取扱説明書で全画面を紹介。EME の理論とヒントに著者まえがき、1 からの番号、太陽雑音の数式を追加。Linux と macOS ではシステムの証明書で HTTPS。
- **1.0.1** – GitHub のリリースページに、全パッケージの SHA-256 フィンガープリントを記載した SHA256SUMS.txt を追加。ダウンロードしたファイルが元のものか確認できます（手順は README）。
- **1.0** – 初の安定版。Windows、Linux、macOS に対応（Linux と macOS は Mono で動作。データは ~/.local/share/YAEC/data または ~/Library/Application Support/YAEC/data）；Windows 用インストーラーと Linux・macOS 用パッケージを GitHub で作成；以前のバージョンは beta と呼びます。新しいタブ「世界から見た月」（世界中の陸地上での月の仰角、ワンクリックで DX 局、自局アンテナの状態）；マニュアルを「詳細取扱説明書」と「EME の理論とアドバイス」に分割；グループ「ヘルプとツール」と「Credits and thanks」；タブ「計算結果を Excel へエクスポート」；モードのマージンを廃止：2500 Hz での S/N を典型的なしきい値を基準に表示し、JT65 の限界はマニュアルに記載；マニュアルには TX1 – TX6 の Q65 の表、Faraday 回転、SM5BSZ の記事の要約も追加；ケーブル表を損失で並べ替え可能にし、Messi & Paoloni、SSB（海洋環境向けの SeaTex、Aircom Premium）、Belden、Tasker の新しいケーブルを追加；単位付きの入力欄に文字が残らないように修正。

</details>

<details><summary><b>한국어</b> – 버전 기록</summary>

- **1.9.1** – GitHub에서 자동 업데이트(SHA-256 지문 확인): Windows, 휴대용 압축 파일(Linux, FreeBSD, OpenBSD, Alpine), AppImage, macOS 앱(.deb, .rpm, Arch, Slackware 패키지는 패키지 관리자로 업데이트), 빠진 파일 경고; 새 패키지: Windows ARM64, Fedora/openSUSE (.rpm), Arch Linux, Slackware, Raspberry Pi OS 32 bit, Alpine, FreeBSD, OpenBSD, Linux i686, AppImage; CALL3.TXT에서 국의 로케이터를 고치는 수정 버튼; 거리와 Dgrd는 144 MHz의 고전적 Dgrd, 대역별 Dgrd는 주파수별 DGRD에 유지; 내 지평선에 하늘 보기의 보라색 상자와 계획 표에서 가져온 시각; 시도해 볼 국에 표의 시각, 스크롤 막대, 자국 국 제외(cty.dat); 야기 이득은 DL6WU 표(G3SEK)에서, W8IO의 것으로 알려진 식은 10소자 미만에서만; 드롭다운과 숫자 상자는 YA-MS 스타일; 매뉴얼에 144 MHz 트랜스버터.
- **1.9** – 새 탭 내 지평선(실시간): SRTM1 데이터로 지구 곡률과 굴절을 고려해 계산한 지형 지평선을 세 가지 색상 중 하나의 하늘 보기 배경 위에 표시하고, 달의 경로, OpenStreetMap 이름이 붙은 주요 장애물, 잃는 달의 분을 보여 줍니다; 프로그램 전체에서 지형을 최소 앙각으로 쓰는 확인란; NJ9R 방식의 국지 잡음 지도, 달이 잡음이 많은 방향에 있는 시간에 ⚠ 표시; 새 탭 시도해 볼 국(계획), Matteo IW5DHN의 아이디어: N0UK 채팅의 활동 국을 0~100 지수로 정렬; 화살표가 나란히 있는 숫자 상자, 알약 모양 탭, IP-TRX-CTRL에서 가져온 새 색 구성표 세 가지.
- **1.8** – 슬로바키아어 추가(총 37개), 매뉴얼·README·라이선스 포함. 프로그램 전체에서 빔폭 통일: 야기는 0.93·√(41253/G)(W4RNL의 NEC 시뮬레이션으로 보정한 Kraus 규칙, YA-MS와 동일), 파라볼라는 70·λ/D(IZ0JNY)로, 주파수별 DGRD의 출처 없는 √(32000/G)를 대체. 매뉴얼을 새 공식과 지향 예제로 갱신. macOS에서는 실행기가 XQuartz를 자동으로 열고 Mono 버전을 로그에 기록하며 YAEC가 시작되지 않으면 경고. README 소개를 포르투갈어·터키어·체코어·슬로바키아어·중국어·일본어·한국어로도 제공. 태국어·루마니아어·그리스어·브라질 포르투갈어·폴란드어·체코어·헝가리어 번역 수정.
- **1.7** – 새 언어 8개: 브라질 포르투갈어, 태국어, 번체 중국어, 폴란드어, 체코어, 루마니아어, 그리스어, 헝가리어(총 36개), 매뉴얼과 README 포함; EME 링크 버짓 야기와 EME 링크 버짓 파라볼라에 자기 국의 에코 계산 추가(내가 송신하고 내 에코를 수신); 1차 초점 또는 오프셋 접시 안테나(W2IMU); 1296 MHz 접시 안테나에서 실제 피드의 원형 편파 손실 반영(KA1GT); 계산 검증에서 EME 링크 버짓 야기와 EME 링크 버짓 파라볼라 중 선택; 주파수별 DGRD의 공식을 수식 편집기처럼 표기; 매뉴얼: ITU-R P.531에 따른 1296 MHz의 패러데이 회전, 23 cm의 편파 소실(Hagfors), 23 cm의 원형 편파.
- **1.6** – 프로그램 전체에 902 MHz와 23 cm(1296 및 1298 MHz) 밴드 추가, MHz 드롭다운 목록에 모든 밴드 표시. EME 링크 버짓 탭은 EME 링크 버짓 야기로 바뀌고 새 탭 EME 링크 버짓 파라볼라 추가(1차 초점 접시 안테나, PE1RKI 공식에 의한 이득, 2단 구성도 가능한 프리앰프, 트랜스버터와 PA 구동). 새 탭 주파수별 DGRD 추가: 국의 실제 잡음과 빔 전체에 걸쳐 평균한 하늘을 사용하며 프로그램 전체에서 활용. 동축 케이블은 데이터시트 값으로부터 공식 α = k1·√f + k2·f로 계산하며 902 및 1296 MHz에도 적용. 모든 탭의 컨트롤에 새 스타일 적용. 실시간 위치 및 +- 24h에서 빨간 커서에 툴팁 표시, 커서 시각의 DX 빨간 선 표시. 자료 비교 후 매뉴얼 개정(밴드별 경로 손실, Q65-60B와 Q65-60C의 임계값, IK1UWL 측정에 따른 지면 이득, 커넥터, 다른 프로그램의 Dgrd, 432 MHz 이상의 접시 안테나). 모든 아키텍처용 패키지(Windows x64 및 x86, Linux x64, arm64 및 arm, macOS Apple Silicon 및 Intel). Robert HA5OLA에게 감사. 432 MHz 이상의 밴드는 아직 완성 중입니다.
- **1.5** – 교신 그룹에 새 탭 GRAVES 레이더: 레이더 빔 안의 달(섹터와 단계), 당신과의 공통 창, 에코의 도플러와 지연, 빔이 다음에 달을 지나가는 시각, GRAVES에서 본 하늘, 다음 10초의 세부 정보를 포함한 UTC 24시간 재구성, 에코를 듣는 요령과 출처. 활동 국 목록을 LunaCalc Mobile용 JSON과 텍스트로도 제공. 새 언어 두 개, 덴마크어와 타갈로그어 추가(총 28개, 설명서 포함).
- **1.4** – 활동 국: 최근 90일 동안 N0UK EME 채팅에 글을 쓴 국이면 DX 호출부호 칸에 주황색 테두리가 표시되고, 툴팁에 마지막 메시지 날짜가 나옵니다. 글꼴 종류에서 Windows, Linux, macOS용 권장 글꼴 10개를 탭별로 확인해 제공합니다. 32비트 Windows와 Raspberry Pi(arm64)용 패키지. 하늘 보기에서 향할 수 있는 영역을 보라색 점선 상자로 표시. 거리와 Dgrd에 네 번째 유효일을 추가하고 그래프를 클릭해도 날짜 선택 가능. 숫자 입력 칸은 둥근 테두리에 화살표를 위아래로 배치. 대화 상자 버튼은 가장자리에 배치(왼쪽, 가운데, 오른쪽). 감사 상자를 전체 너비로 확장. 좁은 창에서는 '심화 계산'이 두 줄로 표시되고 글자가 버튼 아래로 가려지지 않습니다.
- **1.3** – 새 언어 9개: 네덜란드어, 에스토니아어, 라트비아어, 리투아니아어, 스웨덴어, 노르웨이어, 아이슬란드어, 히브리어, 우르두어(총 26개), 매뉴얼 포함; 라이선스와 README를 모든 언어로 제공, 라이선스는 설치 프로그램의 언어로 표시; GRAVES 버튼; EME 링크 버짓에 TX 커넥터 수와 RX 커넥터 수 추가(NJ9R의 조언); 왼쪽 열과 EME 링크 버짓 도식 사이에 끌어서 옮길 수 있는 구분선; 내 장애물 정찰에 회색 베일 확인란; 수식 디버그는 계산 검증으로, ABOUT & CREDITS는 정보 및 크레딧으로 이름 변경; 사용자 매뉴얼의 기술 장을 벵골어, 아랍어, 터키어로 제공; 파스텔 테마 수정; CALL3.TXT 창이 업데이트 후 자동으로 닫힘; 대화 상자 버튼 간격 조정.
- **1.2.1** – 저자 연락처 및 감사의 말 페이지가 Linux와 macOS에서 다시 올바르게 열립니다. 트랜스버터 참조를 § 1.7.1로 수정.
- **1.2** – EME 링크 버짓에 내 EIRP, DX의 EIRP, 경로 손실, 양방향 S/N(태양 포함) 표시 추가; Word 문서의 수식을 한 가지 크기로 여백 안에 맞춤; 모든 테마에서 채워진 버튼과 둥근 테두리의 평면 드롭다운 목록; 파스텔 색 테마 8종; 값 상자의 화살표를 나란히 배치; 가장 좋은 3일을 날짜순으로; 하늘 배경 흐림 처리; 수식 디버그 번역; EME 이론과 조언 매뉴얼에 Relu NJ9R의 조언(GRAVES, 지향, 커넥터, 안테나 이득, JT65B와 MAP65, 편파 릴레이), 첫 수신과 인터넷 채팅에 관한 새 절, 서문에 VE7BQH 표 추가; NJ9R에 대한 감사, IK1UWL 추모, 기사·하드웨어·소프트웨어 저자들에 대한 감사와 그들의 작업을 보여 주는 도움말.
- **1.1** – 실시간 위치 및 +- 24h(이전 추적)에서 과거와 미래도 표시: 달력으로 날짜를, 빨간 선을 끌어 시간을 고르고 주파수는 에코와 주파수 상자로 이동; DX 호출부호 칸 추가, W7GJ와 WSJT-X Improved에서 내려받아 합친 CALL3.TXT로 로케이터를 제안하고 WSJT-X 폴더로 복사 가능; 거리와 Dgrd에서 순위 열을 없애고 적위를 겹쳐 표시, 행을 그래프와 같은 색으로, 사용 가능 시간의 녹색 표시는 선택; 확인란을 프로그램 스타일로 통일; 드롭다운의 케이블은 직경순, 표는 이름·제조사·종류로 정렬 가능하며 출처도 번역; EME 링크 버짓은 60초 모드(JT65, Q65-60A, Q65-60B, Q65-60C)만 남기고 설비도는 글자 길이에 맞춰 조정; 사용 설명서에서 모든 화면을 소개; EME 이론과 조언에 저자 서문, 1부터의 번호, 태양 잡음 공식 추가; Linux와 macOS에서 시스템 인증서로 HTTPS.
- **1.0.1** – GitHub 릴리스 페이지에 모든 패키지의 SHA-256 지문이 담긴 SHA256SUMS.txt 파일 추가: 내려받은 파일이 원본인지 확인할 수 있습니다 (방법은 README 참고).
- **1.0** – 첫 안정 버전, Windows, Linux, macOS용(Linux와 macOS는 Mono 사용; 데이터는 ~/.local/share/YAEC/data 또는 ~/Library/Application Support/YAEC/data); Windows용 설치 프로그램과 Linux 및 macOS용 패키지를 GitHub에서 생성; 이전 버전은 beta라고 부름. 새 탭 '세계 위의 달'(전 세계 육지 위의 달 앙각, 클릭 한 번으로 DX 국, 내 안테나 상태); 설명서를 '상세 사용 설명서'와 'EME 이론과 조언'으로 분리; '도움말 및 도구'와 'Credits and thanks' 그룹; '계산 결과 Excel 내보내기' 탭; 모드 마진 폐지: 2500 Hz 기준 S/N을 일반적인 임계값과 비교하여 표시하고 JT65의 한계는 설명서에 수록; 설명서에 TX1 – TX6용 Q65 표, Faraday 회전, SM5BSZ 기사 요약도 추가; 케이블 표를 손실 기준으로 정렬 가능, Messi & Paoloni, SSB(해양 환경용 SeaTex, Aircom Premium), Belden, Tasker 새 케이블 추가; 단위가 있는 입력란에 남는 글자 없음.

</details>

## For developers

You do not need to compile anything to use YAEC: the installer and the packages above are built automatically. If you want to build it yourself on Windows, `compila.bat` compiles `YAEC.cs` with the C# compiler included in Windows (.NET Framework 4, C# 5). Every push is compiled by GitHub Actions on Windows and started on Linux with Mono; when the `VERSION` file on `main` holds a new version, the workflow publishes the release with the Windows installer (Inno Setup) and the Linux and macOS packages (`.github/workflows/build.yml`).

## License

See `LICENZA.txt`.
