YAEC – Yet Another EME Calc 1.3
höfundur: Costantino IC8TEM
==========================================

Reiknivél fyrir radíóamatöra sem stunda EME (Jörð–Tungl–Jörð) á 50 til 432 MHz: staða tunglsins og miðunargluggar innan marka eigin loftnets, skipulagning daganna með besta Dgrd, aflbókhald EME-sambands, himin- og sólarsuð, gagnagrunnur yfir kóaxkapla og handbækur um EME. Fyrir Windows, Linux og macOS, á 26 tungumálum.
Frumkóði og niðurhal: https://github.com/ic8tem/YAEC/releases

UPPSETNING – WINDOWS
1. Sæktu YAEC-1.3-Setup.exe af Releases-síðunni og keyrðu hana. Hún setur YAEC upp í Skjöl\YAEC, án stjórnandaréttinda, með flýtileiðum í Start-valmyndinni og á skjáborðinu ásamt fjarlægingarforriti.
2. Ef SmartScreen-viðvörunin birtist: "More info" → "Run anyway".
3. Án uppsetningar: afþjappaðu YAEC-1.3-windows-portable.zip í möppu sem þú getur skrifað í og ræstu YAEC.exe.

UPPSETNING – LINUX
YAEC keyrir á Mono, frjálsa .NET-keyrsluumhverfinu.
- Debian, Ubuntu, Mint: sæktu yaec_1.3_all.deb og settu hana upp með
      sudo apt install ./yaec_1.3_all.deb
  (setur einnig upp Mono). YAEC er ræst úr forritavalmyndinni eða með skipuninni "yaec".
- Aðrar dreifingar: settu upp Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), afþjappaðu YAEC-1.3-linux.tar.gz og keyrðu ./install.sh.

UPPSETNING – macOS (á tilraunastigi)
1. Settu upp Mono fyrir macOS (https://www.mono-project.com/download/stable/) og XQuartz (https://www.xquartz.org).
2. Opnaðu YAEC-1.3-macOS.dmg og dragðu YAEC í Applications. Í fyrsta skiptið: hægrismelltu á YAEC → Open (forritið er ekki undirritað af Apple).

ATHUGUN Á NIÐURHLÖÐNUM SKRÁM (SHA-256)
Hver release inniheldur SHA256SUMS.txt með SHA-256-tætigildi hvers pakka. Berðu það saman við gildi niðurhlöðnu skrárinnar:
- Windows (PowerShell): Get-FileHash .\YAEC-1.3-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Ef gildin tvö eru ólík skaltu ekki setja skrána upp: sæktu hana aftur.

TUNGUMÁL OG GÖGN
Tungumálið er valið efst í aðalglugganum. Öll gögn forritsins eru í möppunni "data": í Windows við hlið YAEC.exe, í Linux í ~/.local/share/YAEC/data, í macOS í ~/Library/Application Support/YAEC/data.

LEYFI
YAEC er ókeypis; texti leyfisins er í skránni LICENSE_is.txt og í flipanum LEYFI í forritinu. Leiki vafi á gildir ítalska útgáfan (LICENZA.txt).

TENGILIÐIR
Villur, betri gögn, þýðingar: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

ÚTGÁFUSAGA
Útgáfur á undan 1.0 kallast beta.
- 1.3 - Níu ný tungumál: hollenska, eistneska, lettneska, litháíska, sænska, norska, íslenska, hebreska og úrdú (26 alls), með handbókunum; leyfi og README á öllum tungumálum, leyfi á tungumáli uppsetningarforritsins; GRAVES-hnappur; TX-tengi og RX-tengi í glugganum EME-aflreikningur (ráð frá NJ9R); færanleg skil milli vinstri dálksins og skýringarmyndarinnar í EME-aflreikningur; gátreiturinn Grá hula í Könnun á hindrunum mínum; DEBUG FORMÚLA verður Yfirferð útreikninga og ABOUT & CREDITS verður UPPLÝSINGAR OG HEIMILDIR; tæknikaflar notendahandbókarinnar á bengölsku, arabísku og tyrknesku; pastellitasamsetningar lagfærðar; glugginn fyrir CALL3.TXT lokast sjálfkrafa eftir uppfærsluna; meira bil á milli hnappa í samskiptagluggum.
- 1.2.1 - Síðan SAMBAND VIÐ HÖFUND OG ÞAKKIR opnast aftur rétt á Linux og macOS; tilvísunin um transvertera bendir á § 1.7.1.
- 1.2 - EME-aflreikningur með vísunum Mitt EIRP, EIRP DX, leiðartap og S/N í báðar áttir (með sól); formúlur Word-skjalsins í einni stærð, innan spássíanna; fylltir hnappar og flatir fellilistar með ávölum brúnum í öllum litasamsetningum; átta pastellitasamsetningar; gildisreitir með örvum hlið við hlið; þrír bestu dagarnir í dagsetningaröð; óskýr himinbakgrunnur; DEBUG FORMÚLA þýtt; handbókin KENNING OG RÁÐ UM EME með ráðum Relu NJ9R (GRAVES, miðun, tengi, mögnun loftneta, JT65B og MAP65, skautunarliðar), nýju köflunum um fyrstu móttöku og spjall á netinu og töflum VE7BQH í formálanum; þakkir til NJ9R, minning um IK1UWL og höfunda greina, vélbúnaðar og hugbúnaðar, með skýringarblöðru um verk þeirra.
- 1.1 - Staða í beinni og +- 24 klst. (áður Eltun) einnig í fortíð og framtíð: dagur úr dagatalinu og tími með því að draga rauðu línuna, tíðni í reitnum Bergmál og tíðnir; reitur fyrir kallmerki DX með CALL3.TXT sótt frá W7GJ og WSJT-X Improved og sameinuð, tillaga að reit og afritun í möppu WSJT-X; Fjarlægð og Dgrd án röðunar, með stjörnubreidd lagða yfir, línur litaðar eins og grafið og nothæfar klukkustundir í grænu að vali; gátreitir í stíl forritsins; kaplar raðaðir eftir þvermáli í fellilistunum og eftir heiti, framleiðanda og gerð í töflunni, með þýddum heimildum; EME-aflreikningur með aðeins 60 s háttum (JT65, Q65-60A, Q65-60B, Q65-60C) og skýringarmynd búnaðar sem lagar sig að textanum; NOTENDAHANDBÓK með yfirliti yfir alla skjái; KENNING OG RÁÐ UM EME með formála höfundar, tölusetningu frá 1 og formúlum sólarsuðs; HTTPS á Linux og macOS með vottorðum kerfisins.
- 1.0.1 - Á útgáfusíðunni á GitHub er skráin SHA256SUMS.txt með SHA-256 fingraförum allra pakkanna: þau eru notuð til að staðfesta að niðurhalaðar skrár séu þær upprunalegu (leiðbeiningar í README).
- 1.0 - Fyrsta stöðuga útgáfa, fyrir Windows, Linux og macOS (Linux og macOS með Mono; gögnin í ~/.local/share/YAEC/data eða í ~/Library/Application Support/YAEC/data); uppsetningarforrit fyrir Windows og pakkar fyrir Linux og macOS búin til á GitHub; fyrri útgáfur kallast beta. Nýr flipi Tunglið yfir heiminum (hæðarhorn tunglsins yfir þurrlendi alls heimsins, DX-stöð með einum smelli, staða loftnetsins þíns); handbókinni skipt í ÍTARLEG NOTENDAHANDBÓK og KENNING OG RÁÐ UM EME; hóparnir Hjálp og tól og Credits and thanks; flipinn Útflutningur útreikninga í Excel; ekkert svigrúm á hætti lengur: S/N í 2500 Hz með dæmigerðan þröskuld til viðmiðunar og mörk JT65 í handbókinni; í handbókinni einnig Q65-taflan fyrir TX1 – TX6, Faraday-snúningur og samantekt greinar SM5BSZ; kapaltafla sem raða má eftir tapi, með nýjum köplum frá Messi & Paoloni, SSB (SeaTex fyrir sjávarumhverfi, Aircom Premium), Belden og Tasker; reitir með einingu án afgangstexta.
- beta 30 - Stjörnubreiddarferill tunglsins undir grafi Fjarlægðar og Dgrd, með hámörkum í norðri og suðri og svæðinu sem er hagstætt þínu jarðarhveli; nýr kafli í handbókinni um stjörnubreidd (mánaðarleg hringrás, hámarkshæðarhorn og klukkustundir yfir sjóndeildarhring, sambönd milli jarðarhvela, 18,6 ára hringrás, suð); gögn I2FAK um Bogmanninn nánar tilgreind fyrir Norður-Ítalíu og yfir 5° hæðarhorni.
- beta 29 - Handbókin þýdd í heild á öll 17 tungumálin; formúlur kafla 3.4, 3.5, 3.5.1 og 3.6 í Equation Editor-stíl; nýr kafli 3.7.3 um TX/RX-raðstýringu (IK1UWL); hnappurinn „Vista sem Word (.docx)“ í handbókinni með efnisyfirliti, blaðsíðutölum og Word-formúlum; skilstika milli efnisyfirlits og texta við 25 %; viðvörun þegar Dpol fer yfir 60° innan 24 klukkustunda (heimild: myndbandsviðtöl við Franco I2FAK).
- beta 28d - Lagfærð lokun við ræsingu í beta 28c (reitir með einingu); óvæntar villur sýndar í skilaboðum og skrifaðar í data\errori.txt; DGRD-reitur aðalskjásins með lágmarki og hámarki grafsins og núverandi gildi.
- beta 28c - Upphafsskjár með stiku sem fyllist á 6 sekúndum; SAMBAND VIÐ HÖFUND OG ÞAKKIR með tunglinu, regnbogahimni og þökkum; pillulaga hnappar og ávalir fellilistar; EME-aflreikningur eins og í drögunum (stöðvaspjöld, vísar, teiknuð tafla, skýringarmynd búnaðar sem lagar sig að letrinu, einingar inni í reitunum, listi yfir transvertera); Staða tunglsins með spjöldum, pillum í beinni, lásum og nýjum glugga Dálkar; Sólarsuð með uppsprettunni Learmonth (BoM) og ásum 100 – 20 000 MHz; KÓAXKAPLAR með pillusíum, teiknaðri töflu og grafi 1 – 20 dB.
- beta 28b - Handbók: kaflinn „Fliparnir“ fjarlægður og kaflar og allar tilvísanir endurtölusett; formúlur MNR, T(f), Dgrd og EME-aflreiknings í Equation Editor-stíl; fyrirsagnir, töflur hlið við hlið, stikur, auðkenndar línur, litir og dæmareitur eins og í drögunum; formagnari með prófunum á IC-746PRO (ARRL) og FT-897 (RadCom); transverter með stóru reiknikorti og Kuhne TR 144 H +40 á 25 dB; heimildir fluttar úr flipanum ABOUT & CREDITS í kaflann „Heimildir, gögn og viðurkenningar“; kort Könnunar á hindrunum mínum miðað á JJ00AA þegar reit vantar.
- beta 28a - Lokunargluggi með hnöppunum Já og Nei alltaf sýnilegum; þykkari gul markalína í Himinhvelfingu; texti sem skarast ekki með stækkuðu letri; átta nýir kaplar (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) og skýringarblöðrur kapla í stíl forritsins; leyfi með línubili og orðabili eins og í drögunum; flipinn SAMBAND VIÐ HÖFUND OG ÞAKKIR; smellt utan hrings Könnunar á hindrunum mínum til að velja nýjan reit; tungumál, letur og leturstærð breytast án þess að endurræsa forritið.
- beta 27 - Bönd upp að 432 MHz; upphafsskjár með merki og stuðningi Sezione ARI Valle del Liri; þakkir í lokunarglugganum; tungumálin bengalska, arabíska og tyrkneska (17 tungumál); aðalskjár með fjórum lituðum reitum, FARA Í ÚTREIKNINGA og FARA Í HIMINHVELFINGU, reitir allt að 14 stöfum, val á leturgerð og dökkar skýringarblöðrur; Könnun á hindrunum mínum með ógegnsæi og grátóni; auðkenndur dagur í Fjarlægð og Dgrd; hnappurinn Dálkar í Stöðu tunglsins; EME-aflreikningur með skýringarmynd TX/RX-búnaðarins; Sólarsuð með uppsprettum, vísum og rófi; DEBUG FORMÚLA í Word-stíl með vistun í .docx; nýir flipar KÓAXKAPLAR, SAMBAND VIÐ HÖFUND og NOTKUNARLEYFI; handbók inni í forritinu (ÍTARLEG NOTENDAHANDBÓK).
- beta 26 - Nýtt val flipa á tveimur stigum (hópar og flipar); litasamsetningin Svart og Nótt í bláum tónum; breytanlegur litur og þykkt beggja Dgrd-ferlanna og dagar með sólina nálægt tunglinu; viðvaranir um mögulega pólhettudeyfingu (PCA) og norðurljósadeyfingu fyrir báðar stöðvar; gátreitur fyrir óskýrleika í Miðunarkorti; gráar skálínur utan marka í Himinhvelfingu og texti sem skarast ekki; nýr flipi DEBUG FORMÚLA; tákn með tunglinu; PDF-handbækur á öllum 14 tungumálunum.
- beta 25 - Flipinn Fjarlægð og Dgrd endurnýjaður: þrír bestu dagarnir, dagatal með tunglkvartilum, graf með Dgrd (núll neðst) og meðalfjarlægð lagða yfir, nýtt tungl og fullt tungl, stutt röðun; nýr flipi Miðunarkort með loftmynd eða landslagskorti, tungli, ferli, tunglrisi og tunglsetri og mörkum loftnetsins sem færa má með músinni.
- beta 24 - Texti Himinhvelfingar tvöfalt stærri; tungumálin rússneska, úkraínska og afríkanska; compila.bat býr ekki lengur til PDF-handbækurnar.
- beta 23 - Nýr aðalskjár: UTC-tími, staðartími og staðartími DX, stöðuborði með niðurtalningu, áttaviti fyrir stefnuhorn og bogi fyrir hæðarhorn með mörkum loftnetsins, tunglkvartil með tunglrisi og tunglsetri, Dgrd- og S/N-stikur, stika fyrir næstu 24 klukkustundir; næturþema í öllum flipum; þrír litakvarðar í Himinhvelfingu með útlínutexta.
- beta 22 - Öll gögn í undirmöppunni data við hlið keyrsluskrárinnar (flutt úr AppData og úr möppu forritsins), athuguð og sótt aftur við ræsingu; PDF-handbækur með skjámyndum á ítölsku, ensku, frönsku, þýsku, spænsku og portúgölsku; gátreitir og VAL BANDA efst til hægri í glugganum, S/N aftur neðst til hægri.
- beta 21 - Aðalskjár: gátreiturinn ÍTARLEGIR ÚTREIKNINGAR, STEFNUHORN HÉR og HÆÐARHORN HÉR, dagsetning við hlið titilsins, S/N-reitur undir VAL BANDA; val á letri fyrir allt forritið. Ný bönd 70 MHz og 222 MHz.
- beta 20 - Landhæð sótt sjálfkrafa af netinu (Open Topo Data, Open-Meteo) þegar reiturinn hefur 10 stafi.
- beta 19 - Titill með kallmerki notandans; enginn sjálfgefinn reitur eða kallmerki; stillingar í möppu forritsins; ný röð flipa; LEIÐBEININGAR með öllum færibreytum, MNR og CFOM; flipinn tilraun-EXCEL; niðurhal dagbókar frá LoTW; ABOUT & CREDITS; tungumálin hindí, kóreska og indónesíska.
- beta 18 - EME-aflreikningur: bandbreidd allt að 3000 Hz, suðtölur við hlið mögnunargilda, transverter undanskilinn útreikningnum með mögnun 0, loftnetshitastig Tant (töflur VE7BQH); almennar stillingar í flipanum Eltun; vaxandi tungl í móðu í bakgrunni aðalskjásins.
- beta 17 - Gátreiturinn „ÍTARLEGIR ÚTREIKNINGAR“ í Eltun (dálkar frá Dpol og áfram, millilínur EME-aflreiknings, flipinn Sólarsuð); áætlað S/N á aðalskjánum; hnappurinn „VAL BANDA“ með böndum frá 50 MHz til 122 GHz.
- beta 14 - Nýtt nafn YAEC - Yet Another EME Calc; viðmót á 8 tungumálum (ensku, ítölsku, þýsku, frönsku, spænsku, portúgölsku, kínversku, japönsku) með ensku sem upphafstungumál; kallmerki í titli gluggans.
- beta 13 - Lagfæring á þýðingarvillu CS0051 (aðgengi Friis-fallsins).
- beta 12 - Suðtala stöðvarinnar er fundin út frá MDS hennar með bandbreiddinni sem notandinn velur (þeirri sömu og í S/N-útreikningnum).
- beta 11 - Aðalskjár Eltunar endurhannaður (minn reitur og reitur DX, tíðni, dagsetning og tímar, stefnuhorn og hæðarhorn mín og DX, önnur gagnleg gögn); reitur og tíðni afrituð sjálfkrafa í alla flipa; suðtala viðtækis með formúlu Friis; Fjarlægð og Dgrd allt að 61 degi; kallmerki í almennum stillingum; ráðleggingar um ALC í leiðbeiningunum.
- beta 10 - Flipinn Eltun; kHz frá 000 til 999; vikudagur; bandbreidd og S/N með sól í aflreikningnum; BETA ground gain; tap kapla transverter-stöð; dökkt þema og letur; Dgrd yfir mánuð með nýju tungli; LoTW í grænu; flipinn LEIÐBEININGAR; upphafsgluggi og staðfesting við lokun.
- beta 9 - Himinhvelfing í stefnuhorni/hæðarhorni með flötum sjóndeildarhring og suðlitum frá bláu til rauðs; flipinn Fjarlægð og Dgrd; flipinn ABOUT.
- beta 6 - Flipinn WWL- og ADIF-kort með Maidenhead-neti.
- beta 5 - Stöðudálkum skipt út fyrir lit; titillinn „eftir Costantino IC8TEM“; fellilisti fyrir kHz CFOM-tíðninnar.
- beta 4 - Staðartími DX fundinn út frá staðsetningu; lengd í dögum; skýringarblöðrur á dálkum; Doppler og CFOM-tíðnir; flipinn Himinhvelfing.
- beta 3 - Áætlað S/N í aflreikningnum; flipinn Sólarsuð með SFU-gögnum af netinu og vali á RSTN-stöð.
- beta 2 - Flipinn EME-aflreikningur: EIRP, leiðartap, móttekið merki og svigrúm yfir MDS.
- beta 1 - Seinni stöð (DX), sameiginlegir gluggar, Dpol, MNR, Tsky og Dgrd eins og í WSJT-X.
