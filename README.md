# YAEC – Yet Another EME Calc

*a cura di Costantino IC8TEM*

Moon position, pointing windows, EME link budget, sky and solar noise calculator for radio amateurs, in 17 languages.
Windows, Linux and macOS (Linux and macOS with Mono).

Posizione della Luna, finestre di puntamento, budget del collegamento EME, rumore del cielo e del Sole per radioamatori, in 17 lingue.

## Features

[English](#english) · [Italiano](#italiano) · [Deutsch](#deutsch) · [Français](#français) · [Español](#español)

### English

YAEC puts in one program everything you need to run an EME (Earth–Moon–Earth) station on 50, 70, 144, 222 and 432 MHz, especially when the station has limits: an antenna without elevation, a rotator with limited travel, obstacles that hide part of the sky. It tells you not only where the Moon is, but whether **your** antenna can really reach it, when, and under which conditions.

**Live**
- **Live position and +- 24h** – main screen updated every second: your locator and the DX's (4 to 14 characters), frequency, UTC, local and DX clocks, a status band (pointable, outside the limits, below the horizon, common window) with countdown, compass and elevation arc. Typing the DX callsign fills in its locator from CALL3.TXT.
- **Reconnaissance of my obstacles** – aerial or topographic map centred on your station with the sky drawn on it: Moon position, its path over the next 24 hours, rise and set, antenna limits that you drag with the mouse.
- **Sky view** – the sky seen from your QTH with the sky-noise colours at your frequency, antenna limits, the DX horizon, radio sources, the Sun and the Moon path.

**Planning**
- **Distance and Dgrd** – 7 to 61 days of Dgrd and mean Moon distance, with the declination overlaid, perigee, apogee, new Moon, the three best days (in date order) and a warning for the days when the Moon is close to the Sun. Only the hours in which the Moon is really pointable with your limits are counted.
- **Moon position** – table for the chosen period, coloured by pointability, with the common windows for you and the DX; CSV export for Excel.
- **Moon over the world** – world map coloured by the Moon elevation seen from every place; one click makes that point the DX.

**Link**
- **EME budget** – link budget for every band, stored band by band: six indicators (link possible, my EIRP, DX EIRP, path loss, S/N me → DX and DX → me, also with the Sun and in 2500 Hz), the full table of steps and an interactive diagram of the station (antenna, cables, relay, preamplifier, transverter, radio). Ground gain for antennas without elevation. Modes with a 60 s period: JT65, Q65-60A, Q65-60B, Q65-60C and custom.
- **Solar noise** – downloads the solar fluxes measured by the RSTN network (NOAA) and estimates how much the Sun raises the receiver noise near new Moon.
- **Export calculations to Excel** and **FORMULA DEBUG** – the budget as an Excel sheet, and every formula with the substituted values, step by step.

**Log, help and tools**
- **WWL map and ADIF** – Maidenhead grid with worked and confirmed squares from your ADIF file or downloaded directly from LoTW, also by band and EME only.
- **USER MANUAL** and **THEORY AND TIPS ON EME** – full manuals inside the program in every language, with clickable index, search, formulas and sources; exportable to Word. The theory manual includes the advice of experienced EME operators, a section on internet chats and the VE7BQH antenna tables.
- **COAXIAL CABLES** – database of 50 Ω cables with attenuation at 50, 70, 144, 222 and 432 MHz and the source of every value; sortable, filterable, with a loss calculator and a button that sends the cable to the EME budget. You can add your own cables.

**Also**
- CALL3.TXT downloaded from W7GJ and WSJT-X Improved, merged, refreshed every 7 days and copied into WSJT-X on request.
- Warnings for polar-cap and auroral absorption (PCA) when a station is beyond the polar circles or in the auroral zone.
- 17 languages; light, night (blue), black and eight pastel colour schemes.
- Moon positions accurate to about 0.01° (Meeus, ELP-2000/82), all calculations on your computer; data in a single `data` folder.

### Italiano

YAEC raccoglie in un solo programma tutto quello che serve per l'EME (Terra–Luna–Terra) in 50, 70, 144, 222 e 432 MHz, soprattutto quando la stazione ha dei vincoli: un'antenna senza elevazione, un rotore con escursione limitata, ostacoli che nascondono parte del cielo. Non dice solo dove si trova la Luna, ma se la **tua** antenna la raggiunge davvero, quando e in quali condizioni.

**In diretta**
- **Posizione live e +- 24h** – la schermata principale, aggiornata ogni secondo: locator tuo e del DX (da 4 a 14 caratteri), frequenza, orologi UTC, locale e del DX, fascia di stato (puntabile, fuori dai limiti, sotto l'orizzonte, finestra comune) con il conto alla rovescia, bussola e arco dell'elevazione. Scrivendo il nominativo del DX il locator arriva dal CALL3.TXT.
- **Ricognizione dei miei ostacoli** – mappa aerofotografica o topografica centrata sulla tua stazione con sopra il cielo: posizione della Luna, percorso nelle prossime 24 ore, sorgere e tramonto, limiti dell'antenna da trascinare con il mouse.
- **Volta celeste** – il cielo visto dal tuo QTH con i colori del rumore del cielo alla tua frequenza, i limiti dell'antenna, l'orizzonte del DX, le radiosorgenti, il Sole e il percorso della Luna.

**Pianificazione**
- **Distanza e Dgrd** – da 7 a 61 giorni di Dgrd e distanza media della Luna, con la declinazione sovrapposta, perigeo, apogeo, luna nuova, i tre giorni migliori (in ordine di data) e l'avviso dei giorni con la Luna vicina al Sole. Contano solo le ore in cui la Luna è davvero puntabile con i tuoi limiti.
- **Posizione della Luna** – tabella per il periodo scelto, colorata secondo la puntabilità, con le finestre comuni a te e al DX; esportazione CSV per Excel.
- **Luna sul mondo** – mappa del mondo colorata secondo l'elevazione della Luna vista da ogni località; con un clic il punto diventa il DX.

**Collegamento**
- **Budget EME** – bilancio del collegamento per ogni banda, memorizzato banda per banda: sei indicatori (collegamento possibile, EIRP mia e del DX, perdita di tratta, S/N io → DX e DX → io, anche con il Sole e in 2500 Hz), la tabella di tutti i passaggi e lo schema interattivo dell'impianto (antenna, cavi, relè, preamplificatore, transverter, radio). Ground gain per le antenne senza elevazione. Modi con periodo di 60 s: JT65, Q65-60A, Q65-60B, Q65-60C e personalizzato.
- **Rumore solare** – scarica i flussi solari misurati dalla rete RSTN (NOAA) e stima quanto il Sole alza il rumore del ricevitore vicino alla luna nuova.
- **Export in Excel dei calcoli** e **DEBUG FORMULE** – il budget come foglio Excel, e ogni formula con i valori sostituiti, passaggio per passaggio.

**Log, aiuto e strumenti**
- **Mappa WWL e ADIF** – reticolo Maidenhead con i quadrati lavorati e confermati dal tuo file ADIF o scaricati direttamente da LoTW, anche per banda e solo EME.
- **MANUALE D'USO** e **TEORIA E CONSIGLI SULL'EME** – manuali completi dentro il programma in tutte le lingue, con indice cliccabile, ricerca, formule e fonti; esportabili in Word. Il manuale di teoria comprende i consigli di operatori EME esperti, un paragrafo sulle chat via Internet e le tabelle delle antenne di VE7BQH.
- **CAVI COASSIALI** – database dei cavi a 50 Ω con l'attenuazione a 50, 70, 144, 222 e 432 MHz e la fonte di ogni valore; ordinabile, filtrabile, con il calcolo della perdita e il pulsante che porta il cavo nel Budget EME. Si possono aggiungere cavi personalizzati.

**Inoltre**
- CALL3.TXT scaricato da W7GJ e da WSJT-X Improved, unito, aggiornato ogni 7 giorni e copiato in WSJT-X a richiesta.
- Avvisi di assorbimento della calotta polare e aurorale (PCA) quando una stazione è oltre i circoli polari o nella zona aurorale.
- 17 lingue; schemi di colori chiaro, notte (blu), nero e otto pastello.
- Posizioni della Luna precise a circa 0,01° (Meeus, ELP-2000/82), tutti i calcoli sul tuo computer; dati in un'unica cartella `data`.

### Deutsch

YAEC vereint in einem Programm alles, was man für den EME-Betrieb (Erde–Mond–Erde) auf 50, 70, 144, 222 und 432 MHz braucht – vor allem, wenn die Station Einschränkungen hat: eine Antenne ohne Elevation, ein Rotor mit begrenztem Drehbereich, Hindernisse, die einen Teil des Himmels verdecken. Es zeigt nicht nur, wo der Mond steht, sondern ob **deine** Antenne ihn wirklich erreicht, wann und unter welchen Bedingungen.

**Live**
- **Position live und +- 24h** – Hauptbildschirm, jede Sekunde aktualisiert: dein Locator und der des DX (4 bis 14 Zeichen), Frequenz, UTC-, Orts- und DX-Uhr, Statusband (ausrichtbar, außerhalb der Grenzen, unter dem Horizont, gemeinsames Fenster) mit Countdown, Kompass und Elevationsbogen. Bei Eingabe des DX-Rufzeichens kommt der Locator aus CALL3.TXT.
- **Erkundung meiner Hindernisse** – Luftbild- oder topografische Karte um deine Station mit dem Himmel darüber: Mondposition, Bahn der nächsten 24 Stunden, Auf- und Untergang, Antennengrenzen, die man mit der Maus zieht.
- **Himmelsansicht** – der Himmel von deinem QTH aus mit den Farben des Himmelsrauschens auf deiner Frequenz, Antennengrenzen, DX-Horizont, Radioquellen, Sonne und Mondbahn.

**Planung**
- **Entfernung und Dgrd** – 7 bis 61 Tage Dgrd und mittlere Mondentfernung, mit überlagerter Deklination, Perigäum, Apogäum, Neumond, den drei besten Tagen (nach Datum) und einer Warnung für Tage mit dem Mond nahe der Sonne. Gezählt werden nur die Stunden, in denen der Mond mit deinen Grenzen wirklich erreichbar ist.
- **Mondposition** – Tabelle für den gewählten Zeitraum, nach Ausrichtbarkeit eingefärbt, mit den gemeinsamen Fenstern für dich und den DX; CSV-Export für Excel.
- **Mond über der Welt** – Weltkarte, eingefärbt nach der Mondelevation an jedem Ort; ein Klick macht den Punkt zum DX.

**Verbindung**
- **EME-Budget** – Verbindungsbilanz für jedes Band, bandweise gespeichert: sechs Anzeigen (Verbindung möglich, meine EIRP, EIRP des DX, Streckendämpfung, S/N ich → DX und DX → ich, auch mit der Sonne und in 2500 Hz), die vollständige Tabelle aller Schritte und ein interaktives Schema der Station (Antenne, Kabel, Relais, Vorverstärker, Transverter, Funkgerät). Bodengewinn für Antennen ohne Elevation. Betriebsarten mit 60-s-Periode: JT65, Q65-60A, Q65-60B, Q65-60C und benutzerdefiniert.
- **Sonnenrauschen** – lädt die vom RSTN-Netz (NOAA) gemessenen Sonnenflüsse und schätzt, wie stark die Sonne das Empfängerrauschen um Neumond erhöht.
- **Export der Berechnungen nach Excel** und **FORMEL-DEBUG** – das Budget als Excel-Blatt und jede Formel mit eingesetzten Werten, Schritt für Schritt.

**Log, Hilfe und Werkzeuge**
- **WWL-Karte und ADIF** – Maidenhead-Gitter mit gearbeiteten und bestätigten Feldern aus deiner ADIF-Datei oder direkt von LoTW geladen, auch nach Band und nur EME.
- **BENUTZERHANDBUCH** und **THEORIE UND TIPPS ZU EME** – vollständige Handbücher im Programm in allen Sprachen, mit anklickbarem Inhaltsverzeichnis, Suche, Formeln und Quellen; als Word exportierbar. Das Theorie-Handbuch enthält die Ratschläge erfahrener EME-Funker, einen Abschnitt über Internet-Chats und die Antennentabellen von VE7BQH.
- **KOAXIALKABEL** – Datenbank der 50-Ω-Kabel mit der Dämpfung bei 50, 70, 144, 222 und 432 MHz und der Quelle jedes Wertes; sortierbar, filterbar, mit Verlustrechner und einer Schaltfläche, die das Kabel ins EME-Budget übernimmt. Eigene Kabel können hinzugefügt werden.

**Außerdem**
- CALL3.TXT von W7GJ und WSJT-X Improved geladen, zusammengeführt, alle 7 Tage erneuert und auf Wunsch nach WSJT-X kopiert.
- Warnungen vor Polkappen- und Polarlichtabsorption (PCA), wenn eine Station jenseits der Polarkreise oder in der Polarlichtzone liegt.
- 17 Sprachen; Farbschemata hell, Nacht (blau), schwarz und acht Pastelltöne.
- Mondpositionen auf etwa 0,01° genau (Meeus, ELP-2000/82), alle Berechnungen auf deinem Computer; Daten in einem einzigen Ordner `data`.

### Français

YAEC réunit dans un seul programme tout ce qu'il faut pour trafiquer en EME (Terre–Lune–Terre) sur 50, 70, 144, 222 et 432 MHz, surtout quand la station a des contraintes : une antenne sans élévation, un rotor à débattement limité, des obstacles qui cachent une partie du ciel. Il ne dit pas seulement où se trouve la Lune, mais si **votre** antenne peut vraiment l'atteindre, quand et dans quelles conditions.

**En direct**
- **Position en direct et +- 24h** – l'écran principal, mis à jour chaque seconde : votre locator et celui du DX (4 à 14 caractères), fréquence, horloges UTC, locale et du DX, bande d'état (pointable, hors limites, sous l'horizon, fenêtre commune) avec compte à rebours, boussole et arc d'élévation. En saisissant l'indicatif du DX, son locator vient de CALL3.TXT.
- **Reconnaissance de mes obstacles** – carte aérienne ou topographique centrée sur votre station avec le ciel dessiné dessus : position de la Lune, trajet des 24 prochaines heures, lever et coucher, limites de l'antenne à faire glisser à la souris.
- **Voûte céleste** – le ciel vu de votre QTH avec les couleurs du bruit du ciel à votre fréquence, les limites de l'antenne, l'horizon du DX, les radiosources, le Soleil et le trajet de la Lune.

**Planification**
- **Distance et Dgrd** – de 7 à 61 jours de Dgrd et de distance moyenne de la Lune, avec la déclinaison superposée, périgée, apogée, nouvelle lune, les trois meilleurs jours (dans l'ordre chronologique) et une alerte pour les jours où la Lune est proche du Soleil. Seules comptent les heures où la Lune est vraiment pointable avec vos limites.
- **Position de la Lune** – tableau pour la période choisie, coloré selon la pointabilité, avec les fenêtres communes à vous et au DX ; export CSV pour Excel.
- **La Lune sur le monde** – carte du monde colorée selon l'élévation de la Lune vue de chaque lieu ; un clic fait de ce point le DX.

**Liaison**
- **Bilan EME** – bilan de liaison pour chaque bande, mémorisé bande par bande : six indicateurs (liaison possible, ma PIRE, PIRE du DX, perte de trajet, S/B moi → DX et DX → moi, aussi avec le Soleil et en 2500 Hz), le tableau complet des étapes et un schéma interactif de la station (antenne, câbles, relais, préampli, transverter, radio). Gain de sol pour les antennes sans élévation. Modes à période de 60 s : JT65, Q65-60A, Q65-60B, Q65-60C et personnalisé.
- **Bruit solaire** – télécharge les flux solaires mesurés par le réseau RSTN (NOAA) et estime de combien le Soleil augmente le bruit du récepteur près de la nouvelle lune.
- **Export des calculs vers Excel** et **DÉBOGAGE DES FORMULES** – le bilan sous forme de feuille Excel, et chaque formule avec les valeurs substituées, étape par étape.

**Log, aide et outils**
- **Carte WWL et ADIF** – grille Maidenhead avec les carrés contactés et confirmés à partir de votre fichier ADIF ou téléchargés directement de LoTW, aussi par bande et EME seulement.
- **MANUEL D'UTILISATION** et **THÉORIE ET CONSEILS SUR L'EME** – manuels complets dans le programme, dans toutes les langues, avec sommaire cliquable, recherche, formules et sources ; exportables en Word. Le manuel de théorie comprend les conseils d'opérateurs EME expérimentés, une section sur les chats Internet et les tableaux d'antennes de VE7BQH.
- **CÂBLES COAXIAUX** – base de données des câbles 50 Ω avec l'atténuation à 50, 70, 144, 222 et 432 MHz et la source de chaque valeur ; triable, filtrable, avec un calcul de perte et un bouton qui envoie le câble au bilan EME. On peut ajouter ses propres câbles.

**Et aussi**
- CALL3.TXT téléchargé chez W7GJ et WSJT-X Improved, fusionné, renouvelé tous les 7 jours et copié dans WSJT-X sur demande.
- Alertes d'absorption de la calotte polaire et aurorale (PCA) quand une station est au-delà des cercles polaires ou dans la zone aurorale.
- 17 langues ; thèmes de couleurs clair, nuit (bleu), noir et huit pastels.
- Positions de la Lune précises à environ 0,01° (Meeus, ELP-2000/82), tous les calculs sur votre ordinateur ; données dans un seul dossier `data`.

### Español

YAEC reúne en un solo programa todo lo necesario para operar EME (Tierra–Luna–Tierra) en 50, 70, 144, 222 y 432 MHz, sobre todo cuando la estación tiene limitaciones: una antena sin elevación, un rotor de recorrido limitado, obstáculos que ocultan parte del cielo. No solo dice dónde está la Luna, sino si **tu** antena puede alcanzarla de verdad, cuándo y en qué condiciones.

**En directo**
- **Posición en vivo y +- 24h** – la pantalla principal, actualizada cada segundo: tu locator y el del DX (de 4 a 14 caracteres), frecuencia, relojes UTC, local y del DX, franja de estado (apuntable, fuera de límites, bajo el horizonte, ventana común) con cuenta atrás, brújula y arco de elevación. Al escribir el indicativo del DX, su locator llega del CALL3.TXT.
- **Reconocimiento de mis obstáculos** – mapa aéreo o topográfico centrado en tu estación con el cielo dibujado encima: posición de la Luna, trayectoria de las próximas 24 horas, salida y puesta, límites de la antena que se arrastran con el ratón.
- **Bóveda celeste** – el cielo visto desde tu QTH con los colores del ruido del cielo en tu frecuencia, los límites de la antena, el horizonte del DX, las radiofuentes, el Sol y la trayectoria de la Luna.

**Planificación**
- **Distancia y Dgrd** – de 7 a 61 días de Dgrd y distancia media de la Luna, con la declinación superpuesta, perigeo, apogeo, luna nueva, los tres mejores días (por orden de fecha) y un aviso para los días con la Luna cerca del Sol. Solo cuentan las horas en que la Luna es realmente apuntable con tus límites.
- **Posición de la Luna** – tabla para el periodo elegido, coloreada según la apuntabilidad, con las ventanas comunes para ti y el DX; exportación CSV para Excel.
- **La Luna sobre el mundo** – mapa del mundo coloreado según la elevación de la Luna vista desde cada lugar; con un clic ese punto pasa a ser el DX.

**Enlace**
- **Balance EME** – balance del enlace para cada banda, guardado banda por banda: seis indicadores (enlace posible, mi PIRE, PIRE del DX, pérdida de trayecto, S/R yo → DX y DX → yo, también con el Sol y en 2500 Hz), la tabla completa de pasos y un esquema interactivo de la estación (antena, cables, relé, preamplificador, transverter, radio). Ganancia de suelo para antenas sin elevación. Modos con periodo de 60 s: JT65, Q65-60A, Q65-60B, Q65-60C y personalizado.
- **Ruido solar** – descarga los flujos solares medidos por la red RSTN (NOAA) y estima cuánto aumenta el Sol el ruido del receptor cerca de la luna nueva.
- **Exportar los cálculos a Excel** y **DEPURACIÓN DE FÓRMULAS** – el balance como hoja de Excel, y cada fórmula con los valores sustituidos, paso a paso.

**Log, ayuda y herramientas**
- **Mapa WWL y ADIF** – cuadrícula Maidenhead con los cuadrados trabajados y confirmados desde tu fichero ADIF o descargados directamente de LoTW, también por banda y solo EME.
- **MANUAL DE USO** y **TEORÍA Y CONSEJOS SOBRE EME** – manuales completos dentro del programa en todos los idiomas, con índice clicable, búsqueda, fórmulas y fuentes; exportables a Word. El manual de teoría incluye los consejos de operadores EME experimentados, un apartado sobre los chats de Internet y las tablas de antenas de VE7BQH.
- **CABLES COAXIALES** – base de datos de cables de 50 Ω con la atenuación a 50, 70, 144, 222 y 432 MHz y la fuente de cada valor; ordenable, filtrable, con cálculo de pérdida y un botón que lleva el cable al balance EME. Se pueden añadir cables propios.

**Además**
- CALL3.TXT descargado de W7GJ y de WSJT-X Improved, fusionado, renovado cada 7 días y copiado en WSJT-X a petición.
- Avisos de absorción del casquete polar y auroral (PCA) cuando una estación está más allá de los círculos polares o en la zona auroral.
- 17 idiomas; esquemas de colores claro, noche (azul), negro y ocho pastel.
- Posiciones de la Luna con una precisión de unos 0,01° (Meeus, ELP-2000/82), todos los cálculos en tu ordenador; datos en una sola carpeta `data`.

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
- Every push is compiled by GitHub Actions on Windows and started on Linux with Mono; when the `VERSION` file on `main` holds a new version, the workflow publishes its release with the Windows installer (Inno Setup) and the Linux and macOS packages. See `.github/workflows/build.yml`.

## License

See `LICENZA.txt`.
