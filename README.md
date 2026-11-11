# YAEC – Yet Another EME Calc

*a cura di Costantino IC8TEM*

Moon position, pointing windows, EME link budget, sky and solar noise calculator for radio amateurs, in 36 languages.
Windows, Linux and macOS (Linux and macOS with Mono).

Posizione della Luna, finestre di puntamento, budget del collegamento EME, rumore del cielo e del Sole per radioamatori, in 36 lingue.

## Languages

YAEC, its two manuals (user manual and *Theory and tips on EME*), the licence and the README are available in **36 languages**; the language is chosen at the top of the main screen. Licence and README in every language are in the [`lingue`](lingue) folder.

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

## Installation

[English](#english) · [Italiano](#italiano) · [Deutsch](#deutsch) · [Français](#français) · [Español](#español)

Download the files from the **[Releases](../../releases/latest)** page (x.y = version number).

### English
- **Windows** – download `YAEC-x.y-win-x64-setup.exe` and run it. It installs YAEC into *Documents\YAEC* without administrator rights, with Start menu and desktop shortcuts and an uninstaller. If SmartScreen warns you: *More info* → *Run anyway*. No installation wanted? Extract `YAEC-x.y-win-x64-portatile.zip` into a folder where you can write and run `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – download `yaec_x.y_amd64.deb` and run `sudo apt install ./yaec_x.y_amd64.deb` (Mono is installed too); start YAEC from the applications menu or with `yaec`.
- **Windows 32-bit** – `YAEC-x.y-win-x86-setup.exe` or `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64-bit, Pi 4/5) – download `yaec_x.y_arm64.deb` and run `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – other distributions** – install Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extract `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`) and run `./install.sh`.
- **macOS (experimental)** – install Mono for macOS and XQuartz, open `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) and drag YAEC into Applications; the first time, right-click → *Open*.
- Every release has `SHA256SUMS.txt` to check the downloaded files.

### Italiano
- **Windows** – scarica `YAEC-x.y-win-x64-setup.exe` ed eseguilo. Installa YAEC in *Documenti\YAEC* senza diritti di amministratore, con i collegamenti nel menu Start e sul desktop e il programma di disinstallazione. Se compare l'avviso di SmartScreen: *Ulteriori informazioni* → *Esegui comunque*. Senza installazione: estrai `YAEC-x.y-win-x64-portatile.zip` in una cartella in cui puoi scrivere e avvia `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – scarica `yaec_x.y_amd64.deb` e dai `sudo apt install ./yaec_x.y_amd64.deb` (installa anche Mono); YAEC si avvia dal menu delle applicazioni o con `yaec`.
- **Windows a 32 bit** – `YAEC-x.y-win-x86-setup.exe` oppure `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS a 64 bit, Pi 4/5) – scarica `yaec_x.y_arm64.deb` e dai `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – altre distribuzioni** – installa Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), estrai `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`) e avvia `./install.sh`.
- **macOS (sperimentale)** – installa Mono per macOS e XQuartz, apri `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) e trascina YAEC in Applicazioni; la prima volta, clic destro → *Apri*.
- Ogni release ha il file `SHA256SUMS.txt` per controllare i file scaricati.

### Deutsch
- **Windows** – `YAEC-x.y-win-x64-setup.exe` herunterladen und ausführen. YAEC wird ohne Administratorrechte in *Dokumente\YAEC* installiert, mit Verknüpfungen im Startmenü und auf dem Desktop sowie einem Deinstallationsprogramm. Bei einer SmartScreen-Warnung: *Weitere Informationen* → *Trotzdem ausführen*. Ohne Installation: `YAEC-x.y-win-x64-portatile.zip` in einen beschreibbaren Ordner entpacken und `YAEC.exe` starten.
- **Linux – Debian, Ubuntu, Mint** – `yaec_x.y_amd64.deb` herunterladen und `sudo apt install ./yaec_x.y_amd64.deb` ausführen (Mono wird mitinstalliert); YAEC startet aus dem Anwendungsmenü oder mit `yaec`.
- **Windows 32 Bit** – `YAEC-x.y-win-x86-setup.exe` oder `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64 Bit, Pi 4/5) – `yaec_x.y_arm64.deb` herunterladen und `sudo apt install ./yaec_x.y_arm64.deb` ausführen.
- **Linux – andere Distributionen** – Mono installieren (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`) entpacken und `./install.sh` ausführen.
- **macOS (experimentell)** – Mono für macOS und XQuartz installieren, `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) öffnen und YAEC in den Ordner Programme ziehen; beim ersten Mal Rechtsklick → *Öffnen*.
- Jede Version enthält `SHA256SUMS.txt` zur Prüfung der heruntergeladenen Dateien.

### Français
- **Windows** – téléchargez `YAEC-x.y-win-x64-setup.exe` et lancez-le. Il installe YAEC dans *Documents\YAEC* sans droits d'administrateur, avec les raccourcis dans le menu Démarrer et sur le bureau et un programme de désinstallation. Si SmartScreen affiche un avertissement : *Informations complémentaires* → *Exécuter quand même*. Sans installation : extrayez `YAEC-x.y-win-x64-portatile.zip` dans un dossier où vous pouvez écrire et lancez `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – téléchargez `yaec_x.y_amd64.deb` et lancez `sudo apt install ./yaec_x.y_amd64.deb` (Mono est installé aussi) ; YAEC se lance depuis le menu des applications ou avec `yaec`.
- **Windows 32 bits** – `YAEC-x.y-win-x86-setup.exe` ou `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS 64 bits, Pi 4/5) – téléchargez `yaec_x.y_arm64.deb` et lancez `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – autres distributions** – installez Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extrayez `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`) et lancez `./install.sh`.
- **macOS (expérimental)** – installez Mono pour macOS et XQuartz, ouvrez `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) et faites glisser YAEC dans Applications ; la première fois, clic droit → *Ouvrir*.
- Chaque version contient `SHA256SUMS.txt` pour vérifier les fichiers téléchargés.

### Español
- **Windows** – descarga `YAEC-x.y-win-x64-setup.exe` y ejecútalo. Instala YAEC en *Documentos\YAEC* sin derechos de administrador, con accesos directos en el menú Inicio y en el escritorio y un desinstalador. Si SmartScreen muestra un aviso: *Más información* → *Ejecutar de todas formas*. Sin instalación: extrae `YAEC-x.y-win-x64-portatile.zip` en una carpeta en la que puedas escribir y ejecuta `YAEC.exe`.
- **Linux – Debian, Ubuntu, Mint** – descarga `yaec_x.y_amd64.deb` y ejecuta `sudo apt install ./yaec_x.y_amd64.deb` (también instala Mono); YAEC se abre desde el menú de aplicaciones o con `yaec`.
- **Windows de 32 bits** – `YAEC-x.y-win-x86-setup.exe` o `YAEC-x.y-win-x86-portatile.zip`.
- **Raspberry Pi** (Raspberry Pi OS de 64 bits, Pi 4/5) – descarga `yaec_x.y_arm64.deb` y ejecuta `sudo apt install ./yaec_x.y_arm64.deb`.
- **Linux – otras distribuciones** – instala Mono (`sudo dnf install mono-complete`, `sudo pacman -S mono`, `sudo zypper install mono-complete`), extrae `YAEC-x.y-linux-x64-portatile.tar.gz` (ARM: `YAEC-x.y-linux-arm64-portatile.tar.gz`, `YAEC-x.y-linux-arm-portatile.tar.gz`) y ejecuta `./install.sh`.
- **macOS (experimental)** – instala Mono para macOS y XQuartz, abre `YAEC-x.y-osx-arm64.dmg` (Apple Silicon) / `YAEC-x.y-osx-x64.dmg` (Intel) y arrastra YAEC a Aplicaciones; la primera vez, clic derecho → *Abrir*.
- Cada versión incluye `SHA256SUMS.txt` para comprobar los archivos descargados.

All the versions before 1.0 are called **beta**.

## Features

[English](#english-1) · [Italiano](#italiano-1) · [Deutsch](#deutsch-1) · [Français](#français-1) · [Español](#español-1)

### English

<table><tr><td width="33%" align="center"><a href="docs/screenshots/en-1.jpg"><img src="docs/screenshots/en-1.jpg" alt="Live position and +- 24h"></a><br><sub>Live position and +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/en-2.jpg"><img src="docs/screenshots/en-2.jpg" alt="EME budget"></a><br><sub>EME budget</sub></td><td width="33%" align="center"><a href="docs/screenshots/en-3.jpg"><img src="docs/screenshots/en-3.jpg" alt="Distance and Dgrd"></a><br><sub>Distance and Dgrd</sub></td></tr></table>

YAEC puts in one program everything you need to run an EME (Earth–Moon–Earth) station on 50, 70, 144, 222, 432 and 902 MHz and 23 cm (1296 MHz), especially when the station has limits: an antenna without elevation, a rotator with limited travel, obstacles that hide part of the sky. It tells you not only where the Moon is, but whether **your** antenna can really reach it, when, and under which conditions. The bands above 432 MHz are still being completed, but the DGRD is already computed correctly at every frequency; more advice for newcomers above 900 MHz will follow.

**Live**
- **Live position and +- 24h** – main screen updated every second: your locator and the DX's (4 to 14 characters), frequency, UTC, local and DX clocks, a status band (pointable, outside the limits, below the horizon, common window) with countdown, compass and elevation arc. Typing the DX callsign fills in its locator from CALL3.TXT.
- **Reconnaissance of my obstacles** – aerial or topographic map centred on your station with the sky drawn on it: Moon position, its path over the next 24 hours, rise and set, antenna limits that you drag with the mouse.
- **Sky view** – the sky seen from your QTH with the sky-noise colours at your frequency, antenna limits, the DX horizon, radio sources, the Sun and the Moon path.

**Planning**
- **Distance and Dgrd** – 7 to 61 days of Dgrd and mean Moon distance, with the declination overlaid, perigee, apogee, new Moon, the three best days (in date order), a possible fourth useful day and a warning for the days when the Moon is close to the Sun. Only the hours in which the Moon is really pointable with your limits are counted.
- **DGRD by frequency** – the Dgrd at your working frequency with the real noise of your station and the sky averaged over the antenna beam, compared with the usual WSJT-X calculation; the choice applies to the whole program.
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
- 36 languages; light, night (blue), black and eight pastel colour schemes.
- Moon positions accurate to about 0.01° (Meeus, ELP-2000/82), all calculations on your computer; data in a single `data` folder.

### Italiano

<table><tr><td width="33%" align="center"><a href="docs/screenshots/it-1.jpg"><img src="docs/screenshots/it-1.jpg" alt="Posizione live e +- 24h"></a><br><sub>Posizione live e +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/it-2.jpg"><img src="docs/screenshots/it-2.jpg" alt="Budget EME"></a><br><sub>Budget EME</sub></td><td width="33%" align="center"><a href="docs/screenshots/it-3.jpg"><img src="docs/screenshots/it-3.jpg" alt="Distanza e Dgrd"></a><br><sub>Distanza e Dgrd</sub></td></tr></table>

YAEC raccoglie in un solo programma tutto quello che serve per l'EME (Terra–Luna–Terra) su 50, 70, 144, 222, 432 e 902 MHz e sui 23 cm (1296 MHz), soprattutto quando la stazione ha dei vincoli: un'antenna senza elevazione, un rotore con escursione limitata, ostacoli che nascondono parte del cielo. Non dice solo dove si trova la Luna, ma se la **tua** antenna la raggiunge davvero, quando e in quali condizioni. Le bande sopra i 432 MHz sono in fase di completamento, ma la DGRD è già calcolata correttamente a ogni frequenza; seguiranno altri consigli per chi si avvicina da poco alle frequenze sopra i 900 MHz.

**In diretta**
- **Posizione live e +- 24h** – la schermata principale, aggiornata ogni secondo: locator tuo e del DX (da 4 a 14 caratteri), frequenza, orologi UTC, locale e del DX, fascia di stato (puntabile, fuori dai limiti, sotto l'orizzonte, finestra comune) con il conto alla rovescia, bussola e arco dell'elevazione. Scrivendo il nominativo del DX il locator arriva dal CALL3.TXT.
- **Ricognizione dei miei ostacoli** – mappa aerofotografica o topografica centrata sulla tua stazione con sopra il cielo: posizione della Luna, percorso nelle prossime 24 ore, sorgere e tramonto, limiti dell'antenna da trascinare con il mouse.
- **Volta celeste** – il cielo visto dal tuo QTH con i colori del rumore del cielo alla tua frequenza, i limiti dell'antenna, l'orizzonte del DX, le radiosorgenti, il Sole e il percorso della Luna.

**Pianificazione**
- **Distanza e Dgrd** – da 7 a 61 giorni di Dgrd e distanza media della Luna, con la declinazione sovrapposta, perigeo, apogeo, luna nuova, i tre giorni migliori (in ordine di data), un possibile quarto giorno utile e l'avviso dei giorni con la Luna vicina al Sole. Contano solo le ore in cui la Luna è davvero puntabile con i tuoi limiti.
- **DGRD per frequenza** – il Dgrd alla tua frequenza di lavoro con il rumore vero della tua stazione e il cielo mediato sul fascio dell'antenna, confrontato con il calcolo di sempre di WSJT-X; la scelta vale in tutto il programma.
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
- 36 lingue; schemi di colori chiaro, notte (blu), nero e otto pastello.
- Posizioni della Luna precise a circa 0,01° (Meeus, ELP-2000/82), tutti i calcoli sul tuo computer; dati in un'unica cartella `data`.

### Deutsch

<table><tr><td width="33%" align="center"><a href="docs/screenshots/de-1.jpg"><img src="docs/screenshots/de-1.jpg" alt="Position live und +- 24h"></a><br><sub>Position live und +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/de-2.jpg"><img src="docs/screenshots/de-2.jpg" alt="EME-Budget"></a><br><sub>EME-Budget</sub></td><td width="33%" align="center"><a href="docs/screenshots/de-3.jpg"><img src="docs/screenshots/de-3.jpg" alt="Entfernung und Dgrd"></a><br><sub>Entfernung und Dgrd</sub></td></tr></table>

YAEC vereint in einem Programm alles, was man für den EME-Betrieb (Erde–Mond–Erde) auf 50, 70, 144, 222, 432 und 902 MHz und 23 cm (1296 MHz) braucht – vor allem, wenn die Station Einschränkungen hat: eine Antenne ohne Elevation, ein Rotor mit begrenztem Drehbereich, Hindernisse, die einen Teil des Himmels verdecken. Es zeigt nicht nur, wo der Mond steht, sondern ob **deine** Antenne ihn wirklich erreicht, wann und unter welchen Bedingungen. Die Bänder oberhalb von 432 MHz werden noch fertiggestellt, aber der DGRD wird schon auf jeder Frequenz richtig berechnet; weitere Tipps für Neueinsteiger oberhalb von 900 MHz folgen.

**Live**
- **Position live und +- 24h** – Hauptbildschirm, jede Sekunde aktualisiert: dein Locator und der des DX (4 bis 14 Zeichen), Frequenz, UTC-, Orts- und DX-Uhr, Statusband (ausrichtbar, außerhalb der Grenzen, unter dem Horizont, gemeinsames Fenster) mit Countdown, Kompass und Elevationsbogen. Bei Eingabe des DX-Rufzeichens kommt der Locator aus CALL3.TXT.
- **Erkundung meiner Hindernisse** – Luftbild- oder topografische Karte um deine Station mit dem Himmel darüber: Mondposition, Bahn der nächsten 24 Stunden, Auf- und Untergang, Antennengrenzen, die man mit der Maus zieht.
- **Himmelsansicht** – der Himmel von deinem QTH aus mit den Farben des Himmelsrauschens auf deiner Frequenz, Antennengrenzen, DX-Horizont, Radioquellen, Sonne und Mondbahn.

**Planung**
- **Entfernung und Dgrd** – 7 bis 61 Tage Dgrd und mittlere Mondentfernung, mit überlagerter Deklination, Perigäum, Apogäum, Neumond, den drei besten Tagen (nach Datum), einem möglichen vierten nutzbaren Tag und einer Warnung für Tage mit dem Mond nahe der Sonne. Gezählt werden nur die Stunden, in denen der Mond mit deinen Grenzen wirklich erreichbar ist.
- **DGRD nach Frequenz** – der Dgrd auf deiner Arbeitsfrequenz mit dem echten Rauschen deiner Station und dem über die Antennenkeule gemittelten Himmel, verglichen mit der üblichen Rechnung von WSJT-X; die Wahl gilt im ganzen Programm.
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
- 36 Sprachen; Farbschemata hell, Nacht (blau), schwarz und acht Pastelltöne.
- Mondpositionen auf etwa 0,01° genau (Meeus, ELP-2000/82), alle Berechnungen auf deinem Computer; Daten in einem einzigen Ordner `data`.

### Français

<table><tr><td width="33%" align="center"><a href="docs/screenshots/fr-1.jpg"><img src="docs/screenshots/fr-1.jpg" alt="Position en direct et +- 24h"></a><br><sub>Position en direct et +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/fr-2.jpg"><img src="docs/screenshots/fr-2.jpg" alt="Bilan EME"></a><br><sub>Bilan EME</sub></td><td width="33%" align="center"><a href="docs/screenshots/fr-3.jpg"><img src="docs/screenshots/fr-3.jpg" alt="Distance et Dgrd"></a><br><sub>Distance et Dgrd</sub></td></tr></table>

YAEC réunit dans un seul programme tout ce qu'il faut pour trafiquer en EME (Terre–Lune–Terre) sur 50, 70, 144, 222, 432 et 902 MHz et 23 cm (1296 MHz), surtout quand la station a des contraintes : une antenne sans élévation, un rotor à débattement limité, des obstacles qui cachent une partie du ciel. Il ne dit pas seulement où se trouve la Lune, mais si **votre** antenne peut vraiment l'atteindre, quand et dans quelles conditions. Les bandes au-dessus de 432 MHz sont en cours de finalisation, mais le DGRD est déjà calculé correctement à chaque fréquence ; d'autres conseils pour ceux qui débutent au-dessus de 900 MHz suivront.

**En direct**
- **Position en direct et +- 24h** – l'écran principal, mis à jour chaque seconde : votre locator et celui du DX (4 à 14 caractères), fréquence, horloges UTC, locale et du DX, bande d'état (pointable, hors limites, sous l'horizon, fenêtre commune) avec compte à rebours, boussole et arc d'élévation. En saisissant l'indicatif du DX, son locator vient de CALL3.TXT.
- **Reconnaissance de mes obstacles** – carte aérienne ou topographique centrée sur votre station avec le ciel dessiné dessus : position de la Lune, trajet des 24 prochaines heures, lever et coucher, limites de l'antenne à faire glisser à la souris.
- **Voûte céleste** – le ciel vu de votre QTH avec les couleurs du bruit du ciel à votre fréquence, les limites de l'antenne, l'horizon du DX, les radiosources, le Soleil et le trajet de la Lune.

**Planification**
- **Distance et Dgrd** – de 7 à 61 jours de Dgrd et de distance moyenne de la Lune, avec la déclinaison superposée, périgée, apogée, nouvelle lune, les trois meilleurs jours (dans l'ordre chronologique), un éventuel quatrième jour utile et une alerte pour les jours où la Lune est proche du Soleil. Seules comptent les heures où la Lune est vraiment pointable avec vos limites.
- **DGRD par fréquence** – le Dgrd à votre fréquence de travail avec le bruit réel de votre station et le ciel moyenné sur le faisceau de l'antenne, comparé au calcul habituel de WSJT-X ; le choix vaut pour tout le programme.
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
- 36 langues ; thèmes de couleurs clair, nuit (bleu), noir et huit pastels.
- Positions de la Lune précises à environ 0,01° (Meeus, ELP-2000/82), tous les calculs sur votre ordinateur ; données dans un seul dossier `data`.

### Español

<table><tr><td width="33%" align="center"><a href="docs/screenshots/es-1.jpg"><img src="docs/screenshots/es-1.jpg" alt="Posición en vivo y +- 24h"></a><br><sub>Posición en vivo y +- 24h</sub></td><td width="33%" align="center"><a href="docs/screenshots/es-2.jpg"><img src="docs/screenshots/es-2.jpg" alt="Balance EME"></a><br><sub>Balance EME</sub></td><td width="33%" align="center"><a href="docs/screenshots/es-3.jpg"><img src="docs/screenshots/es-3.jpg" alt="Distancia y Dgrd"></a><br><sub>Distancia y Dgrd</sub></td></tr></table>

YAEC reúne en un solo programa todo lo necesario para operar EME (Tierra–Luna–Tierra) en 50, 70, 144, 222, 432 y 902 MHz y 23 cm (1296 MHz), sobre todo cuando la estación tiene limitaciones: una antena sin elevación, un rotor de recorrido limitado, obstáculos que ocultan parte del cielo. No solo dice dónde está la Luna, sino si **tu** antena puede alcanzarla de verdad, cuándo y en qué condiciones. Las bandas por encima de 432 MHz están en fase de finalización, pero el DGRD ya se calcula correctamente en cada frecuencia; seguirán más consejos para quien se inicia por encima de 900 MHz.

**En directo**
- **Posición en vivo y +- 24h** – la pantalla principal, actualizada cada segundo: tu locator y el del DX (de 4 a 14 caracteres), frecuencia, relojes UTC, local y del DX, franja de estado (apuntable, fuera de límites, bajo el horizonte, ventana común) con cuenta atrás, brújula y arco de elevación. Al escribir el indicativo del DX, su locator llega del CALL3.TXT.
- **Reconocimiento de mis obstáculos** – mapa aéreo o topográfico centrado en tu estación con el cielo dibujado encima: posición de la Luna, trayectoria de las próximas 24 horas, salida y puesta, límites de la antena que se arrastran con el ratón.
- **Bóveda celeste** – el cielo visto desde tu QTH con los colores del ruido del cielo en tu frecuencia, los límites de la antena, el horizonte del DX, las radiofuentes, el Sol y la trayectoria de la Luna.

**Planificación**
- **Distancia y Dgrd** – de 7 a 61 días de Dgrd y distancia media de la Luna, con la declinación superpuesta, perigeo, apogeo, luna nueva, los tres mejores días (por orden de fecha), un posible cuarto día útil y un aviso para los días con la Luna cerca del Sol. Solo cuentan las horas en que la Luna es realmente apuntable con tus límites.
- **DGRD por frecuencia** – el Dgrd en tu frecuencia de trabajo con el ruido real de tu estación y el cielo promediado sobre el haz de la antena, comparado con el cálculo habitual de WSJT-X; la elección vale en todo el programa.
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
- 36 idiomas; esquemas de colores claro, noche (azul), negro y ocho pastel.
- Posiciones de la Luna con una precisión de unos 0,01° (Meeus, ELP-2000/82), todos los cálculos en tu ordenador; datos en una sola carpeta `data`.

## For developers

You do not need to compile anything to use YAEC: the installer and the packages above are built automatically. If you want to build it yourself on Windows, `compila.bat` compiles `YAEC.cs` with the C# compiler included in Windows (.NET Framework 4, C# 5). Every push is compiled by GitHub Actions on Windows and started on Linux with Mono; when the `VERSION` file on `main` holds a new version, the workflow publishes the release with the Windows installer (Inno Setup) and the Linux and macOS packages (`.github/workflows/build.yml`).

## License

See `LICENZA.txt`.
