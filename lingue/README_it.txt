YAEC – Yet Another EME Calc 1.2.1
a cura di Costantino IC8TEM
==========================================

Calcolatore per radioamatori che lavorano in EME (Terra–Luna–Terra) da 50 a 432 MHz: posizione della Luna e finestre di puntamento secondo i limiti della propria antenna, pianificazione dei giorni con la Dgrd migliore, budget del collegamento EME, rumore del cielo e del Sole, database dei cavi coassiali e manuali sull'EME. Per Windows, Linux e macOS, in 26 lingue.
Sorgente e download: https://github.com/ic8tem/YAEC/releases

INSTALLAZIONE – WINDOWS
1. Scarica YAEC-1.2.1-Setup.exe dalla pagina Releases ed eseguilo. Installa YAEC in Documenti\YAEC, senza diritti di amministratore, con i collegamenti nel menu Start e sul desktop e il programma di disinstallazione.
2. Se compare l'avviso di SmartScreen: "Ulteriori informazioni" → "Esegui comunque".
3. Senza installazione: estrai YAEC-1.2.1-windows-portable.zip in una cartella in cui puoi scrivere e avvia YAEC.exe.

INSTALLAZIONE – LINUX
YAEC funziona con Mono, il runtime .NET libero.
- Debian, Ubuntu, Mint: scarica yaec_1.2.1_all.deb e installalo con
      sudo apt install ./yaec_1.2.1_all.deb
  (installa anche Mono). YAEC si avvia dal menu delle applicazioni o con il comando "yaec".
- Altre distribuzioni: installa Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), estrai YAEC-1.2.1-linux.tar.gz e avvia ./install.sh.

INSTALLAZIONE – macOS (sperimentale)
1. Installa Mono per macOS (https://www.mono-project.com/download/stable/) e XQuartz (https://www.xquartz.org).
2. Apri YAEC-1.2.1-macOS.dmg e trascina YAEC in Applicazioni. La prima volta: clic destro su YAEC → Apri (l'app non è firmata da Apple).

CONTROLLO DEI FILE SCARICATI (SHA-256)
Ogni release contiene SHA256SUMS.txt con l'impronta SHA-256 di ogni pacchetto. Confrontala con quella del file scaricato:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Se i due valori sono diversi non installare il file: scaricalo di nuovo.

LINGUA E DATI
La lingua si sceglie in alto nella schermata principale. Tutti i dati del programma stanno nella cartella "data": su Windows accanto a YAEC.exe, su Linux in ~/.local/share/YAEC/data, su macOS in ~/Library/Application Support/YAEC/data.

LICENZA
YAEC è gratuito; il testo della licenza è nel file LICENSE_it.txt e nella linguetta LICENZA D'USO del programma. In caso di dubbio fa fede la versione italiana (LICENZA.txt).

CONTATTI
Errori, dati migliori, traduzioni: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

STORIA DELLE VERSIONI
Le versioni precedenti alla 1.0 si chiamano beta.
- 1.2.1 - La pagina CONTATTI DELL'AUTORE E RINGRAZIAMENTI si apre di nuovo correttamente su Linux e macOS; il rimando per i transverter indica il § 1.7.1.
- 1.2 - Budget EME con gli indicatori EIRP mia, EIRP del DX, perdita di tratta e S/N nei due sensi (con il Sole); formule del documento Word di una sola grandezza, dentro i margini; pulsanti pieni e menu a tendina piatti con bordo arrotondato in tutti gli schemi; otto schemi di colori pastello; caselle dei valori con le frecce affiancate; i tre giorni migliori in ordine di data; sfondo del cielo sfocato; DEBUG FORMULE tradotto; manuale TEORIA E CONSIGLI SULL'EME con i consigli di Relu NJ9R (GRAVES, puntamento, connettori, guadagno delle antenne, JT65B e MAP65, relè di polarizzazione), i nuovi paragrafi sulla prima ricezione e sulle chat via Internet e le tabelle di VE7BQH nella prefazione; ringraziamenti a NJ9R, il ricordo di IK1UWL e gli autori di articoli, hardware e software, con il fumetto delle loro opere.
- 1.1 - Posizione live e +- 24h (ex Tracciamento) anche nel passato e nel futuro: giorno dal calendario e ora trascinando la linea rossa, frequenza nel riquadro Eco e frequenze; casella del nominativo del DX con il CALL3.TXT scaricato da W7GJ e da WSJT-X Improved e fuso, locator proposto e copia nella cartella di WSJT-X; Distanza e Dgrd senza classifica, con la declinazione sovrapposta, righe colorate come il grafico e ore utili in verde a scelta; caselle di spunta nello stile del programma; cavi ordinati per diametro nelle tendine e per nome, costruttore e tipo nella tabella, con fonti tradotte; Budget EME con i soli modi a 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) e schema dell'impianto che si adatta ai testi; MANUALE D'USO con la rassegna di tutte le schermate; TEORIA E CONSIGLI SULL'EME con la prefazione dell'autore, numerazione da 1 e formule del rumore solare; HTTPS su Linux e macOS con i certificati del sistema.
- 1.0.1 - Nella pagina della release su GitHub c'è il file SHA256SUMS.txt con le impronte SHA-256 di tutti i pacchetti: servono a verificare che i file scaricati siano proprio quelli originali (istruzioni nel README).
- 1.0 - Prima versione stabile, per Windows, Linux e macOS (Linux e macOS con Mono; i dati in ~/.local/share/YAEC/data o in ~/Library/Application Support/YAEC/data); installatore per Windows e pacchetti per Linux e macOS creati su GitHub; le versioni precedenti si chiamano beta. Nuova linguetta Luna sul mondo (elevazione della Luna sulle terre emerse di tutto il mondo, stazione DX con un clic, stato della tua antenna); manuale diviso in MANUALE D'USO APPROFONDITO e TEORIA E CONSIGLI SULL'EME; gruppi Aiuto e tools e Credits and thanks; linguetta Export in Excel dei calcoli; niente più margine sul modo: S/N in 2500 Hz con la soglia tipica come riferimento e i limiti del JT65 nel manuale; nel manuale anche la tabella del Q65 per TX1 – TX6, la rotazione di Faraday e la sintesi dell'articolo di SM5BSZ; tabella dei cavi ordinabile per perdita, con nuovi cavi Messi & Paoloni, SSB (SeaTex per ambienti marini, Aircom Premium), Belden e Tasker; caselle con l'unità senza scritte residue.
- beta 30 - Curva della declinazione della Luna sotto il grafico di Distanza e Dgrd, con i massimi a nord e a sud e la zona favorevole al tuo emisfero; nuovo paragrafo del manuale sulla declinazione (ciclo mensile, elevazione massima e ore sopra l'orizzonte, collegamenti tra emisferi, ciclo di 18,6 anni, rumore); dati di I2FAK sul Sagittario precisati per il Nord Italia e sopra i 5° di elevazione.
- beta 29 - Manuale tradotto per intero in tutte le 17 lingue; formule dei capitoli 3.4, 3.5, 3.5.1 e 3.6 in stile Equation Editor; nuovo paragrafo 3.7.3 sul sequenziatore TX/RX (IK1UWL); pulsante "Salva in Word (.docx)" del manuale con sommario, numeri di pagina e formule di Word; barra tra indice e testo al 25 %; avviso quando Dpol supera 60° nelle 24 ore (fonte: videointerviste di Franco I2FAK).
- beta 28d - Corretta la chiusura all'avvio della beta 28c (caselle con l'unità); errori non previsti mostrati in un messaggio e scritti in data\errori.txt; riquadro DGRD della schermata principale con il minimo e il massimo del grafico e il valore di adesso.
- beta 28c - Schermata di avvio con la barra che si riempie in 6 secondi; CONTATTI DELL'AUTORE E RINGRAZIAMENTI con la Luna, il cielo arcobaleno e i ringraziamenti; pulsanti a pastiglia e tendine arrotondate; Budget EME come nel bozzetto (schede delle stazioni, indicatori, tabella disegnata, schema dell'impianto che si adatta ai caratteri, unità dentro le caselle, elenco dei transverter); Posizione della Luna con schede, pastiglie in diretta, lucchetti e nuova finestra Colonne; Rumore solare con la fonte Learmonth (BoM) e assi 100 – 20 000 MHz; CAVI COASSIALI con filtri a pastiglia, tabella disegnata e grafico 1 – 20 dB.
- beta 28b - Manuale: tolto il capitolo «Le linguette» e rinumerati i capitoli e tutti i rimandi; formule di MNR, T(f), Dgrd e del Budget EME in stile Equation Editor; titoli, tabelle affiancate, barre, righe evidenziate, colori e locator d'esempio come nei bozzetti; preamplificatore con le prove di IC-746PRO (ARRL) e FT-897 (RadCom); transverter con abaco grande e Kuhne TR 144 H +40 a 25 dB; crediti spostati dalla linguetta ABOUT & CREDITS al capitolo «Fonti, dati e crediti»; mappa della Ricognizione dei miei ostacoli centrata su JJ00AA quando manca il locator.
- beta 28a - Finestra di chiusura con i pulsanti Sì e No sempre visibili; linea gialla dei limiti più spessa nella Volta celeste; scritte che non si sovrappongono con i caratteri ingranditi; otto cavi nuovi (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) e fumetti dei cavi nello stile del programma; licenza con interlinea e spaziatura come il bozzetto; linguetta CONTATTI DELL'AUTORE E RINGRAZIAMENTI; clic fuori dal cerchio della Ricognizione dei miei ostacoli per scegliere un nuovo locator; lingua, carattere e grandezza dei caratteri cambiano senza riavviare il programma.
- beta 27 - Bande fino a 432 MHz; schermata di avvio con il logo e il patrocinio della Sezione ARI Valle del Liri; ringraziamento nella finestra di chiusura; lingue bengalese, arabo e turco (17 lingue); schermata principale con quattro riquadri colorati, VAI AI CALCOLI e VAI A VOLTA CELESTE, locator fino a 14 caratteri, scelta del tipo di carattere e fumetti scuri; Ricognizione dei miei ostacoli con opacità e tono del grigio; giorno evidenziato in Distanza e Dgrd; pulsante Colonne nella Posizione della Luna; Budget EME con lo schema dell'impianto TX/RX; Rumore solare con fonti, indicatori e spettro; DEBUG FORMULE in stile Word con salvataggio .docx; nuove linguette CAVI COASSIALI, CONTATTI DELL'AUTORE e LICENZA D'USO; manuale dentro il programma (MANUALE D'USO APPROFONDITO).
- beta 26 - Nuova scelta delle linguette su due livelli (gruppi e linguette); schema di colori Nero e schema Notte nei toni del blu; colore e spessore modificabili per le due curve della Dgrd e giorni con il Sole vicino alla Luna; avvisi di possibile assorbimento polare (PCA) e aurorale per le due stazioni; casella per la sfocatura nella Mappa di puntamento; righe diagonali grigie fuori dai limiti nella Volta celeste e scritte che non si sovrappongono; nuova linguetta DEBUG FORMULE; icona con la Luna; manuali PDF in tutte le 14 lingue.
- beta 25 - Linguetta Distanza e Dgrd rinnovata: i tre giorni migliori, calendario dei giorni con fase lunare, grafico con la Dgrd (zero in basso) e la distanza media sovrapposta, luna nuova e luna piena, classifica corta; nuova linguetta Mappa di puntamento con mappa aerofotografica o topografica, Luna, percorso, sorgere e tramonto e limiti dell'antenna da spostare con il mouse.
- beta 24 - Scritte della Volta celeste grandi il doppio; lingue russo, ucraino e afrikaans; compila.bat non crea più i manuali PDF.
- beta 23 - Schermata principale nuova: ora UTC, ora locale e ora locale del DX, fascia di stato con il conto alla rovescia, bussola dell'azimut e arco dell'elevazione con i limiti dell'antenna, fase della Luna con sorgere e tramonto, barrette di Dgrd e S/N, barra delle prossime 24 ore; tema notte in tutte le linguette; tre scale di colori nella Volta celeste con scritte bordate.
- beta 22 - Tutti i dati nella sottocartella data accanto all'eseguibile (spostati da AppData e dalla cartella del programma), controllati e riscaricati all'avvio; manuali PDF con le schermate in italiano, inglese, francese, tedesco, spagnolo e portoghese; caselle e SCELTA BANDE in alto a destra della finestra, S/N di nuovo in basso a destra.
- beta 21 - Schermata principale: casella CALCOLI APPROFONDITI, AZIMUT ed ELEVAZIONE LOCALE, data accanto al titolo, riquadro S/N sotto SCELTA BANDE; scelta del carattere per tutto il programma. Nuove bande 70 MHz e 222 MHz.
- beta 20 - Quota del terreno presa automaticamente dal web (Open Topo Data, Open-Meteo) quando il locator ha 10 caratteri.
- beta 19 - Titolo con il nominativo dell'utente; nessun locator o nominativo predefinito; impostazioni nella cartella del programma; nuovo ordine delle linguette; ISTRUZIONI con tutti i parametri, MNR e CFOM; linguetta sperimentale-EXCEL; download del log da LoTW; ABOUT & CREDITS; lingue hindi, coreano e indonesiano.
- beta 18 - Budget EME: banda passante fino a 3000 Hz, cifre di rumore accanto ai guadagni, transverter escluso dal calcolo con guadagno 0, temperatura d'antenna Tant (tabelle VE7BQH); impostazioni generali nella linguetta Tracciamento; Luna crescente sfocata sullo sfondo della schermata principale.
- beta 17 - Casella "CALCOLI APPROFONDITI" nel Tracciamento (colonne da Dpol in poi, righe intermedie del Budget EME, linguetta Rumore solare); S/N stimato nella schermata principale; pulsante "SCELTA BANDE" con le bande da 50 MHz a 122 GHz.
- beta 14 - Nuovo nome YAEC - Yet Another EME Calc; interfaccia in 8 lingue (inglese, italiano, tedesco, francese, spagnolo, portoghese, cinese, giapponese) con l'inglese come lingua di avvio; nominativo nel titolo della finestra.
- beta 13 - Correzione dell'errore di compilazione CS0051 (accessibilità della funzione di Friis).
- beta 12 - La cifra di rumore della radio è ricavata dal suo MDS con la banda passante scelta dall'utente (la stessa del calcolo dell'S/N).
- beta 11 - Schermata principale Tracciamento rifatta (locator mio e del DX, frequenza, data e ore, azimut ed elevazione miei e del DX, altri dati utili); locator e frequenza ricopiati automaticamente in tutte le linguette; figura di rumore del ricevitore con la formula di Friis; Distanza e Dgrd fino a 61 giorni; nominativo nelle impostazioni generali; raccomandazioni sull'ALC nelle istruzioni.
- beta 10 - Linguetta Tracciamento; kHz da 000 a 999; giorno della settimana; banda passante e S/N con il Sole nel budget; ground gain BETA; perdita dei cavetti transverter-radio; tema scuro e caratteri; Dgrd su un mese con luna nuova; LoTW in verde; linguetta ISTRUZIONI; finestra di apertura e conferma di chiusura.
- beta 9 - Volta celeste in azimut/elevazione con orizzonte piatto e colori del rumore dal blu al rosso; linguetta Distanza e Dgrd; linguetta ABOUT.
- beta 6 - Linguetta Mappa WWL e ADIF con reticolo Maidenhead.
- beta 5 - Colonne di stato sostituite dal colore; titolo "a cura di Costantino IC8TEM"; tendina kHz per la frequenza CFOM.
- beta 4 - Ora locale del DX ricavata dalla posizione; durata in giorni; fumetti sulle colonne; Doppler e frequenze CFOM; linguetta Volta celeste.
- beta 3 - S/N stimato nel budget; linguetta Rumore solare con dati SFU dal web e scelta della stazione RSTN.
- beta 2 - Linguetta Budget EME: EIRP, perdita di tratta, segnale ricevuto e margine sul MDS.
- beta 1 - Seconda stazione (DX), finestre comuni, Dpol, MNR, Tsky e Dgrd come in WSJT-X.
