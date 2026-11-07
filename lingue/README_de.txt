YAEC – Yet Another EME Calc 1.2.1
von Costantino IC8TEM
==========================================

Rechner für Funkamateure, die EME (Erde–Mond–Erde) von 50 bis 432 MHz betreiben: Mondposition und Zeitfenster für die Ausrichtung innerhalb der Grenzen der eigenen Antenne, Planung der Tage mit der besten Dgrd, EME-Streckenbudget, Himmels- und Sonnenrauschen, Datenbank der Koaxialkabel und Handbücher zu EME. Für Windows, Linux und macOS, in 26 Sprachen.
Quellcode und Download: https://github.com/ic8tem/YAEC/releases

INSTALLATION – WINDOWS
1. Lade YAEC-1.2.1-Setup.exe von der Seite Releases herunter und führe die Datei aus. Sie installiert YAEC in Dokumente\YAEC, ohne Administratorrechte, mit Verknüpfungen im Startmenü und auf dem Desktop sowie einem Deinstallationsprogramm.
2. Wenn die SmartScreen-Warnung erscheint: „Weitere Informationen“ → „Trotzdem ausführen“.
3. Ohne Installation: entpacke YAEC-1.2.1-windows-portable.zip in einen Ordner, in den du schreiben darfst, und starte YAEC.exe.

INSTALLATION – LINUX
YAEC läuft mit Mono, der freien .NET-Laufzeitumgebung.
- Debian, Ubuntu, Mint: lade yaec_1.2.1_all.deb herunter und installiere es mit
      sudo apt install ./yaec_1.2.1_all.deb
  (installiert auch Mono). YAEC startet über das Anwendungsmenü oder mit dem Befehl „yaec“.
- Andere Distributionen: installiere Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), entpacke YAEC-1.2.1-linux.tar.gz und starte ./install.sh.

INSTALLATION – macOS (experimentell)
1. Installiere Mono für macOS (https://www.mono-project.com/download/stable/) und XQuartz (https://www.xquartz.org).
2. Öffne YAEC-1.2.1-macOS.dmg und ziehe YAEC in den Ordner Programme. Beim ersten Mal: Rechtsklick auf YAEC → Öffnen (die App ist nicht von Apple signiert).

PRÜFUNG DER HERUNTERGELADENEN DATEIEN (SHA-256)
Jedes Release enthält SHA256SUMS.txt mit dem SHA-256-Hashwert jedes Pakets. Vergleiche ihn mit dem Wert der heruntergeladenen Datei:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Wenn die beiden Werte verschieden sind, installiere die Datei nicht, sondern lade sie erneut herunter.

SPRACHE UND DATEN
Die Sprache wird oben im Hauptfenster gewählt. Alle Daten des Programms liegen im Ordner „data“: unter Windows neben YAEC.exe, unter Linux in ~/.local/share/YAEC/data, unter macOS in ~/Library/Application Support/YAEC/data.

LIZENZ
YAEC ist kostenlos; der Lizenztext steht in der Datei LICENSE_de.txt und im Reiter LIZENZ des Programms. Im Zweifelsfall ist die italienische Fassung (LICENZA.txt) maßgeblich.

KONTAKT
Fehler, bessere Daten, Übersetzungen: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

VERSIONSGESCHICHTE
Die Versionen vor 1.0 heißen Beta.
- 1.2.1 - Die Seite KONTAKT ZUM AUTOR UND DANK öffnet sich unter Linux und macOS wieder korrekt; der Verweis für die Transverter zeigt auf § 1.7.1.
- 1.2 - EME-Budget mit den Anzeigen Meine EIRP, EIRP des DX, Streckendämpfung und S/N in beide Richtungen (mit der Sonne); Formeln des Word-Dokuments in einer einzigen Größe, innerhalb der Ränder; gefüllte Schaltflächen und flache Auswahllisten mit abgerundetem Rand in allen Schemata; acht Pastell-Farbschemata; Wertfelder mit nebeneinanderliegenden Pfeilen; die drei besten Tage nach Datum geordnet; unscharfer Himmelshintergrund; FORMEL-DEBUG übersetzt; Handbuch THEORIE UND TIPPS ZU EME mit den Ratschlägen von Relu NJ9R (GRAVES, Ausrichtung, Stecker, Antennengewinn, JT65B und MAP65, Polarisationsrelais), den neuen Abschnitten zum ersten Empfang und zu den Internet-Chats und den VE7BQH-Tabellen im Vorwort; Dank an NJ9R, Erinnerung an IK1UWL und an die Autoren von Artikeln, Hardware und Software, mit einem Tooltip zu ihren Werken.
- 1.1 - Position live und +- 24h (früher Verfolgung) auch in Vergangenheit und Zukunft: Tag aus dem Kalender und Uhrzeit durch Ziehen der roten Linie, Frequenz im Feld Echo und Frequenzen; Rufzeichenfeld des DX mit der CALL3.TXT von W7GJ und WSJT-X Improved, zusammengeführt, mit vorgeschlagenem Locator und Kopie in den WSJT-X-Ordner; Entfernung und Dgrd ohne Rangliste, mit überlagerter Deklination, Zeilen in den Farben des Diagramms und wahlweise grünen nutzbaren Stunden; Kontrollkästchen im Stil des Programms; Kabel in den Auswahllisten nach Durchmesser und in der Tabelle nach Name, Hersteller und Typ sortiert, mit übersetzten Quellen; EME-Budget nur mit den 60-s-Modi (JT65, Q65-60A, Q65-60B, Q65-60C) und einem Anlagenschema, das sich den Texten anpasst; BENUTZERHANDBUCH mit allen Bildschirmen; THEORIE UND TIPPS ZU EME mit dem Vorwort des Autors, Nummerierung ab 1 und den Formeln des Sonnenrauschens; HTTPS unter Linux und macOS mit den Zertifikaten des Systems.
- 1.0.1 - Auf der Release-Seite bei GitHub gibt es die Datei SHA256SUMS.txt mit den SHA-256-Prüfsummen aller Pakete: Damit lässt sich prüfen, ob die heruntergeladenen Dateien die Originale sind (Anleitung in der README).
- 1.0 - Erste stabile Version, für Windows, Linux und macOS (Linux und macOS mit Mono; Daten in ~/.local/share/YAEC/data bzw. in ~/Library/Application Support/YAEC/data); Installationsprogramm für Windows und Pakete für Linux und macOS auf GitHub erstellt; die früheren Versionen heißen beta. Neuer Reiter Mond über der Welt (Elevation des Mondes über den Landflächen der ganzen Welt, DX-Station mit einem Klick, Zustand Ihrer Antenne); Handbuch aufgeteilt in AUSFÜHRLICHES BENUTZERHANDBUCH und THEORIE UND TIPPS ZU EME; Gruppen Hilfe und Tools sowie Credits and thanks; Reiter Export der Berechnungen nach Excel; keine Betriebsartreserve mehr: S/N in 2500 Hz mit der typischen Schwelle als Bezug und die Grenzen von JT65 im Handbuch; im Handbuch außerdem die Q65-Tabelle für TX1 – TX6, die Faraday-Drehung und die Zusammenfassung des Artikels von SM5BSZ; Kabeltabelle nach Dämpfung sortierbar, mit neuen Kabeln von Messi & Paoloni, SSB (SeaTex für maritime Umgebungen, Aircom Premium), Belden und Tasker; Felder mit Einheit ohne Textreste.
- beta 30 - Kurve der Monddeklination unter dem Diagramm Entfernung und Dgrd, mit den nördlichen und südlichen Maxima und dem für Ihre Hemisphäre günstigen Bereich; neuer Handbuchabschnitt zur Deklination (Monatszyklus, maximale Elevation und Stunden über dem Horizont, Verbindungen zwischen Hemisphären, 18,6-Jahres-Zyklus, Rauschen); die Angaben von I2FAK zum Schützen für Norditalien und über 5° Elevation präzisiert.
- beta 29 - Handbuch vollständig in alle 17 Sprachen übersetzt; Formeln der Abschnitte 3.4, 3.5, 3.5.1 und 3.6 im Stil des Formel-Editors; neuer Abschnitt 3.7.3 über den TX/RX-Sequencer (IK1UWL); Schaltfläche „Salva in Word (.docx)“ für das Handbuch mit Inhaltsverzeichnis, Seitenzahlen und Word-Formeln; Trennleiste zwischen Inhalt und Text bei 25 %; Warnung, wenn Dpol innerhalb von 24 Stunden 60° überschreitet (Quelle: Videointerviews mit Franco I2FAK).
- beta 28d - Behoben: beta 28c schloss sich beim Start (Felder mit Einheit); unerwartete Fehler erscheinen in einer Meldung und in data\errori.txt; DGRD-Feld des Hauptbildschirms mit Minimum und Maximum des Diagramms und dem aktuellen Wert.
- beta 28c - Startbildschirm mit einem Balken, der sich in 6 Sekunden füllt; AUTORENKONTAKT UND DANKSAGUNGEN mit Mond, Regenbogenhimmel und Danksagungen; Pillen-Schaltflächen und abgerundete Auswahllisten; EME-Budget wie im Entwurf (Stationskarten, Anzeigen, gezeichnete Tabelle, Anlagenschema passend zur Schriftgröße, Einheiten in den Feldern, Transverter-Liste); Mondposition mit Karten, Live-Pillen, Schlössern und neuem Spaltenfenster; Sonnenrauschen mit der Quelle Learmonth (BoM) und Achsen 100 – 20 000 MHz; KOAXIALKABEL mit Pillenfiltern, gezeichneter Tabelle und Diagramm 1 – 20 dB.
- beta 28b - Handbuch: Kapitel „Die Reiter“ entfernt, Kapitel und alle Verweise neu nummeriert; Formeln für MNR, T(f), Dgrd und das EME-Budget im Stil des Formel-Editors; Überschriften, nebeneinanderstehende Tabellen, Balken, hervorgehobene Zeilen, Farben und Beispiel-Locator wie in den Entwürfen; Vorverstärker mit den Tests von IC-746PRO (ARRL) und FT-897 (RadCom); Transverter mit großem Diagramm und Kuhne TR 144 H +40 mit 25 dB; Danksagungen vom Reiter ABOUT & CREDITS in das Kapitel „Quellen, Daten und Danksagungen“ verschoben; Karte der Erkundung meiner Hindernisse ohne Locator auf JJ00AA zentriert.
- beta 28a - Schließfenster mit stets sichtbaren Schaltflächen Ja und Nein; dickere gelbe Grenzlinie in der Himmelsansicht; Texte, die sich bei vergrößerter Schrift nicht mehr überlappen; acht neue Kabel (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) und Kabel-Tooltips im Stil des Programms; Lizenz mit Zeilen- und Wortabständen wie im Entwurf; Reiter KONTAKT ZUM AUTOR UND DANK; Klick außerhalb des Kreises der Erkundung meiner Hindernisse, um einen neuen Locator zu wählen; Sprache, Schriftart und Schriftgröße ändern sich ohne Neustart des Programms.
- beta 27 - Bänder nur bis 432 MHz; Startbildschirm mit dem Logo und der Schirmherrschaft der ARI-Sektion Valle del Liri; Dankeszeile im Schließfenster; Sprachen Bengalisch, Arabisch und Türkisch (17 Sprachen); Hauptbildschirm mit vier farbigen Karten, ZU DEN BERECHNUNGEN und ZUR HIMMELSANSICHT, Locator bis 14 Zeichen, Schriftartwahl und dunkle Tooltips; Erkundung meiner Hindernisse mit Deckkraft und Ton des Graus; hervorgehobener Tag in Entfernung und Dgrd; Spalten-Schaltfläche in der Mondposition; EME-Budget mit dem Schema der TX/RX-Anlage; Sonnenrauschen mit Quellen, Indikatoren und Spektrum; FORMEL-DEBUG im Word-Stil mit Speichern als .docx; neue Reiter KOAXIALKABEL, KONTAKT ZUM AUTOR und LIZENZ; Handbuch im Programm (AUSFÜHRLICHES BENUTZERHANDBUCH).
- beta 26 - Neue Auswahl der Registerkarten auf zwei Ebenen (Gruppen und Registerkarten); Farbschema Schwarz und Schema Nacht in Blautönen; Farbe und Dicke der beiden Dgrd-Kurven einstellbar und Tage mit der Sonne nahe am Mond; Warnungen vor möglicher Polkappen- (PCA) und Polarlichtabsorption für beide Stationen; Kästchen für die Weichzeichnung in der Ausrichtungskarte; graue Diagonalstreifen außerhalb der Grenzen in der Himmelsansicht und Beschriftungen ohne Überlappung; neue Registerkarte FORMEL-DEBUG; Mond-Symbol; PDF-Handbücher in allen 14 Sprachen.
- beta 25 - Registerkarte Entfernung und Dgrd erneuert: die drei besten Tage, Tageskalender mit Mondphase, Diagramm mit Dgrd (Null unten) und überlagerter mittlerer Entfernung, Neumond und Vollmond, kurze Rangliste; neue Registerkarte Ausrichtungskarte mit Luftbild oder topografischer Karte, Mond, Bahn, Auf- und Untergang und mit der Maus verschiebbaren Antennengrenzen.
- beta 24 - Beschriftungen der Himmelsansicht doppelt so groß; Sprachen Russisch, Ukrainisch und Afrikaans; compila.bat erstellt die PDF-Handbücher nicht mehr.
- beta 23 - Neuer Hauptbildschirm: UTC, Ortszeit und Ortszeit des DX, Statusband mit Countdown, Azimutkompass und Elevationsbogen mit den Antennengrenzen, Mondphase mit Auf- und Untergang, Balken für Dgrd und S/N, Leiste der nächsten 24 Stunden; Nachtschema in allen Registerkarten; drei Farbskalen in der Himmelsansicht mit umrandeten Beschriftungen.
- beta 22 - Alle Daten im Unterordner data neben der ausführbaren Datei (aus AppData und dem Programmordner verschoben), beim Start geprüft und neu geladen; PDF-Handbücher mit Bildschirmfotos auf Italienisch, Englisch, Französisch, Deutsch, Spanisch und Portugiesisch; Kästchen und BANDAUSWAHL oben rechts im Fenster, S/N wieder unten rechts.
- beta 21 - Hauptbildschirm: Kästchen VERTIEFTE BERECHNUNGEN, LOKALER AZIMUT und LOKALE ELEVATION, Datum neben dem Titel, S/N-Feld unter BANDAUSWAHL; Wahl der Schriftart für das ganze Programm. Neue Bänder 70 MHz und 222 MHz.
- beta 20 - Geländehöhe automatisch aus dem Web (Open Topo Data, Open-Meteo), wenn der Locator 10 Zeichen hat.
- beta 19 - Titel mit dem Rufzeichen des Benutzers; kein voreingestellter Locator oder Rufzeichen; Einstellungen im Programmordner; neue Reihenfolge der Registerkarten; ANLEITUNG mit allen Parametern, MNR und CFOM; Registerkarte experimentell-EXCEL; Log-Download von LoTW; ABOUT & CREDITS; Sprachen Hindi, Koreanisch und Indonesisch.
- beta 18 - EME-Budget: Bandbreite bis 3000 Hz, Rauschzahlen neben den Verstärkungen, Transverter bei Verstärkung 0 nicht berücksichtigt, Antennentemperatur Tant (VE7BQH-Tabellen); allgemeine Einstellungen in der Registerkarte Verfolgung; unscharfer zunehmender Mond im Hintergrund des Hauptbildschirms.
- beta 17 - Kästchen "VERTIEFTE BERECHNUNGEN" in der Verfolgung (Spalten ab Dpol, Zwischenzeilen des EME-Budgets, Registerkarte Sonnenrauschen); geschätztes S/N im Hauptbildschirm; Schaltfläche "BANDAUSWAHL" mit den Bändern von 50 MHz bis 122 GHz.
- beta 14 - Neuer Name YAEC - Yet Another EME Calc; Benutzeroberfläche in 8 Sprachen (Englisch, Italienisch, Deutsch, Französisch, Spanisch, Portugiesisch, Chinesisch, Japanisch) mit Englisch als Startsprache; Rufzeichen im Fenstertitel.
- beta 13 - Behebung des Kompilierfehlers CS0051 (Zugriffsebene der Friis-Funktion).
- beta 12 - Die Rauschzahl des Funkgeräts wird aus seinem MDS mit der vom Benutzer gewählten Bandbreite abgeleitet (dieselbe wie für die S/N-Berechnung).
- beta 11 - Hauptbildschirm Verfolgung neu gestaltet (mein Locator und DX-Locator, Frequenz, Datum und Uhrzeiten, Azimut und Elevation von mir und vom DX, weitere nützliche Daten); Locator und Frequenz automatisch in alle Reiter übernommen; Empfänger-Rauschzahl mit der Friis-Formel; Entfernung und Dgrd bis 61 Tage; Rufzeichen in den allgemeinen Einstellungen; ALC-Empfehlungen in der Anleitung.
- beta 10 - Reiter Verfolgung; kHz von 000 bis 999; Wochentag; Bandbreite und S/N mit Sonne im Budget; BETA Ground Gain; Kabelverlust Transverter-Funkgerät; dunkles Farbschema und Schriftgrößen; Dgrd über einen Monat mit Neumond; LoTW in Grün; Reiter ANLEITUNG; Startfenster und Bestätigung beim Beenden.
- beta 9 - Himmelsansicht in Azimut/Elevation mit flachem Horizont und Rauschfarben von Blau bis Rot; Reiter Entfernung und Dgrd; Reiter ABOUT.
- beta 6 - Reiter WWL-Karte und ADIF mit Maidenhead-Gitter.
- beta 5 - Statusspalten durch Farbe ersetzt; Titel "von Costantino IC8TEM"; kHz-Auswahl für die CFOM-Frequenz.
- beta 4 - DX-Ortszeit aus der Position; Dauer in Tagen; Spalten-Tooltips; Doppler und CFOM-Frequenzen; Reiter Himmelsansicht.
- beta 3 - Geschätztes S/N im Budget; Reiter Sonnenrauschen mit SFU-Webdaten und Wahl der RSTN-Station.
- beta 2 - Reiter EME-Budget: EIRP, Streckendämpfung, empfangenes Signal und Abstand über MDS.
- beta 1 - Zweite Station (DX), gemeinsame Fenster, Dpol, MNR, Tsky und Dgrd wie in WSJT-X.
