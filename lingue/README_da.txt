YAEC – Yet Another EME Calc 1.5
ved Costantino IC8TEM
==========================================

Beregner til radioamatører, der kører EME (Jord–Måne–Jord) fra 50 til 432 MHz: Månens position og retningsvinduer inden for din egen antennes grænser, planlægning af dagene med den bedste Dgrd, EME-forbindelsesbudget, støj fra himlen og Solen, database over koaksialkabler og manualer om EME. Til Windows, Linux og macOS, på 28 sprog.
Kildekode og download: https://github.com/ic8tem/YAEC/releases

INSTALLATION – WINDOWS
1. Hent YAEC-1.5-Setup.exe fra siden Releases, og kør den. Den installerer YAEC i Dokumenter\YAEC uden administratorrettigheder, med genveje i menuen Start og på skrivebordet samt et afinstallationsprogram.
2. Hvis SmartScreen-advarslen vises: "Flere oplysninger" → "Kør alligevel".
3. Uden installation: pak YAEC-1.5-windows-portable.zip ud i en mappe, du kan skrive i, og start YAEC.exe.

INSTALLATION – LINUX
YAEC kører med Mono, den frie .NET-runtime.
- Debian, Ubuntu, Mint: hent yaec_1.5_all.deb, og installér den med
      sudo apt install ./yaec_1.5_all.deb
  (installerer også Mono). YAEC startes fra programmenuen eller med kommandoen "yaec".
- Andre distributioner: installér Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), pak YAEC-1.5-linux.tar.gz ud, og kør ./install.sh.

INSTALLATION – macOS (eksperimentel)
1. Installér Mono til macOS (https://www.mono-project.com/download/stable/) og XQuartz (https://www.xquartz.org).
2. Åbn YAEC-1.5-macOS.dmg, og træk YAEC til Programmer. Første gang: højreklik på YAEC → Åbn (appen er ikke signeret af Apple).

KONTROL AF DE HENTEDE FILER (SHA-256)
Hver release indeholder SHA256SUMS.txt med SHA-256-fingeraftrykket for hver pakke. Sammenlign det med den hentede fils fingeraftryk:
- Windows (PowerShell): Get-FileHash .\YAEC-1.5-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Hvis de to værdier er forskellige, må du ikke installere filen: hent den igen.

SPROG OG DATA
Sproget vælges øverst på hovedskærmen. Alle programmets data ligger i mappen "data": på Windows ved siden af YAEC.exe, på Linux i ~/.local/share/YAEC/data, på macOS i ~/Library/Application Support/YAEC/data.

LICENS
YAEC er gratis; licensteksten findes i filen LICENSE_da.txt og i programmets fane BRUGSLICENS. I tvivlstilfælde er den italienske version (LICENZA.txt) gældende.

KONTAKT
Fejl, bedre data, oversættelser: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

VERSIONSHISTORIK
Versionerne før 1.0 hedder beta.
- 1.5 - Ny fane Radar GRAVES i gruppen Forbindelse: Månen i radarstrålen med sektor og trin, fælles vindue med dig, ekkoets doppler og forsinkelse, strålens næste passage over Månen, himlen set fra GRAVES, rekonstruktion af de 24 UTC-timer med detaljer for de næste 10 sekunder, råd til at høre ekkoet og kilder; listen over aktive stationer også i JSON og tekst til LunaCalc Mobile; to nye sprog, dansk og tagalog (28 i alt), med vejledningerne.
- 1.4 - Aktive stationer: DX'ens kaldesignalfelt får orange kant, hvis stationen har skrevet i N0UK's EME-chat inden for de sidste 90 dage, med datoen for seneste meddelelse i værktøjstippet; Skrifttype med 10 anbefalede skrifttyper til Windows, Linux og macOS, afprøvet fane for fane; pakker til 32-bit Windows og til Raspberry Pi (arm64); Himmelhvælving med violette stiplede felter for det område, antennen kan rettes mod; Afstand og Dgrd med den fjerde brugbare dag og valg af dag også med et klik i grafen; talfelter med afrundet ramme og pilene over hinanden; vinduesknapper ved kanterne (til venstre, i midten, til højre); boks med tak i fuld bredde; i smalle vinduer går DYBDEGÅENDE BEREGNINGER over to linjer, og ingen tekst havner under knapperne.
- 1.3 - Ni nye sprog: nederlandsk, estisk, lettisk, litauisk, svensk, norsk, islandsk, hebraisk og urdu (26 i alt), med manualerne; licens og README på alle sprog, licens på installationsprogrammets sprog; knappen GRAVES; Stik ved TX og Stik ved RX i EME-budget (råd fra NJ9R); trækbar skillelinje mellem venstre kolonne og diagrammet i EME-budget; felt for det grå slør i Kortlægning af mine forhindringer; DEBUG FORMLER bliver til Kontrol af beregningerne, og ABOUT & CREDITS bliver til OM PROGRAMMET OG KREDITERINGER; manualens tekniske kapitler på bengali, arabisk og tyrkisk; pastelskemaer rettet; CALL3.TXT-vinduet lukker af sig selv efter opdateringen; knapperne i dialogvinduerne med afstand imellem.
- 1.2.1 - Siden FORFATTERENS KONTAKTOPLYSNINGER OG TAK åbner igen korrekt på Linux og macOS; henvisningen for transvertere peger på § 1.7.1.
- 1.2 - EME-budget med indikatorerne Min EIRP, DX'ens EIRP, udbredelsestab og S/N i begge retninger (med Solen); formlerne i Word-dokumentet i én størrelse og inden for margenerne; fyldte knapper og flade rullemenuer med afrundet kant i alle skemaer; otte pastelfarveskemaer; værdifelter med pilene side om side; de tre bedste dage i datoorden; sløret himmelbaggrund; DEBUG FORMLER oversat; manualen TEORI OG RÅD OM EME med råd fra Relu NJ9R (GRAVES, antenneretning, stik, antenneforstærkning, JT65B og MAP65, polarisationsrelæer), de nye afsnit om den første modtagning og om chat via internettet og VE7BQH's tabeller i forordet; tak til NJ9R, mindet om IK1UWL og forfatterne af artikler, hardware og software, med værktøjstip om deres værker.
- 1.1 - Live-position og +- 24 t (tidligere Sporing) også i fortid og fremtid: dag fra kalenderen og klokkeslæt ved at trække den røde linje, frekvens i feltet Ekko og frekvenser; kaldesignalfelt for DX'en med CALL3.TXT hentet fra W7GJ og fra WSJT-X Improved og flettet, foreslået locator og kopiering til WSJT-X-mappen; Afstand og Dgrd uden placeringsliste, med deklinationen lagt ovenpå, rækker farvet som grafen og brugbare timer i grønt efter ønske; afkrydsningsfelter i programmets stil; kabler sorteret efter diameter i rullemenuerne og efter navn, fabrikant og type i tabellen, med oversatte kilder; EME-budget kun med 60 s-modes (JT65, Q65-60A, Q65-60B, Q65-60C) og anlægsdiagram, der tilpasser sig teksterne; BRUGERVEJLEDNING med gennemgang af alle skærmbilleder; TEORI OG RÅD OM EME med forfatterens forord, nummerering fra 1 og formler for solstøjen; HTTPS på Linux og macOS med systemets certifikater.
- 1.0.1 - På releasesiden på GitHub ligger filen SHA256SUMS.txt med SHA-256-fingeraftryk for alle pakker: de bruges til at kontrollere, at de hentede filer virkelig er de originale (vejledning i README).
- 1.0 - Første stabile version til Windows, Linux og macOS (Linux og macOS med Mono; data i ~/.local/share/YAEC/data eller i ~/Library/Application Support/YAEC/data); installationsprogram til Windows og pakker til Linux og macOS bygget på GitHub; de tidligere versioner hedder beta. Ny fane Månen over verden (Månens elevation over landområderne i hele verden, DX-station med et klik, din antennes status); manualen delt i UDDYBENDE BRUGERVEJLEDNING og TEORI OG RÅD OM EME; grupperne Hjælp og værktøjer og Credits and thanks; fanen Eksport af beregningerne til Excel; ikke længere margin på moden: S/N i 2500 Hz med den typiske tærskel som reference og JT65's grænser i manualen; i manualen også Q65-tabellen for TX1 – TX6, Faraday-rotationen og et resumé af artiklen af SM5BSZ; kabeltabel, der kan sorteres efter tab, med nye kabler fra Messi & Paoloni, SSB (SeaTex til maritime miljøer, Aircom Premium), Belden og Tasker; felter med enhed uden tekstrester.
- beta 30 - Kurve over Månens deklination under grafen i Afstand og Dgrd, med maksima mod nord og syd og det område, der er gunstigt for din halvkugle; nyt afsnit i manualen om deklinationen (månedlig cyklus, største elevation og timer over horisonten, forbindelser mellem halvkugler, 18,6-årscyklussen, støj); I2FAK's data om Skytten præciseret for Norditalien og over 5° elevation.
- beta 29 - Manualen fuldt oversat til alle 17 sprog; formlerne i kapitel 3.4, 3.5, 3.5.1 og 3.6 i Equation Editor-stil; nyt afsnit 3.7.3 om TX/RX-sekvenseren (IK1UWL); manualens knap "Gem som Word (.docx)" med indholdsfortegnelse, sidetal og Word-formler; skillelinje mellem indholdsfortegnelse og tekst ved 25 %; advarsel, når Dpol overstiger 60° inden for 24 timer (kilde: videointerviews med Franco I2FAK).
- beta 28d - Rettet nedbruddet ved start i beta 28c (felter med enhed); uventede fejl vises i en meddelelse og skrives i data\errori.txt; DGRD-feltet på hovedskærmen med grafens minimum og maksimum og den aktuelle værdi.
- beta 28c - Startskærm med en bjælke, der fyldes på 6 sekunder; FORFATTERENS KONTAKTOPLYSNINGER OG TAK med Månen, regnbuehimlen og takken; pilleformede knapper og afrundede rullemenuer; EME-budget som i skitsen (stationskort, indikatorer, tegnet tabel, anlægsdiagram, der tilpasser sig skriftstørrelsen, enheder inde i felterne, liste over transvertere); Månens position med kort, live-piller, hængelåse og nyt vindue Kolonner; Solstøj med kilden Learmonth (BoM) og akser 100 – 20 000 MHz; KOAKSIALKABLER med pilleformede filtre, tegnet tabel og graf 1 – 20 dB.
- beta 28b - Manual: kapitlet »Fanerne« fjernet og kapitlerne og alle henvisninger omnummereret; formler for MNR, T(f), Dgrd og EME-budget i Equation Editor-stil; overskrifter, tabeller side om side, bjælker, fremhævede rækker, farver og eksempellocatorer som i skitserne; forforstærker med testene af IC-746PRO (ARRL) og FT-897 (RadCom); transverter med stort nomogram og Kuhne TR 144 H +40 ved 25 dB; krediteringer flyttet fra fanen ABOUT & CREDITS til kapitlet »Kilder, data og krediteringer«; kortet i Kortlægning af mine forhindringer centreret på JJ00AA, når locatoren mangler.
- beta 28a - Lukkevindue med knapperne Ja og Nej altid synlige; tykkere gul grænselinje i Himmelhvælving; tekster, der ikke overlapper med forstørret skrift; otte nye kabler (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) og værktøjstip for kablerne i programmets stil; licens med linjeafstand og mellemrum som i skitsen; fanen FORFATTERENS KONTAKTOPLYSNINGER OG TAK; klik uden for cirklen i Kortlægning af mine forhindringer for at vælge en ny locator; sprog, skrifttype og skriftstørrelse skifter uden genstart af programmet.
- beta 27 - Bånd op til 432 MHz; startskærm med logo og protektion fra Sezione ARI Valle del Liri; tak i lukkevinduet; sprogene bengali, arabisk og tyrkisk (17 sprog); hovedskærm med fire farvede felter, GÅ TIL BEREGNINGERNE og GÅ TIL HIMMELHVÆLVING, locator op til 14 tegn, valg af skrifttype og mørke værktøjstip; Kortlægning af mine forhindringer med uigennemsigtighed og gråtone; fremhævet dag i Afstand og Dgrd; knappen Kolonner i Månens position; EME-budget med diagram over TX/RX-anlægget; Solstøj med kilder, indikatorer og spektrum; DEBUG FORMLER i Word-stil med gem som .docx; nye faner KOAKSIALKABLER, FORFATTERENS KONTAKTOPLYSNINGER og BRUGSLICENS; manual inde i programmet (UDDYBENDE BRUGERVEJLEDNING).
- beta 26 - Nyt valg af faner i to niveauer (grupper og faner); farveskemaet Sort og skemaet Nat i blå toner; farve og tykkelse kan ændres for de to kurver i Dgrd og dage med Solen tæt på Månen; advarsler om mulig polar (PCA) og nordlysabsorption for de to stationer; felt til sløring i Retningskort; grå diagonale streger uden for grænserne i Himmelhvælving og tekster, der ikke overlapper; ny fane DEBUG FORMLER; ikon med Månen; PDF-manualer på alle 14 sprog.
- beta 25 - Fanen Afstand og Dgrd fornyet: de tre bedste dage, kalender over dagene med månefase, graf med Dgrd (nul nederst) og middelafstanden lagt ovenpå, nymåne og fuldmåne, kort placeringsliste; ny fane Retningskort med luftfoto- eller topografisk kort, Måne, bane, op- og nedgang og antennegrænser, der kan flyttes med musen.
- beta 24 - Teksterne i Himmelhvælving dobbelt så store; sprogene russisk, ukrainsk og afrikaans; compila.bat laver ikke længere PDF-manualerne.
- beta 23 - Ny hovedskærm: UTC-tid, lokal tid og DX'ens lokale tid, statusbånd med nedtælling, azimutkompas og elevationsbue med antennens grænser, Månens fase med op- og nedgang, bjælker for Dgrd og S/N, bjælke for de næste 24 timer; nattema i alle faner; tre farveskalaer i Himmelhvælving med tekster med kant.
- beta 22 - Alle data i undermappen data ved siden af programfilen (flyttet fra AppData og fra programmets mappe), kontrolleret og hentet igen ved start; PDF-manualer med skærmbilleder på italiensk, engelsk, fransk, tysk, spansk og portugisisk; felter og BÅNDVALG øverst til højre i vinduet, S/N igen nederst til højre.
- beta 21 - Hovedskærm: feltet DYBDEGÅENDE BEREGNINGER, LOKAL AZIMUT og LOKAL ELEVATION, dato ved siden af titlen, S/N-felt under BÅNDVALG; valg af skrifttype til hele programmet. Nye bånd 70 MHz og 222 MHz.
- beta 20 - Terrænhøjde hentes automatisk fra nettet (Open Topo Data, Open-Meteo), når locatoren har 10 tegn.
- beta 19 - Titel med brugerens kaldesignal; ingen forudindstillet locator eller kaldesignal; indstillinger i programmets mappe; ny rækkefølge af fanerne; VEJLEDNING med alle parametre, MNR og CFOM; fanen eksperimentel-EXCEL; hentning af loggen fra LoTW; ABOUT & CREDITS; sprogene hindi, koreansk og indonesisk.
- beta 18 - EME-budget: båndbredde op til 3000 Hz, støjtal ved siden af forstærkningerne, transverter udeladt af beregningen ved forstærkning 0, antennetemperatur Tant (VE7BQH-tabeller); generelle indstillinger i fanen Sporing; tiltagende måne sløret i baggrunden på hovedskærmen.
- beta 17 - Feltet "DYBDEGÅENDE BEREGNINGER" i Sporing (kolonnerne fra Dpol og frem, mellemrækkerne i EME-budget, fanen Solstøj); anslået S/N på hovedskærmen; knappen "BÅNDVALG" med båndene fra 50 MHz til 122 GHz.
- beta 14 - Nyt navn YAEC - Yet Another EME Calc; brugerflade på 8 sprog (engelsk, italiensk, tysk, fransk, spansk, portugisisk, kinesisk, japansk) med engelsk som startsprog; kaldesignal i vinduets titel.
- beta 13 - Rettelse af kompileringsfejlen CS0051 (tilgængeligheden af Friis-funktionen).
- beta 12 - Radioens støjtal udledes af dens MDS med den båndbredde, brugeren vælger (den samme som i beregningen af S/N).
- beta 11 - Hovedskærmen Sporing lavet om (min og DX'ens locator, frekvens, dato og klokkeslæt, min og DX'ens azimut og elevation, andre nyttige data); locator og frekvens kopieres automatisk til alle faner; modtagerens støjtal med Friis' formel; Afstand og Dgrd op til 61 dage; kaldesignal i de generelle indstillinger; anbefalinger om ALC i vejledningen.
- beta 10 - Fanen Sporing; kHz fra 000 til 999; ugedag; båndbredde og S/N med Solen i budgettet; ground gain BETA; tab i kabelstykkerne transverter-radio; mørkt tema og skrifttyper; Dgrd over en måned med nymåne; LoTW i grønt; fanen VEJLEDNING; startvindue og bekræftelse ved lukning.
- beta 9 - Himmelhvælving i azimut/elevation med flad horisont og støjfarver fra blå til rød; fanen Afstand og Dgrd; fanen ABOUT.
- beta 6 - Fanen WWL- og ADIF-kort med Maidenhead-gitter.
- beta 5 - Statuskolonner erstattet af farve; titlen "ved Costantino IC8TEM"; rullemenu med kHz for CFOM-frekvensen.
- beta 4 - DX'ens lokale tid udledt af positionen; varighed i dage; værktøjstip på kolonnerne; Doppler og CFOM-frekvenser; fanen Himmelhvælving.
- beta 3 - Anslået S/N i budgettet; fanen Solstøj med SFU-data fra nettet og valg af RSTN-station.
- beta 2 - Fanen EME-budget: EIRP, udbredelsestab, modtaget signal og margin over MDS.
- beta 1 - Anden station (DX), fælles vinduer, Dpol, MNR, Tsky og Dgrd som i WSJT-X.
