YAEC – Yet Another EME Calc 1.2.1
door Costantino IC8TEM
==========================================

Rekenprogramma voor radioamateurs die EME (Aarde–Maan–Aarde) werken van 50 tot 432 MHz: positie van de Maan en richtvensters binnen de grenzen van je eigen antenne, planning van de dagen met de beste Dgrd, EME-linkbudget, hemel- en zonneruis, een database van coaxkabels en handleidingen over EME. Voor Windows, Linux en macOS, in 26 talen.
Broncode en download: https://github.com/ic8tem/YAEC/releases

INSTALLATIE – WINDOWS
1. Download YAEC-1.2.1-Setup.exe van de pagina Releases en voer het uit. Het installeert YAEC in Documenten\YAEC, zonder beheerdersrechten, met snelkoppelingen in het menu Start en op het bureaublad, en met een verwijderprogramma.
2. Als de SmartScreen-waarschuwing verschijnt: "Meer informatie" → "Toch uitvoeren".
3. Zonder installatie: pak YAEC-1.2.1-windows-portable.zip uit in een map waarin je kunt schrijven en start YAEC.exe.

INSTALLATIE – LINUX
YAEC draait op Mono, de vrije .NET-runtime.
- Debian, Ubuntu, Mint: download yaec_1.2.1_all.deb en installeer het met
      sudo apt install ./yaec_1.2.1_all.deb
  (dit installeert ook Mono). YAEC start vanuit het toepassingenmenu of met het commando "yaec".
- Andere distributies: installeer Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), pak YAEC-1.2.1-linux.tar.gz uit en start ./install.sh.

INSTALLATIE – macOS (experimenteel)
1. Installeer Mono voor macOS (https://www.mono-project.com/download/stable/) en XQuartz (https://www.xquartz.org).
2. Open YAEC-1.2.1-macOS.dmg en sleep YAEC naar Apps. De eerste keer: klik met de rechtermuisknop op YAEC → Open (de app is niet door Apple ondertekend).

CONTROLE VAN DE GEDOWNLOADE BESTANDEN (SHA-256)
Elke release bevat SHA256SUMS.txt met de SHA-256-hash van elk pakket. Vergelijk die met de hash van het gedownloade bestand:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Als de twee waarden verschillen, installeer het bestand dan niet: download het opnieuw.

TAAL EN GEGEVENS
De taal kies je bovenaan in het hoofdvenster. Alle gegevens van het programma staan in de map "data": op Windows naast YAEC.exe, op Linux in ~/.local/share/YAEC/data, op macOS in ~/Library/Application Support/YAEC/data.

LICENTIE
YAEC is gratis; de licentietekst staat in het bestand LICENSE_nl.txt en op het tabblad LICENTIE van het programma. In geval van twijfel is de Italiaanse versie (LICENZA.txt) bepalend.

CONTACT
Fouten, betere gegevens, vertalingen: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

VERSIEGESCHIEDENIS
Versies vóór 1.0 heten bèta.
- 1.2.1 - De pagina CONTACT MET DE AUTEUR EN DANKWOORD opent weer correct op Linux en macOS; de verwijzing voor de transverters wijst naar § 1.7.1.
- 1.2 - EME-budget met de indicatoren Mijn EIRP, EIRP van de DX, trajectverlies en S/N in beide richtingen (met de Zon); formules van het Word-document in één grootte, binnen de marges; gevulde knoppen en vlakke keuzelijsten met afgeronde rand in alle schema's; acht pastelkleurenschema's; waardevakken met de pijltjes naast elkaar; de drie beste dagen in volgorde van datum; vervaagde hemelachtergrond; DEBUG FORMULES vertaald; handleiding THEORIE EN TIPS OVER EME met de tips van Relu NJ9R (GRAVES, richten, connectoren, antennewinst, JT65B en MAP65, polarisatierelais), de nieuwe paragrafen over de eerste ontvangst en over chats via internet en de tabellen van VE7BQH in het voorwoord; dankwoord aan NJ9R, de herinnering aan IK1UWL en de auteurs van artikelen, hardware en software, met de tooltip over hun werk.
- 1.1 - Live positie en +- 24h (voorheen Volgen) ook in het verleden en de toekomst: dag uit de kalender en tijd door de rode lijn te verslepen, frequentie in het kader Echo en frequenties; vak voor de roepnaam van de DX met CALL3.TXT gedownload van W7GJ en van WSJT-X Improved en samengevoegd, voorgestelde locator en kopie naar de map van WSJT-X; Afstand en Dgrd zonder rangorde, met de declinatie eroverheen, rijen gekleurd zoals de grafiek en naar keuze bruikbare uren in groen; selectievakjes in de stijl van het programma; kabels gesorteerd op diameter in de keuzelijsten en op naam, fabrikant en type in de tabel, met vertaalde bronnen; EME-budget met alleen de modes van 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) en installatieschema dat zich aan de teksten aanpast; HANDLEIDING met een overzicht van alle schermen; THEORIE EN TIPS OVER EME met het voorwoord van de auteur, nummering vanaf 1 en formules van de zonneruis; HTTPS op Linux en macOS met de certificaten van het systeem.
- 1.0.1 - Op de releasepagina op GitHub staat het bestand SHA256SUMS.txt met de SHA-256-vingerafdrukken van alle pakketten: daarmee controleer je of de gedownloade bestanden echt de originele zijn (instructies in de README).
- 1.0 - Eerste stabiele versie, voor Windows, Linux en macOS (Linux en macOS met Mono; de gegevens in ~/.local/share/YAEC/data of in ~/Library/Application Support/YAEC/data); installatieprogramma voor Windows en pakketten voor Linux en macOS gemaakt op GitHub; de eerdere versies heten beta. Nieuw tabblad Maan boven de wereld (elevatie van de Maan boven alle landmassa's van de wereld, DX-station met één klik, status van je antenne); handleiding opgesplitst in UITGEBREIDE HANDLEIDING en THEORIE EN TIPS OVER EME; groepen Help en hulpmiddelen en Credits and thanks; tabblad Berekeningen naar Excel exporteren; geen marge op de mode meer: S/N in 2500 Hz met de typische drempel als referentie en de grenzen van JT65 in de handleiding; in de handleiding ook de Q65-tabel voor TX1 – TX6, de Faraday-rotatie en de samenvatting van het artikel van SM5BSZ; kabeltabel sorteerbaar op verlies, met nieuwe kabels van Messi & Paoloni, SSB (SeaTex voor maritieme omgevingen, Aircom Premium), Belden en Tasker; vakken met eenheid zonder achtergebleven teksten.
- beta 30 - Declinatiecurve van de Maan onder de grafiek van Afstand en Dgrd, met de maxima in het noorden en het zuiden en de gunstige zone voor jouw halfrond; nieuwe paragraaf in de handleiding over de declinatie (maandelijkse cyclus, maximale elevatie en uren boven de horizon, verbindingen tussen halfronden, cyclus van 18,6 jaar, ruis); gegevens van I2FAK over de Boogschutter nader bepaald voor Noord-Italië en boven 5° elevatie.
- beta 29 - Handleiding volledig vertaald in alle 17 talen; formules van de hoofdstukken 3.4, 3.5, 3.5.1 en 3.6 in de stijl van Equation Editor; nieuwe paragraaf 3.7.3 over de TX/RX-sequencer (IK1UWL); knop "Opslaan als Word (.docx)" van de handleiding met inhoudsopgave, paginanummers en Word-formules; scheidingsbalk tussen inhoudsopgave en tekst op 25 %; waarschuwing als Dpol binnen 24 uur boven 60° komt (bron: video-interviews met Franco I2FAK).
- beta 28d - De afsluiting bij het opstarten van beta 28c gecorrigeerd (vakken met eenheid); onverwachte fouten worden in een bericht getoond en in data\errori.txt geschreven; kader DGRD van het hoofdscherm met het minimum en maximum van de grafiek en de huidige waarde.
- beta 28c - Opstartscherm met een balk die zich in 6 seconden vult; CONTACT MET DE AUTEUR EN DANKWOORD met de Maan, de regenbooghemel en het dankwoord; pilvormige knoppen en afgeronde keuzelijsten; EME-budget zoals in het ontwerp (kaarten van de stations, indicatoren, getekende tabel, installatieschema dat zich aan de lettergrootte aanpast, eenheden in de vakken, lijst van de transverters); Maanpositie met kaarten, live-pillen, hangsloten en een nieuw venster Kolommen; Zonneruis met de bron Learmonth (BoM) en assen 100 – 20 000 MHz; COAXKABELS met pilvormige filters, getekende tabel en grafiek 1 – 20 dB.
- beta 28b - Handleiding: hoofdstuk „De tabbladen” geschrapt en de hoofdstukken en alle verwijzingen opnieuw genummerd; formules van MNR, T(f), Dgrd en van het EME-budget in de stijl van Equation Editor; titels, tabellen naast elkaar, balken, gemarkeerde rijen, kleuren en voorbeeldlocator zoals in de ontwerpen; voorversterker met de tests van IC-746PRO (ARRL) en FT-897 (RadCom); transverter met groot nomogram en Kuhne TR 144 H +40 op 25 dB; credits verplaatst van het tabblad ABOUT & CREDITS naar het hoofdstuk „Bronnen, gegevens en credits”; kaart van Verkenning van mijn obstakels gecentreerd op JJ00AA als de locator ontbreekt.
- beta 28a - Afsluitvenster met de knoppen Ja en Nee altijd zichtbaar; dikkere gele grenslijn in de Hemelkoepel; teksten die niet meer overlappen bij vergrote letters; acht nieuwe kabels (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) en tooltips van de kabels in de stijl van het programma; licentie met regelafstand en spatiëring zoals in het ontwerp; tabblad CONTACT MET DE AUTEUR EN DANKWOORD; klik buiten de cirkel van Verkenning van mijn obstakels om een nieuwe locator te kiezen; taal, lettertype en lettergrootte veranderen zonder het programma te herstarten.
- beta 27 - Banden tot 432 MHz; opstartscherm met het logo en de patronage van de Sezione ARI Valle del Liri; dankwoord in het afsluitvenster; talen Bengaals, Arabisch en Turks (17 talen); hoofdscherm met vier gekleurde kaders, NAAR BEREKENINGEN en NAAR HEMELKOEPEL, locators tot 14 tekens, keuze van het lettertype en donkere tooltips; Verkenning van mijn obstakels met dekking en grijstint; gemarkeerde dag in Afstand en Dgrd; knop Kolommen in Maanpositie; EME-budget met het schema van de TX/RX-installatie; Zonneruis met bronnen, indicatoren en spectrum; DEBUG FORMULES in Word-stijl met opslaan als .docx; nieuwe tabbladen COAXKABELS, CONTACT MET DE AUTEUR en GEBRUIKSLICENTIE; handleiding in het programma (UITGEBREIDE HANDLEIDING).
- beta 26 - Nieuwe keuze van de tabbladen op twee niveaus (groepen en tabbladen); kleurenschema Zwart en schema Nacht in blauwtinten; instelbare kleur en dikte voor de twee curven van de Dgrd en dagen met de Zon dicht bij de Maan; waarschuwingen voor mogelijke poolkap- (PCA) en aurorale absorptie voor de twee stations; vakje voor het vervagen in de Richtkaart; grijze diagonale lijnen buiten de grenzen in de Hemelkoepel en teksten die niet meer overlappen; nieuw tabblad DEBUG FORMULES; pictogram met de Maan; pdf-handleidingen in alle 14 talen.
- beta 25 - Tabblad Afstand en Dgrd vernieuwd: de drie beste dagen, kalender van de dagen met maanfase, grafiek met de Dgrd (nul onderaan) en de gemiddelde afstand eroverheen, nieuwe maan en volle maan, korte rangorde; nieuw tabblad Richtkaart met luchtfoto- of topografische kaart, Maan, baan, opkomst en ondergang en grenzen van de antenne die met de muis te verplaatsen zijn.
- beta 24 - Teksten van de Hemelkoepel twee keer zo groot; talen Russisch, Oekraïens en Afrikaans; compila.bat maakt de pdf-handleidingen niet meer aan.
- beta 23 - Nieuw hoofdscherm: UTC-tijd, lokale tijd en lokale tijd van de DX, statusbalk met aftellen, azimutkompas en elevatieboog met de grenzen van de antenne, maanfase met opkomst en ondergang, balkjes voor Dgrd en S/N, balk van de komende 24 uur; nachtthema in alle tabbladen; drie kleurschalen in de Hemelkoepel met omrande teksten.
- beta 22 - Alle gegevens in de submap data naast het uitvoerbare bestand (verplaatst uit AppData en uit de programmamap), gecontroleerd en opnieuw gedownload bij het opstarten; pdf-handleidingen met schermafbeeldingen in het Italiaans, Engels, Frans, Duits, Spaans en Portugees; vakjes en BANDKEUZE rechtsboven in het venster, S/N weer rechtsonder.
- beta 21 - Hoofdscherm: vakje DIEPGAANDE BEREKENINGEN, LOKALE AZIMUT en ELEVATIE, datum naast de titel, S/N-kader onder BANDKEUZE; keuze van het lettertype voor het hele programma. Nieuwe banden 70 MHz en 222 MHz.
- beta 20 - Terreinhoogte automatisch van het web gehaald (Open Topo Data, Open-Meteo) als de locator 10 tekens heeft.
- beta 19 - Titel met de roepnaam van de gebruiker; geen vooraf ingestelde locator of roepnaam; instellingen in de map van het programma; nieuwe volgorde van de tabbladen; INSTRUCTIES met alle parameters, MNR en CFOM; tabblad experimenteel-EXCEL; downloaden van het log van LoTW; ABOUT & CREDITS; talen Hindi, Koreaans en Indonesisch.
- beta 18 - EME-budget: bandbreedte tot 3000 Hz, ruisgetallen naast de winsten, transverter buiten de berekening bij winst 0, antennetemperatuur Tant (VE7BQH-tabellen); algemene instellingen in het tabblad Volgen; vervaagde wassende Maan op de achtergrond van het hoofdscherm.
- beta 17 - Vakje "DIEPGAANDE BEREKENINGEN" in Volgen (kolommen vanaf Dpol, tussenliggende rijen van het EME-budget, tabblad Zonneruis); geschatte S/N in het hoofdscherm; knop "BANDKEUZE" met de banden van 50 MHz tot 122 GHz.
- beta 14 - Nieuwe naam YAEC - Yet Another EME Calc; interface in 8 talen (Engels, Italiaans, Duits, Frans, Spaans, Portugees, Chinees, Japans) met Engels als opstarttaal; roepnaam in de titel van het venster.
- beta 13 - Correctie van compilatiefout CS0051 (toegankelijkheid van de Friis-functie).
- beta 12 - Het ruisgetal van de radio wordt afgeleid uit zijn MDS met de door de gebruiker gekozen bandbreedte (dezelfde als bij de berekening van de S/N).
- beta 11 - Hoofdscherm Volgen opnieuw ontworpen (mijn locator en die van de DX, frequentie, datum en tijden, mijn azimut en elevatie en die van de DX, overige nuttige gegevens); locator en frequentie automatisch overgenomen in alle tabbladen; ruisgetal van de ontvanger met de formule van Friis; Afstand en Dgrd tot 61 dagen; roepnaam in de algemene instellingen; aanbevelingen over de ALC in de instructies.
- beta 10 - Tabblad Volgen; kHz van 000 tot 999; dag van de week; bandbreedte en S/N met de Zon in het budget; ground gain BETA; verlies kabeltjes transverter-radio; donker thema en lettertypen; Dgrd over een maand met nieuwe maan; LoTW in groen; tabblad INSTRUCTIES; openingsvenster en bevestiging bij afsluiten.
- beta 9 - Hemelkoepel in azimut/elevatie met vlakke horizon en ruiskleuren van blauw tot rood; tabblad Afstand en Dgrd; tabblad ABOUT.
- beta 6 - Tabblad WWL-kaart en ADIF met Maidenhead-raster.
- beta 5 - Statuskolommen vervangen door kleur; titel "door Costantino IC8TEM"; keuzelijst kHz voor de CFOM-frequentie.
- beta 4 - Lokale tijd van de DX afgeleid uit de positie; duur in dagen; tooltips bij de kolommen; Doppler en CFOM-frequenties; tabblad Hemelkoepel.
- beta 3 - Geschatte S/N in het budget; tabblad Zonneruis met SFU-gegevens van het web en keuze van het RSTN-station.
- beta 2 - Tabblad EME-budget: EIRP, trajectverlies, ontvangen signaal en marge boven de MDS.
- beta 1 - Tweede station (DX), gemeenschappelijke vensters, Dpol, MNR, Tsky en Dgrd zoals in WSJT-X.
