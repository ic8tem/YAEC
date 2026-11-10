YAEC - Yet Another EME Calc  1.5
by Costantino IC8TEM
=================================

Moon position, pointing windows, EME link budget, sky and solar noise
calculator for radio amateurs. Windows, Linux and macOS, in 28 languages.
Source code and downloads: https://github.com/ic8tem/YAEC
This README and the licence in every language: folder "lingue"
(README_<code>.txt, LICENSE_<code>.txt; e.g. README_it.txt, LICENSE_de.txt).

All the versions before 1.0 are called beta (beta 1 ... beta 30).

INSTALLATION - WINDOWS
1. Download YAEC-1.5-win-x64-setup.exe from the "Releases" page on GitHub and run it.
   If SmartScreen shows a warning: "More info" -> "Run anyway".
   It installs into Documents\YAEC (no administrator rights needed), with
   Start menu and desktop shortcuts and the uninstaller.
2. Portable alternative: YAEC-1.5-win-x64-portatile.zip, extract it into a
   folder where you can write (e.g. Documents\YAEC) and run YAEC.exe.
   32-bit Windows: YAEC-1.5-win-x86-setup.exe or YAEC-1.5-win-x86-portatile.zip.
3. Developers only: to build it yourself, extract the source zip and
   double-click "compila.bat". You do not need it to use YAEC.

INSTALLATION - LINUX (all distributions, the same program)
YAEC runs with Mono (the open-source .NET runtime maintained by WineHQ).
- Debian, Ubuntu, Mint: download yaec_1.5_amd64.deb and install it with
      sudo apt install ./yaec_1.5_amd64.deb
  (apt installs Mono as well). Start it from the applications menu or with
  the command "yaec".
- Fedora:   sudo dnf install mono-complete
  Arch:     sudo pacman -S mono
  openSUSE: sudo zypper install mono-complete
  then extract YAEC-1.5-linux-x64-portatile.tar.gz (ARM: YAEC-1.5-linux-arm64-portatile.tar.gz, YAEC-1.5-linux-arm-portatile.tar.gz) and run ./install.sh (installs into
  ~/.local, no root needed), or simply ./yaec from the extracted folder.
- Raspberry Pi (Raspberry Pi OS 64-bit, Pi 4 or 5): download
  yaec_1.5_arm64.deb and install it with
      sudo apt install ./yaec_1.5_arm64.deb
- Data: ~/.local/share/YAEC/data

INSTALLATION - macOS (experimental)
1. Install Mono for macOS (https://www.mono-project.com/download/stable/ or
   the "Framework Mono" package from WineHQ) and XQuartz (https://www.xquartz.org):
   on macOS the Windows Forms window of Mono is drawn through X11.
2. Download YAEC-1.5-osx-arm64.dmg (Apple Silicon) / YAEC-1.5-osx-x64.dmg (Intel), open it and drag YAEC into Applications.
   The first time, right-click YAEC -> Open (the app is not signed by Apple).
- Data: ~/Library/Application Support/YAEC/data

CHECKING THE DOWNLOADED FILES (SHA-256)
The release page also has SHA256SUMS.txt with the SHA-256 fingerprint of every
package. Compare it with the fingerprint of the file you downloaded:
- Windows (PowerShell): Get-FileHash .\YAEC-1.5-win-x64-setup.exe -Algorithm SHA256
  or in the command prompt: certutil -hashfile YAEC-1.5-win-x64-setup.exe SHA256
- Linux:  sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS:  shasum -a 256 -c --ignore-missing SHA256SUMS.txt
If the two values differ, do not install the file: download it again from
https://github.com/ic8tem/YAEC/releases

LANGUAGE
- The program starts in English. The language is chosen in the general settings
  at the top of the "Tracking and general settings" tab, menu "Lingua / Language":
  English, Italiano, Deutsch, Francais, Espanol, Portugues, Chinese, Japanese,
  Hindi, Korean, Indonesian, Russian, Ukrainian, Afrikaans, Bengali, Arabic
  (right to left), Turkish.
  The new language is applied at once: the window is rebuilt in the same
  place, on the same tab, without restarting the program.
- The callsign entered in the general settings is shown in the window title.

SETTINGS
- Windows: settings and all the other data are kept in the "data" subfolder
  next to YAEC.exe (put the program in a folder where you can write, e.g.
  Documents\YAEC, not in Program Files). At the first start the data of the
  beta versions (%APPDATA%\LunaCalc and the program folder) are moved there.
- Linux: ~/.local/share/YAEC/data   macOS: ~/Library/Application Support/YAEC/data
- The LoTW password is stored encrypted for the current user (DPAPI on
  Windows, the Mono key store on Linux and macOS).

WHAT'S NEW IN 1.5
- New Radar GRAVES tab (group Link): is the Moon in the beam of the French
  radar (sector and step), the common window with you, Doppler and delay of
  the echo, the next beam pass on the Moon, the sky seen from GRAVES with the
  four sectors, the 24 UTC hours reconstructed with the detail of the next
  10 seconds, how to hear the echo (NJ9R, PE1ITR) and the sources.
- Two new languages: Danish and Tagalog - 28 in all, manuals included.
- The list of active stations is also published as attivi.json and
  attivi.txt (branch "attivi") for LunaCalc Mobile and other programs.

WHAT'S NEW IN 1.4
- Active stations: the DX callsign box gets a thick orange border if the
  station has written in the N0UK EME chat in the last 90 days; the tooltip
  shows the date of the last message. The list is updated once a day on
  GitHub (only callsign and date).
- Font type: 10 recommended fonts for Windows, Linux and macOS, tested tab by
  tab, instead of every installed font.
- New packages: 32-bit Windows (setup and portable zip) and Raspberry Pi OS
  64-bit (yaec_1.5_arm64.deb).
- Sky view: dashed purple boxes around the area your antenna can point at.
- Distance and Dgrd: a fourth useful day; clicking a day in the chart also
  highlights it in the strip of days.
- Number boxes with a rounded frame and bigger arrows one above the other.
- Dialog buttons at the edges: two buttons left and right, three buttons
  left, centre and right (they can no longer overlap).
- Acknowledgements box at full width; in narrow windows no text ends up
  under the buttons of the main screen.

WHAT'S NEW IN 1.3
- Nine new languages: Dutch, Estonian, Latvian, Lithuanian, Swedish,
  Norwegian (bokmal), Icelandic, Hebrew and Urdu - 26 in all, manuals
  included. Licence and README in every language in the "lingue" folder;
  the installer shows the licence in the Windows language when it can.
- EME budget: TX connectors and RX connectors fields (NJ9R's advice, 0.11 dB
  each); a draggable separator between the left column and the station
  diagram (double-click: initial width).
- GRAVES button: the French radar (143.050 MHz, JN27SI) becomes the DX, to
  test the receiver and the pointing with its Moon echo.
- Reconnaissance of my obstacles: Grey veil checkbox (off = the map is shown
  as it is).
- FORMULA DEBUG is now called Calculation check; ABOUT & CREDITS is
  translated in every language.
- Fixes: pastel colour schemes applied correctly; the CALL3.TXT window closes
  by itself after an update; dialog buttons no longer overlap; technical
  chapters of the user manual translated into Bengali, Arabic and Turkish.

WHAT'S NEW IN 1.2.1
- The AUTHOR CONTACTS AND ACKNOWLEDGEMENTS page opens correctly again on
  Linux and macOS (in 1.2 it showed a GDI+ error under Mono).
- The note about transverters points to the right section (§ 1.7.1).

WHAT'S NEW IN 1.2
- EME budget: indicators My EIRP and DX EIRP (with the antenna power and
  the TX losses), path loss, S/N me -> DX and DX -> me (with the Sun when it
  is calculated, and in 2500 Hz). The equations of the Word document use one
  size for the whole document, so the longest one stays within the margins.
- Program style: filled buttons and flat drop-down lists with rounded borders
  in every colour scheme; value boxes with thin side-by-side arrows; eight
  pastel colour schemes (light blue, orange, aquamarine, green, pink, lilac,
  indigo, brown).
- Distance and Dgrd: the three best days in date order (the star keeps the
  rank). Blurred sky background on the start screen and on the contacts page.
  FORMULA DEBUG translated in every language.
- THEORY AND TIPS ON EME manual: the advice of Relu NJ9R ("2M EME the easy
  way"): GRAVES radar as test bench, compass, mast camera and error log,
  connectors, published antenna gain and dBd, JT65B and MAP65 settings,
  polarization relay never switched in TX; new sections 1.13 "From the first
  reception to the QSO" and 1.14 "Text chats on the Internet" (N0UK, EMEchat
  of EA8DBM, HB9Q logger, ON4KST); VE7BQH antenna tables in the preface.
  Tab names translated in the manuals of all languages.
- AUTHOR CONTACTS AND ACKNOWLEDGEMENTS: thanks to NJ9R, a memory of Giorgio
  IK1UWL, and to the authors of articles and of hardware and software
  products found in EME stations all over the world; each callsign has a
  tooltip with the works and where they are cited in the manual.

WHAT'S NEW IN 1.1
- Live position and +- 24h (formerly Tracking) also shows the past and the
  future: choose the day in the calendar and the time by dragging the red
  line of the 24 hours; the frequency moved into the Echo and frequencies box.
- DX callsign box next to the locator. CALL3.TXT is downloaded at start-up
  from W7GJ and from WSJT-X Improved, merged by callsign (W7GJ wins) and
  refreshed every 7 days; the callsign fills in the locator, and the CALL3
  button copies the file into the WSJT-X folder.
- Distance and Dgrd: no ranking column, declination overlaid on the chart,
  table rows colored like the chart bands, optional green usable hours.
- Tickboxes in the program's style, with the color of each tab.
- Coaxial cables: drop-down lists sorted by diameter; the table also sorts by
  name, manufacturer and type; sources and manufacturers translated.
- EME budget: only the 60 s modes (JT65, Q65-60A, Q65-60B, Q65-60C, custom);
  the station diagram adapts to long texts.
- USER MANUAL (renamed) reviews every screen; THEORY AND TIPS ON EME has the
  author's preface, numbering from 1 and the solar noise formulas.
- Linux and macOS: HTTPS checked against the system certificates (NOAA and
  SourceForge downloads work even without ca-certificates-mono).

WHAT'S NEW IN 1.0.1
- The GitHub release page has SHA256SUMS.txt with the SHA-256 fingerprints
  of all the packages, to check that the downloaded files are the original
  ones (see "Checking the downloaded files" above).

WHAT'S NEW IN 1.0
- First stable version, for Windows, Linux and macOS. The installer for
  Windows and the packages for Linux (.deb and .tar.gz) and macOS (.dmg) are
  built automatically on GitHub. The previous versions are called beta.
- New tab "Luna sul mondo" (Planning): world map with the land coloured by
  the Moon's elevation seen from each place, at the same moment as "Posizione
  della Luna"; mouse: elevation, azimuth, distance; click: DX station; your
  antenna status (pointable, outside limits, below horizon).
- The manual is split into two tabs: MANUALE D'USO APPROFONDITO (the program)
  and TEORIA E CONSIGLI SULL'EME (chapters 3 and 4).
- Tab groups "Aiuto e tools" and "Credits and thanks"; the experimental Excel
  tab is now "Export in Excel dei calcoli".
- No more "margin on the mode": the EME budget, DEBUG FORMULE and Tracking
  show the S/N referred to 2500 Hz with the mode's typical threshold as a
  reference; the manual lists the JT65 limits (K1JT 2006: -24, Deep Search
  -28, averaging -29, sync -30, RO/RRR/73 -32 dB).
- Manual: Q65-60A/B/C table for TX1 - TX6 (theory only), Faraday rotation,
  summary of SM5BSZ "Selecting Polarisation for EME", yellow warning on
  theoretical limits, JT65 sources aligned with the inconsistency noted.
- Coaxial cables: sortable by loss; new Messi & Paoloni (Hyperflex 5,
  Airborne 5/10/13), SSB (SeaTex 5/7/10/15 for marine use, Aircom Premium),
  Belden (RG-8/U 8237, 9913) and Tasker cables; Aircell 7 and Ultraflex
  updated from current datasheets.
- Unit boxes without leftover text with large fonts (e.g. Calibri 125 %).

WHAT'S NEW IN beta 30
- Distance and Dgrd tab: under the chart, the curve of the Moon's
  declination, with the northern and southern maxima and their dates; green
  area = Moon on the side of your hemisphere (higher and up for more hours),
  orange = opposite hemisphere. It can be hidden with the "Curva della
  declinazione" box.
- Manual, section 3.4: new paragraph "The Moon's declination" (monthly
  cycle, maximum elevation and hours above the horizon, links between
  hemispheres, 18.6-year cycle, link with sky noise), in all 17 languages.
- Manual, Sagittarius paragraph: the I2FAK figures are now stated for
  northern Italy (about 45 N) and for a minimum elevation of 5 degrees
  (about 6 hours above 5 degrees, about 7 hours above the horizon).

WHAT'S NEW IN beta 29
- Manual (MANUALE D'USO APPROFONDITO) fully translated into all 17
  languages: before, from section 3.6.1 on the other languages showed the
  English text, and sections 3.3, 3.4 and 3.6 used the old text.
- Formulas in Equation Editor style also in 3.5 (beam width), 3.5.1
  (geomagnetic latitude) and in the captions of 3.6 (c, Moon radius, k).
- New section 3.7.3 "The TX/RX sequencer": relay, PA and radio order,
  timing, relay isolation and preamp protection (source: Giorgio Marchi
  IK1UWL, "EME - Guida operativa", 2012).
- "Salva in Word (.docx)" button in the manual: Word document for printing
  with table of contents (Word asks to update the fields when it opens it:
  answer Yes), chapters on a new page, page numbers, Word (Office Math)
  formulas, tables, coloured boxes, side-by-side columns and the chart.
- Divider between index and text of the manual at 25 % of the width.
- Polarization warning: when the locators are entered, if Dpol reaches 60
  degrees or more within 24 hours (Moon up for both stations), a message
  gives the maximum, the time and the loss with linear antennas (source:
  video interviews with Franco I2FAK on YouTube).

WHAT'S NEW IN beta 28d
- Fixed: beta 28c closed by itself at start-up (the new boxes with the unit
  inside, e.g. "3 m", started an endless layout loop).
- Unexpected errors are no longer silent: a message shows the error and it is
  written to data\errori.txt (send that file to the author).
- Main screen, DGRD box: the bar goes from the minimum to the maximum of the
  Dgrd chart (Distance and Dgrd tab), with both values under the bar and the
  current value at the top right.

WHAT'S NEW IN beta 28c
- Start screen as in the approved mockup: the green bar fills from left to
  right in 6 seconds ("x s of 6"), smaller Moon, the yellow line right under
  the title, the patronage with the logo in its own band at the bottom right.
- AUTHOR CONTACTS AND ACKNOWLEDGEMENTS: the Moon instead of the blue badge,
  the rainbow sky as background, the acknowledgements card (IZ0JNY Ivan for
  the patronage of the ARI "Valle del Liri" section; beta-testers IZ7NLJ
  Fabio, I2NOY Maurizio, IK4GNG Gilberto).
- New-style buttons everywhere: blue pills (SCELTA BANDE, Calcola tabella,
  AGGIORNA DAL WEB), white pills with a border (ADESSO, USA LA RIGA DELLA
  TABELLA), toggle boxes (ATTIVA VISIONE DATI COMPLESSI, CALCOLI
  APPROFONDITI); rounded drop-downs in the tracking settings bar, no grey
  patches on the white bars and cards.
- EME budget as in mockup 7: the two station cards side by side, indicators
  with a large value and a small unit, a drawn table with TRANSMISSION /
  PATH / RECEPTION bands, the station diagram that always fills its column
  and sizes its boxes from the text (90 - 150 % fonts), units inside the
  boxes ("3 m", "17,0 dBi"), transverter list (models of the manual table or
  "custom", noise figure and gain filled in automatically).
- Moon position: three white cards, CONFRONTA in the DX card, live pills
  (time, Moon from me and from the DX, Dgrd, Dpol, CFOM), padlocks on the
  fixed columns, new Columns window with switches, "DX" and "new" tags.
- Solar noise: new Learmonth (Australia, BoM) quiet-Sun source, read from
  the daily ASWFC bulletin; spectrum 100 - 20 000 MHz and 5 - 1000 SFU with
  the dashed 432 MHz line.
- COAXIAL CABLES: pill filters, search with the magnifier, drawn table with
  equivalent names under the name, type pills, checkboxes coloured like the
  curves, chart 1 - 20 dB/100 m, length and band inside the "Loss" card;
  "Remove the checked custom cables" moved to the right-click menu.
- Distance and Dgrd: the chosen day is light blue with a blue border; DEBUG
  FORMULE: wavelength and Moon cross-section together in 2.1.

WHAT'S NEW IN beta 28b
- Manual (MANUALE D'USO APPROFONDITO): the "Tabs" chapter is gone, so the
  chapters are now 1 Installation, 2 User guide, 3 How it works, 4 Sources,
  data and credits; every reference (manual, tooltips, licence, contacts)
  is renumbered (e.g. locator 2.2, budget 3.6, preamplifier 3.7, Doppler
  3.10, pointing 3.11).
- Formulas in Equation Editor style for MNR (2.5 and 3.3), T(f) and Dgrd
  (3.4) and the whole EME budget (3.6, now also NF from the MDS and the Tsys
  details); in Italian and English the plain-text formulas are gone.
- Layout as in the approved mockups: bold section titles with a rule,
  light-blue subsections, text with regular spacing, side-by-side tables,
  coloured bars ("Worsens S/N by"), highlighted rows, red/green values,
  coloured example locator, "Sources (numbering of section x.y)" heading,
  green "new" tag in the index, large transverter chart, blue/yellow boxes.
- Preamplifier (3.7): IC-746PRO (ARRL QST, May 2002) and FT-897 (RadCom,
  April 2003) added as sources [14] and [15]; three-term Friis formula with
  Te; worked example; Kuhne TR 144 H +40 with 25 dB gain (it contains the
  MKU 144 G2 module); footnote marks no longer break the tables.
- Credits moved from the ABOUT & CREDITS tab to the chapter "Sources, data
  and credits" (the ABOUT tab now points there).
- My obstacle survey: without a locator the map is centred on JJ00AA and a
  click chooses the 10-character locator of the station.
- All the program messages (invalid locator, file errors, tabs enabled by
  CALCOLI APPROFONDITI, ...) use the style of the closing window instead of
  the Windows message box; the LoTW, band choice, custom cable and column
  dialogs have the same white page and grey button bar.

WHAT'S NEW IN beta 28a
- Closing window: the Yes and No buttons are always visible (the window now
  computes its height including the button bar).
- Language, font and font size change at once, without restarting: the
  window is rebuilt in the same position and on the same tab.
- My obstacle survey: a click outside the circle of the cardinal points takes
  the 10-character locator of that point, shows a red marker and asks whether
  to use it; Yes applies it everywhere (height looked up again on the web,
  map centred on the new point), No keeps the old locator.
- Sky view: the yellow dashed line of the antenna limits is twice as thick.
- Main screen: the CALCOLI APPROFONDITI box and the "suitable for obstacles"
  label no longer overlap or get cut with enlarged fonts (125 - 150 %).
- COAXIAL CABLES: eight new cables - H1000 (Belden, merged with Ecoflex 10 /
  LMR-400), H100, RT5020 and XT2400 (Prospecta), LLF195 (Qaxial), RG-142 and
  RG-393 (MIL-C-17), RG-115 (R.F. elettronica) - with their sources; the cable
  tooltips use the dark style of the program.
- LICENCE page: line spacing, word spacing and title alignment as in the
  approved mockup; condition 5 now refers to the "Sources, data and credits"
  chapter of the manual; condition 10 to the renamed tab.
- The AUTHOR CONTACTS tab is now AUTHOR CONTACTS AND ACKNOWLEDGEMENTS (the page
  itself follows in beta 28c).
- With CALCOLI APPROFONDITI off, the tooltip now says that Solar noise,
  experimental-EXCEL and DEBUG FORMULE turn grey.

WHAT'S NEW IN beta 27
- Bands up to 432 MHz only (50, 70, 144, 222, 432 MHz).
- Start-up screen with the logo of the ARI "Valle del Liri" Section and its
  patronage; closing window with a thank-you line.
- New languages: Bengali, Arabic (right to left), Turkish -> 17 languages.
  The interface is translated in all 17 languages. The new manual chapters
  (3.2, 4.6, 4.7, 4.8, 4.10, 4.11, 5.4, 5.5) are in Italian and English; the
  other languages show them in English. In Bengali, Arabic and Turkish the
  older manual chapters are also shown in English.
- Main screen rebuilt exactly as the approved mockup: white settings bar
  (Callsign, Language, Colours, Font size in %, Font with the list of installed
  fonts), six cards (my locator, DX locator, frequency, UTC, local and DX time),
  full-colour status band with countdown, compass and elevation with yellow
  limits and the DX in orange, four data cards, 24-hour bars for the UTC day.
- LICENCE page drawn as the approved mockup (seal, four principle cards,
  conditions in two columns, "In short" box).
- The manual no longer contains screenshots of the program.
- EME budget modes: all five Q65 "A" submodes with the thresholds of the
  "Quick-Start Guide to Q65" (K1JT, G4WJS, K9AN, IV3NWV, 2021): Q65-15A -22.2,
  Q65-30A -24.8, Q65-60A -27.6, Q65-120A -30.8, Q65-300A -33.8 dB (50 % decode,
  no AP, 2500 Hz). New manual section 4.12 "Digital modes for EME: Q65 and
  JT65": submodes, Doppler spread, recommended submodes, JT65A / Q65-60A
  comparison by K1JT, Q65 coding process by G4JNT, WSJT-X settings, sources.
- Main screen: four coloured cards (Moon; Echo and frequencies with CFOM TX/RX;
  Sky and geometry with GO TO SKY VIEW; estimated S/N with the margin on the
  chosen mode, the IN-DEPTH CALCULATIONS box and GO TO CALCULATIONS); locators
  up to 14 characters with the position accuracy; font chooser next to the
  font sizes; all tooltips in a new dark style with a coloured title.
- "Pointing map" renamed "Reconnaissance of my obstacles": sliders for opacity and
  tone of the grey; the grey tone is shared with the Sky view.
- Distance and Dgrd: click a day in the strip to highlight its 24 hours.
- Moon position: "Columns" button with the optional columns (choice saved,
  also used by Export CSV); new columns DX distance, Sun-Moon, Moon illuminated.
- EME budget redesigned: station cards, six indicators, TX/RX system diagram
  (antenna, antenna-relay cable, coax relay, PA and its cable, preamplifier,
  downlead cable, optional transverter, cables, radio with MDS and mode).
- Solar noise redesigned: indicators, data sources (NOAA RSTN, NOAA F10.7,
  Penticton F10.7, custom), station table, log-log solar flux spectrum.
- DEBUG FORMULE laid out like a Word document, with formulas in Equation
  Editor style; copy to clipboard or save as Word (.docx).
- New tabs in Help: COAXIAL CABLES (database with interpolation, comparison,
  custom cables), AUTHOR CONTACTS, LICENCE.
- The manual is now inside the program (MANUALE D'USO APPROFONDITO): index,
  search, formulas, live screenshots, new chapters on the Maidenhead locator,
  preamplifier and transverter, coaxial cables, Doppler/CFOM/CAT, pointing
  accuracy, SM5BSZ literature and other EME tools. No more PDF manuals.

WHAT'S NEW IN beta 26
- New tab selection on two levels: groups in the first row (Live, Planning,
  Link, Log, Help) and the tabs of the group in the second row.
- Colour schemes: Light, Night (blue tones) and the new Black.
- Distance and Dgrd: colour and thickness of the two curves can be changed
  (bar above the chart); days with the Moon near the Sun marked with a sun
  symbol (red within 3 beamwidths, orange within 6), also in the cards, the
  calendar and the new "Sun-Moon" column.
- Warning of possible Polar Cap Absorption (PCA) and auroral absorption when
  your station or the DX is beyond the polar circles or in the auroral zone
  (geomagnetic latitude 60-75 deg, IGRF-14 dipole); the warning stays on the
  main screen. Literature in INSTRUCTIONS and ABOUT & CREDITS.
- Pointing map: checkbox to turn the blur of the out-of-limit zones on/off;
  moonrise/moonset labels no longer overlap the compass or leave the window.
- Sky view: light grey diagonal lines over the zones outside your antenna
  limits; labels no longer overlap each other or the legend.
- New DEBUG FORMULE tab (group Link, needs IN-DEPTH CALCULATIONS): every
  parameter and formula of EME budget and Solar noise, with the values
  substituted and the results; button to copy everything.
- Window and taskbar icon: the stylised Moon of the start-up screen.
- PDF manuals again, in all 14 languages: Latin-alphabet languages are written
  directly; Russian, Ukrainian, Chinese, Japanese, Hindi and Korean are printed
  with the Windows printer "Microsoft Print to PDF" (if it is missing, pages
  are stored as images). Single manual: YAEC.exe /manuale ja
  Errors, if any, in data\manuale_errore.txt.

WHAT'S NEW IN beta 25
- Distance and Dgrd tab renewed: the three best days in large cards, calendar
  of the days (colour = Dgrd, grey = no window, Moon phase, useful hours),
  chart with Dgrd (always negative, 0 dB at the bottom) and the daily mean
  distance overlaid, new and full Moon; short ranking (all the columns with
  IN-DEPTH CALCULATIONS).
- New "Pointing map" tab: aerial photo (Esri World Imagery) or topographic map
  centred on your station, with the sky in plan view on top: current Moon,
  path over the next 24 hours, moonrise and moonset, antenna limits in yellow
  and the areas outside the limits blurred in light grey. Drag the yellow
  handles to change the limits; mouse wheel or + / - for the zoom.

WHAT'S NEW IN beta 24
- Sky view: all labels twice as large.
- New interface languages: Russian, Ukrainian, Afrikaans (14 in total).
- compila.bat no longer creates the PDF manuals.

WHAT'S NEW IN beta 23
- New main screen: UTC time, local time and DX local time; status band
  (pointable / out of limits / below horizon / common window) with countdown;
  azimuth compass and elevation arc with the antenna limits and DX direction;
  Moon phase with rise and set; Dgrd and S/N bars; next-24-hours bar.
- Night colour scheme (dark blue) selectable for all tabs:
  general settings, "Colour scheme" = Night.
- Sky view: three background colour scales (rainbow, black to white, yellow to
  red); all labels have a dark outline so they can be read on any colour.

WHAT'S NEW IN beta 22
- All the program data are in the "data" subfolder next to YAEC.exe
  (impostazioni.txt, solar-radio-flux.json, lotw.adi, tiles\). Nothing is
  written to the Windows folders or to C:\Users. At the first start the data
  of older versions are moved there from AppData\Roaming\LunaCalc and from the
  program folder.
- During the 5 seconds of the green start-up bar the data folder is checked:
  missing or old files are downloaded again from their sources (NOAA solar
  flux; LoTW log if username and password are stored).
- compila.bat now also creates the PDF manuals with screenshots in Italian,
  English, French, German, Spanish and Portuguese (folder "manuali"):
  YAEC opens once per language - do not touch mouse and keyboard meanwhile.
  Single manual: YAEC.exe /manuale it   (it, en, fr, de, es, pt)
- Main screen: the boxes and BAND SELECTION at the top right of the window;
  the S/N box back at the bottom right.

WHAT'S NEW IN beta 21
- Main screen: "IN-DEPTH CALCULATIONS" box (was "COMPLEX CALCULATIONS"),
  LOCAL AZIMUTH / LOCAL ELEVATION, date next to its title, S/N box under
  BAND SELECTION.
- Font for the whole program (general settings, "Program font"; saved as
  font_nome in impostazioni.txt, applied at restart; "(automatic)" = the
  default font of the chosen language).
- New 70 MHz and 222 MHz bands (if you already saved a band choice, tick them
  in BAND SELECTION).

WHAT'S NEW IN beta 20
- With a 10-character locator the ground height above sea level of the station
  is taken automatically from the web: Open Topo Data (EU-DEM 25 m in Europe,
  SRTM 30 m elsewhere), or Open-Meteo (Copernicus DEM GLO-90) as an alternative.

WHAT'S NEW IN beta 19
- Title: "... by Costantino IC8TEM for <callsign>"; no default locators or callsign.
- Settings file next to the program; tab order: Tracking, Distance and Dgrd,
  Sky view, Moon position, EME budget, Solar noise, Map, ABOUT & CREDITS,
  INSTRUCTIONS, experimental-EXCEL.
- INSTRUCTIONS: every editable parameter explained; MNR and CFOM explained.
- experimental-EXCEL tab: the EME budget as a spreadsheet (green cells editable).
- WWL map: log download from LoTW (username and password saved in the settings).
- Hindi, Korean and Indonesian languages; auto-sized date on the main screen.

WHAT'S NEW IN beta 18
- EME budget: bandwidth up to 3000 Hz; noise figures next to the gains; with
  transverter gain 0 the transverter noise figure is ignored; new antenna
  temperature Tant (see the VE7BQH antenna tables, computed at 30 deg elevation).
- General settings moved to the top of the Tracking tab ("Tracking and general
  settings"); the ABOUT tab keeps credits and version history.
- Blurred waxing Moon in the background of the main screen.

WHAT'S NEW IN beta 17
- Tracking tab, top right:
  "CALCOLI COMPLESSI" (COMPLEX CALCULATIONS) box: shows the Moon position columns
  from Dpol onwards and all the rows of the EME budget (without it only the final
  row of each section is shown) and enables the Solar noise tab;
  "ATTIVA VISIONE DATI COMPLESSI NELLA SCHERMATA PRINCIPALE" box: estimated S/N
  now, at the bottom right of the Tracking tab;
  "SCELTA BANDE" (BAND SELECTION) button: bands from 50 MHz to 122 GHz used in the
  EME budget, Solar noise and frequency drop-downs.

WHAT'S NEW IN beta 14
- New name: YAEC - Yet Another EME Calc.
- User interface in 8 languages, English by default (start-up window included).
- Callsign in the window title.

All the details are in the INSTRUCTIONS and ABOUT tabs of the program.

-----------------------------------------------------------------------------
ITALIANO - Su Windows scarica YAEC-<versione>-Setup.exe dalla pagina Releases di
GitHub (https://github.com/ic8tem/YAEC/releases) ed eseguilo: installa YAEC in
Documenti\YAEC senza diritti di amministratore. Per Linux e macOS vedi sopra.
La lingua si sceglie in alto nella schermata principale.
Note storiche delle versioni beta:
Novita' beta 17: nel Tracciamento, in alto a destra, la casella "CALCOLI COMPLESSI",
la casella "ATTIVA VISIONE DATI COMPLESSI NELLA SCHERMATA PRINCIPALE" e il
pulsante "SCELTA BANDE".
Novita' beta 18: Budget EME con banda passante fino a 3000 Hz, temperatura d'antenna
Tant (tabelle VE7BQH), impostazioni generali nella linguetta Tracciamento,
Luna crescente sfocata sullo sfondo della schermata principale.
Novita' beta 19: titolo "a cura di Costantino IC8TEM per <nominativo>", impostazioni
nella cartella del programma, nuovo ordine delle linguette, ISTRUZIONI complete,
linguetta sperimentale-EXCEL, download da LoTW, lingue hindi, coreano, indonesiano.
Novita' beta 20: con un locator di 10 caratteri la quota del terreno della stazione
viene presa dal web (Open Topo Data / Open-Meteo).
Novita' beta 21: CALCOLI APPROFONDITI, AZIMUT ed ELEVAZIONE LOCALE, data accanto al
titolo, riquadro S/N sotto SCELTA BANDE, scelta del carattere per tutto il
programma (si applica al riavvio), nuove bande 70 MHz e 222 MHz.
Novita' beta 22: tutti i dati nella sottocartella "data" accanto a YAEC.exe (spostati
da AppData e dalla cartella del programma), controllati e riscaricati durante la
barra verde; compila.bat crea anche i manuali PDF con le schermate in sei lingue
(cartella "manuali"; non toccare mouse e tastiera mentre YAEC si apre sei volte);
caselle e SCELTA BANDE in alto a destra della finestra, S/N in basso a destra.
Novita' beta 23: nuova schermata principale (ora locale del DX, fascia di stato con
conto alla rovescia, bussola, arco dell'elevazione, fase lunare, barra delle 24
ore); tema notte per tutte le linguette (Schema di colori = Notte); Volta
celeste con tre scale di colori e scritte bordate.
Novita' beta 24: scritte della Volta celeste grandi il doppio; lingue russo, ucraino e
afrikaans; compila.bat non crea piu' i manuali PDF.
Novita' beta 25: linguetta Distanza e Dgrd rinnovata (tre giorni migliori, calendario,
grafico con Dgrd negativa e zero in basso e distanza media sovrapposta); nuova
linguetta Mappa di puntamento (mappa aerofotografica o topografica, Luna,
percorso, sorgere e tramonto, limiti dell'antenna da trascinare con il mouse).
Novita' beta 27: bande fino a 432 MHz; schermata di avvio con il logo e il
patrocinio della Sezione ARI "Valle del Liri"; finestra di chiusura con il
ringraziamento; lingue bengalese, arabo e turco (17 lingue); schermata principale
con quattro riquadri colorati, VAI AI CALCOLI e VAI A VOLTA CELESTE, locator fino a
14 caratteri, scelta del tipo di carattere, fumetti scuri; Ricognizione dei miei
ostacoli (ex Mappa di puntamento) con opacita' e tono del grigio; giorno
evidenziato in Distanza e Dgrd; pulsante Colonne nella Posizione della Luna; Budget
EME con lo schema dell'impianto TX/RX; Rumore solare con fonti, indicatori e
spettro; DEBUG FORMULE in stile Word con salvataggio .docx; nuove linguette CAVI
COASSIALI, CONTATTI DELL'AUTORE e LICENZA D'USO; manuale dentro il programma
(MANUALE D'USO APPROFONDITO), senza piu' i PDF; interfaccia tradotta in tutte
le 17 lingue, capitoli nuovi del manuale in italiano e inglese (nelle altre
lingue appaiono in inglese);
schermata principale rifatta alla lettera come il bozzetto approvato (fascia
bianca delle impostazioni con Caratteri in % e Tipo di carattere, sei schede in
alto, fascia di stato piena, bussola ed elevazione con limiti gialli e DX in
arancio, quattro riquadri, barre delle 24 ore del giorno UTC); linguetta
LICENZA D'USO disegnata come il bozzetto; manuale senza schermate del programma;
nel Budget EME i cinque sottomodi Q65 "A" con le soglie della "Quick-Start Guide
to Q65" (da Q65-15A -22,2 a Q65-300A -33,8 dB); nuovo argomento del manuale 4.12
"I modi digitali per l'EME: Q65 e JT65" (sottomodi, Doppler spread, sottomodi
consigliati, confronto JT65A / Q65-60A di K1JT, codifica di G4JNT, fonti); script facoltativo YAEC.iss per
creare l'installazione con Inno Setup.
Novita' beta 28a: finestra di chiusura con i pulsanti Si' e No sempre visibili; lingua,
carattere e grandezza dei caratteri cambiano subito, senza riavviare (la finestra
si ricostruisce nella stessa posizione e sulla stessa linguetta); clic fuori dal
cerchio della Ricognizione dei miei ostacoli per scegliere un nuovo locator a 10
caratteri, con segnaposto e domanda Si'/No; linea gialla dei limiti piu' spessa
nella Volta celeste; casella CALCOLI APPROFONDITI ed etichetta "adatto agli
ostacoli" che non si sovrappongono con i caratteri ingranditi; otto cavi nuovi
(H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) e fumetti dei cavi
nello stile scuro; licenza con interlinea e spaziatura come il bozzetto,
condizioni 5 e 10 aggiornate; linguetta CONTATTI DELL'AUTORE E RINGRAZIAMENTI.
Novita' beta 26: linguette su due livelli (gruppi In diretta, Pianificazione,
Collegamento, Log, Aiuto e, sotto, le linguette del gruppo); schema di colori
Nero e schema Notte nei toni del blu; Distanza e Dgrd con colore e spessore
delle due curve modificabili e giorni con il Sole vicino alla Luna (simbolo del
Sole); avviso di possibile PCA e assorbimento aurorale per la tua stazione e
per il DX; casella per la sfocatura nella Mappa di puntamento e scritte di
sorgere e tramonto sistemate; righe diagonali grigie fuori dai limiti nella
Volta celeste e scritte che non si sovrappongono; nuova linguetta DEBUG FORMULE
(con CALCOLI APPROFONDITI); icona con la Luna; compila.bat crea di nuovo i
manuali PDF, in tutte le 14 lingue (YAEC si apre e si chiude da solo una volta
per lingua: non toccare mouse e tastiera nel frattempo).
Novita' beta 28b: manuale senza il capitolo "Le linguette" (capitoli e rimandi
rinumerati in tutto il programma); formule di MNR, T(f), Dgrd e del Budget EME
in stile Equation Editor; impaginazione come i bozzetti (titoli, tabelle
affiancate, barre, righe evidenziate, colori, locator d'esempio, "Fonti
(numerazione del capitolo …)", etichetta "nuovo" nell'indice, abaco grande);
prove di IC-746PRO (ARRL) e FT-897 (RadCom) nel preamplificatore; Kuhne TR 144
H +40 a 25 dB; crediti spostati nel capitolo "Fonti, dati e crediti"; mappa
della Ricognizione dei miei ostacoli centrata su JJ00AA quando manca il locator;
tutti i messaggi e le finestre di dialogo nello stile della finestra di chiusura.
Novita' beta 28c: schermata di avvio con la barra che si riempie in 6 secondi;
CONTATTI DELL'AUTORE E RINGRAZIAMENTI con la Luna, il cielo arcobaleno e i
ringraziamenti; pulsanti a pastiglia e tendine arrotondate; Budget EME come il
bozzetto 7 (schede delle stazioni, indicatori, tabella disegnata, schema che si
adatta ai caratteri, unita' dentro le caselle, elenco dei transverter);
Posizione della Luna con schede, pastiglie in diretta, lucchetti e finestra
Colonne con interruttori; Rumore solare con la fonte Learmonth (BoM) e assi
100 - 20 000 MHz; CAVI COASSIALI con filtri a pastiglia, tabella disegnata e
grafico 1 - 20 dB; giorno scelto azzurro in Distanza e Dgrd; lambda e sigma
insieme in DEBUG FORMULE.
Novita' beta 28d: corretta la chiusura all'avvio della beta 28c; errori non previsti in un
messaggio e nel file data\errori.txt; riquadro DGRD con minimo e massimo del
grafico e valore di adesso.
Novita' beta 29: manuale tradotto per intero in 17 lingue; formule 3.4, 3.5, 3.5.1 e 3.6
in stile Equation Editor; nuovo 3.7.3 sul sequenziatore TX/RX (IK1UWL); salvataggio
del manuale in Word (.docx); barra dell'indice al 25 %; avviso Dpol oltre 60° (I2FAK).
Novita' beta 30: curva della declinazione della Luna sotto il grafico di Distanza e Dgrd;
nuovo paragrafo del manuale sulla declinazione (17 lingue); dati I2FAK sul Sagittario
precisati (Nord Italia, sopra i 5° di elevazione).
Novita' 1.0: prima versione stabile per Windows, Linux e macOS, con installatore per
Windows e pacchetti per Linux e macOS creati su GitHub; le versioni precedenti si
chiamano beta. Nuova linguetta Luna sul mondo; manuale diviso in MANUALE D'USO
APPROFONDITO e TEORIA E CONSIGLI SULL'EME; gruppi Aiuto e tools e Credits and thanks;
S/N in 2500 Hz al posto del margine sul modo, con i limiti del JT65 nel manuale;
tabella Q65 TX1 - TX6, rotazione di Faraday e sintesi di SM5BSZ nel manuale; cavi
ordinabili per perdita e nuovi cavi Messi & Paoloni, SSB, Belden e Tasker.
Novita' 1.0.1: nella pagina della release il file SHA256SUMS.txt con le impronte
SHA-256 dei pacchetti, per verificare che i file scaricati siano quelli originali.
