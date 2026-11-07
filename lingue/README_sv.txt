YAEC – Yet Another EME Calc 1.2.1
av Costantino IC8TEM
==========================================

Kalkylator för radioamatörer som kör EME (Jord–Måne–Jord) från 50 till 432 MHz: månens position och riktfönster inom gränserna för den egna antennen, planering av dagarna med bäst Dgrd, länkbudget för EME, himmels- och solbrus, databas över koaxialkablar och handböcker om EME. För Windows, Linux och macOS, på 26 språk.
Källkod och nedladdning: https://github.com/ic8tem/YAEC/releases

INSTALLATION – WINDOWS
1. Ladda ner YAEC-1.2.1-Setup.exe från sidan Releases och kör den. Den installerar YAEC i Dokument\YAEC, utan administratörsrättigheter, med genvägar i Start-menyn och på skrivbordet samt ett avinstallationsprogram.
2. Om SmartScreen-varningen visas: ”Mer information” → ”Kör ändå”.
3. Utan installation: packa upp YAEC-1.2.1-windows-portable.zip i en mapp där du har skrivrätt och starta YAEC.exe.

INSTALLATION – LINUX
YAEC körs med Mono, den fria .NET-körmiljön.
- Debian, Ubuntu, Mint: ladda ner yaec_1.2.1_all.deb och installera den med
      sudo apt install ./yaec_1.2.1_all.deb
  (installerar även Mono). YAEC startas från programmenyn eller med kommandot ”yaec”.
- Andra distributioner: installera Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), packa upp YAEC-1.2.1-linux.tar.gz och kör ./install.sh.

INSTALLATION – macOS (experimentell)
1. Installera Mono för macOS (https://www.mono-project.com/download/stable/) och XQuartz (https://www.xquartz.org).
2. Öppna YAEC-1.2.1-macOS.dmg och dra YAEC till Appar. Första gången: högerklicka på YAEC → Öppna (appen är inte signerad av Apple).

KONTROLL AV NEDLADDADE FILER (SHA-256)
Varje release innehåller SHA256SUMS.txt med SHA-256-kontrollsumman för varje paket. Jämför den med kontrollsumman för den nedladdade filen:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Om de två värdena skiljer sig åt ska du inte installera filen: ladda ner den igen.

SPRÅK OCH DATA
Språket väljs högst upp i huvudfönstret. Alla programmets data finns i mappen ”data”: i Windows bredvid YAEC.exe, i Linux i ~/.local/share/YAEC/data, i macOS i ~/Library/Application Support/YAEC/data.

LICENS
YAEC är gratis; licenstexten finns i filen LICENSE_sv.txt och på fliken LICENS i programmet. Vid tveksamhet gäller den italienska versionen (LICENZA.txt).

KONTAKT
Fel, bättre data, översättningar: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

VERSIONSHISTORIK
Versioner före 1.0 kallas beta.
- 1.2.1 - Sidan FÖRFATTARENS KONTAKTUPPGIFTER OCH TACK öppnas åter korrekt på Linux och macOS; hänvisningen för transvertrarna anger § 1.7.1.
- 1.2 - EME-budget med indikatorerna Min EIRP, DX-stationens EIRP, sträckdämpning och S/N i båda riktningarna (med Solen); formlerna i Word-dokumentet i en enda storlek, inom marginalerna; fyllda knappar och platta rullgardinsmenyer med rundad kant i alla scheman; åtta färgscheman i pastell; värderutor med pilarna bredvid varandra; de tre bästa dagarna i datumordning; suddig himmelsbakgrund; FORMEL-DEBUG översatt; manualen TEORI OCH RÅD OM EME med råd från Relu NJ9R (GRAVES, riktning, kontakter, antennförstärkning, JT65B och MAP65, polarisationsreläer), de nya avsnitten om den första mottagningen och om chattar via internet och VE7BQH:s tabeller i förordet; tack till NJ9R, minnet av IK1UWL och författarna till artiklar, hårdvara och mjukvara, med verktygstips om deras verk.
- 1.1 - Live-position och +- 24h (tidigare Spårning) även i det förflutna och i framtiden: dag från kalendern och tid genom att dra den röda linjen, frekvens i rutan Eko och frekvenser; ruta för DX-stationens anropssignal med CALL3.TXT hämtad från W7GJ och från WSJT-X Improved och sammanslagen, föreslagen lokator och kopiering till WSJT-X-mappen; Avstånd och Dgrd utan rangordning, med deklinationen överlagrad, rader färgade som diagrammet och användbara timmar i grönt som tillval; kryssrutor i programmets stil; kablar sorterade efter diameter i rullgardinslistorna och efter namn, tillverkare och typ i tabellen, med översatta källor; EME-budget med enbart 60 s-trafiksätten (JT65, Q65-60A, Q65-60B, Q65-60C) och anläggningsschema som anpassar sig till texterna; BRUKSANVISNING med genomgång av alla skärmar; TEORI OCH RÅD OM EME med författarens förord, numrering från 1 och solbrusets formler; HTTPS på Linux och macOS med systemets certifikat.
- 1.0.1 - På versionens sida på GitHub finns filen SHA256SUMS.txt med SHA-256-fingeravtrycken för alla paket: de används för att kontrollera att de hämtade filerna verkligen är originalen (instruktioner i README).
- 1.0 - Första stabila versionen, för Windows, Linux och macOS (Linux och macOS med Mono; data i ~/.local/share/YAEC/data eller i ~/Library/Application Support/YAEC/data); installationsprogram för Windows och paket för Linux och macOS skapade på GitHub; tidigare versioner kallas beta. Ny flik Månen över världen (Månens elevation över landområdena i hela världen, DX-station med ett klick, din antenns status); manualen uppdelad i FÖRDJUPAD BRUKSANVISNING och TEORI OCH RÅD OM EME; grupperna Hjälp och verktyg och Credits and thanks; fliken Exportera beräkningarna till Excel; ingen marginal för trafiksättet längre: S/N i 2500 Hz med den typiska tröskeln som referens och JT65:s gränser i manualen; i manualen även Q65-tabellen för TX1 – TX6, Faradayrotationen och sammanfattningen av SM5BSZ:s artikel; kabeltabell sorterbar efter förlust, med nya kablar från Messi & Paoloni, SSB (SeaTex för marina miljöer, Aircom Premium), Belden och Tasker; rutor med enhet utan kvarvarande text.
- beta 30 - Kurva för Månens deklination under diagrammet i Avstånd och Dgrd, med maxima i norr och söder och zonen som gynnar ditt halvklot; nytt avsnitt i manualen om deklinationen (månadscykel, maximal elevation och timmar över horisonten, förbindelser mellan halvkloten, 18,6-årscykeln, brus); I2FAK:s data om Skytten preciserade för norra Italien och över 5° elevation.
- beta 29 - Manualen helt översatt till alla 17 språk; formler i kapitel 3.4, 3.5, 3.5.1 och 3.6 i Equation Editor-stil; nytt avsnitt 3.7.3 om TX/RX-sekvensern (IK1UWL); manualens knapp ”Spara i Word (.docx)” med innehållsförteckning, sidnummer och Word-formler; avdelare mellan innehållsförteckning och text vid 25 %; varning när Dpol överstiger 60° under 24 timmar (källa: videointervjuer med Franco I2FAK).
- beta 28d - Rättad stängning vid start i beta 28c (rutor med enhet); oförutsedda fel visas i ett meddelande och skrivs i data\errori.txt; DGRD-rutan på huvudskärmen med diagrammets minimum och maximum och det aktuella värdet.
- beta 28c - Startskärm med en stapel som fylls på 6 sekunder; FÖRFATTARENS KONTAKTUPPGIFTER OCH TACK med Månen, regnbågshimlen och tacken; pillerformade knappar och rundade rullgardinslistor; EME-budget som i skissen (stationskort, indikatorer, ritad tabell, anläggningsschema som anpassar sig till teckenstorleken, enheter inne i rutorna, lista över transvertrar); Månens position med kort, live-piller, hänglås och nytt fönster Kolumner; Solbrus med källan Learmonth (BoM) och axlar 100 – 20 000 MHz; KOAXIALKABLAR med pillerfilter, ritad tabell och diagram 1 – 20 dB.
- beta 28b - Manual: kapitlet ”Flikarna” borttaget och kapitlen och alla hänvisningar omnumrerade; formler för MNR, T(f), Dgrd och EME-budget i Equation Editor-stil; rubriker, tabeller sida vid sida, staplar, markerade rader, färger och exempellokatorer som i skisserna; förförstärkare med testerna av IC-746PRO (ARRL) och FT-897 (RadCom); transverter med stort nomogram och Kuhne TR 144 H +40 vid 25 dB; erkännandena flyttade från fliken ABOUT & CREDITS till kapitlet ”Källor, data och erkännanden”; kartan i Rekognosering av mina hinder centrerad på JJ00AA när lokator saknas.
- beta 28a - Stängningsfönster med knapparna Ja och Nej alltid synliga; tjockare gul gränslinje i Himlavalvet; texter som inte överlappar med förstorade tecken; åtta nya kablar (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) och verktygstips för kablarna i programmets stil; licens med radavstånd och mellanrum som i skissen; fliken FÖRFATTARENS KONTAKTUPPGIFTER OCH TACK; klick utanför cirkeln i Rekognosering av mina hinder för att välja en ny lokator; språk, teckensnitt och teckenstorlek ändras utan att programmet startas om.
- beta 27 - Band upp till 432 MHz; startskärm med logotypen och beskyddet från Sezione ARI Valle del Liri; tack i stängningsfönstret; språken bengali, arabiska och turkiska (17 språk); huvudskärm med fyra färgade rutor, GÅ TILL BERÄKNINGARNA och GÅ TILL HIMLAVALVET, lokator upp till 14 tecken, val av teckensnitt och mörka verktygstips; Rekognosering av mina hinder med opacitet och gråton; markerad dag i Avstånd och Dgrd; knappen Kolumner i Månens position; EME-budget med schema över TX/RX-anläggningen; Solbrus med källor, indikatorer och spektrum; FORMEL-DEBUG i Word-stil med sparande som .docx; nya flikar KOAXIALKABLAR, FÖRFATTARENS KONTAKTUPPGIFTER och ANVÄNDARLICENS; manual inne i programmet (FÖRDJUPAD BRUKSANVISNING).
- beta 26 - Nytt val av flikar i två nivåer (grupper och flikar); färgschemat Svart och schemat Natt i blå toner; färg och tjocklek kan ändras för Dgrd-diagrammets två kurvor och dagar med Solen nära Månen; varningar om möjlig polar (PCA) och norrskensabsorption för de två stationerna; ruta för suddning i Riktningskarta; grå diagonala linjer utanför gränserna i Himlavalvet och texter som inte överlappar; ny flik FORMEL-DEBUG; ikon med Månen; PDF-manualer på alla 14 språk.
- beta 25 - Förnyad flik Avstånd och Dgrd: de tre bästa dagarna, kalender över dagarna med månfas, diagram med Dgrd (noll längst ner) och medelavståndet överlagrat, nymåne och fullmåne, kort rangordning; ny flik Riktningskarta med flygfoto- eller topografisk karta, Månen, banan, upp- och nedgång och antennens gränser som kan flyttas med musen.
- beta 24 - Dubbelt så stora texter i Himlavalvet; språken ryska, ukrainska och afrikaans; compila.bat skapar inte längre PDF-manualerna.
- beta 23 - Ny huvudskärm: UTC-tid, lokal tid och DX-stationens lokala tid, statusfält med nedräkning, azimutkompass och elevationsbåge med antennens gränser, Månens fas med upp- och nedgång, staplar för Dgrd och S/N, stapel för de kommande 24 timmarna; nattema i alla flikar; tre färgskalor i Himlavalvet med kantade texter.
- beta 22 - Alla data i undermappen data bredvid den körbara filen (flyttade från AppData och från programmets mapp), kontrollerade och hämtade på nytt vid start; PDF-manualer med skärmbilder på italienska, engelska, franska, tyska, spanska och portugisiska; rutor och VAL AV BAND upptill till höger i fönstret, S/N åter längst ner till höger.
- beta 21 - Huvudskärm: rutan FÖRDJUPADE BERÄKNINGAR, LOKAL AZIMUT och ELEVATION, datum bredvid titeln, S/N-ruta under VAL AV BAND; val av teckensnitt för hela programmet. Nya band 70 MHz och 222 MHz.
- beta 20 - Markhöjd hämtas automatiskt från webben (Open Topo Data, Open-Meteo) när lokatorn har 10 tecken.
- beta 19 - Titel med användarens anropssignal; ingen förinställd lokator eller anropssignal; inställningar i programmets mapp; ny ordning på flikarna; INSTRUKTIONER med alla parametrar, MNR och CFOM; fliken experimentell-EXCEL; hämtning av loggen från LoTW; ABOUT & CREDITS; språken hindi, koreanska och indonesiska.
- beta 18 - EME-budget: bandbredd upp till 3000 Hz, brusfaktorer bredvid förstärkningarna, transvertern utesluten ur beräkningen med förstärkning 0, antenntemperatur Tant (VE7BQH-tabeller); allmänna inställningar i fliken Spårning; suddig tilltagande Måne i bakgrunden på huvudskärmen.
- beta 17 - Rutan ”FÖRDJUPADE BERÄKNINGAR” i Spårning (kolumner från Dpol och framåt, mellanrader i EME-budget, fliken Solbrus); uppskattat S/N på huvudskärmen; knappen ”VAL AV BAND” med banden från 50 MHz till 122 GHz.
- beta 14 - Nytt namn YAEC - Yet Another EME Calc; gränssnitt på 8 språk (engelska, italienska, tyska, franska, spanska, portugisiska, kinesiska, japanska) med engelska som startspråk; anropssignal i fönstrets titel.
- beta 13 - Rättning av kompileringsfelet CS0051 (åtkomlighet för Friis-funktionen).
- beta 12 - Radions brusfaktor härleds från dess MDS med den bandbredd som användaren valt (samma som i beräkningen av S/N).
- beta 11 - Huvudskärmen Spårning omgjord (min och DX-stationens lokator, frekvens, datum och tider, min och DX-stationens azimut och elevation, andra användbara data); lokator och frekvens kopieras automatiskt till alla flikar; mottagarens brusfaktor med Friis formel; Avstånd och Dgrd upp till 61 dagar; anropssignal i de allmänna inställningarna; rekommendationer om ALC i instruktionerna.
- beta 10 - Fliken Spårning; kHz från 000 till 999; veckodag; bandbredd och S/N med Solen i budgeten; ground gain BETA; förlust i kablarna transverter-radio; mörkt tema och teckensnitt; Dgrd över en månad med nymåne; LoTW i grönt; fliken INSTRUKTIONER; startfönster och bekräftelse vid stängning.
- beta 9 - Himlavalvet i azimut/elevation med platt horisont och brusfärger från blått till rött; fliken Avstånd och Dgrd; fliken ABOUT.
- beta 6 - Fliken WWL-karta och ADIF med Maidenhead-rutnät.
- beta 5 - Statuskolumnerna ersatta av färg; titeln ”av Costantino IC8TEM”; rullgardinslista för kHz för CFOM-frekvensen.
- beta 4 - DX-stationens lokala tid härledd från positionen; varaktighet i dagar; verktygstips på kolumnerna; Doppler och CFOM-frekvenser; fliken Himlavalvet.
- beta 3 - Uppskattat S/N i budgeten; fliken Solbrus med SFU-data från webben och val av RSTN-station.
- beta 2 - Fliken EME-budget: EIRP, sträckdämpning, mottagen signal och marginal över MDS.
- beta 1 - Andra station (DX), gemensamma fönster, Dpol, MNR, Tsky och Dgrd som i WSJT-X.
