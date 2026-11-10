# Traduzioni di YAEC nelle 8 lingue nuove (pt-BR, zh-TW, pl, cs, hu, ro, el, th)

Preparate dalla sessione di YA-MS / E-LAYER ANALYZER per armonizzare a 36 le lingue dei tre programmi.
Per ogni lingua:
- `ui.json`: le 1517 scritte dell'interfaccia, nello stesso ordine di `Testi.IT` (versione di YAEC.cs al commit 9a017c0);
- `manuale.json`: testi del manuale interno (`TestiManuale`: testi + elenchi C1, C4, C5);
- `manuale_v27.json`: il manuale "Teoria e consigli sull'EME" (`ManualeV27`, 15 chiavi come "en");
- `LICENSE.txt`, `README.txt`: licenza e LEGGIMI tradotti.

`integra.py` inserisce tutto in YAEC.cs (codici, nomi, culture, array Testi, switch, caratteri per th e zh-TW,
TestiManuale, ManualeV27, file lingue/ e YAEC.iss). NON è stato eseguito: su main un'altra sessione sta già
aggiungendo le stesse lingue, quindi va usato solo dopo averlo concordato, per non fare il lavoro due volte.
