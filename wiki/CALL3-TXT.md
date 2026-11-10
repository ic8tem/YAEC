# CALL3.TXT

**CALL3.TXT** is the list of EME station callsigns with their locators. WSJT-X uses it too (JT65 Deep Search, for example, only works for callsigns in the database), so keeping it up to date helps decoding.

## Where YAEC gets it

YAEC downloads **both** lists:

- the one maintained by **W7GJ** (Lance Collister);
- the one distributed with **WSJT-X Improved**.

If both respond, they are **merged by callsign**; for the same callsign **the W7GJ locator wins**. If one source does not respond, the other is used; if neither responds, the saved file is kept.

The file is in the `data` folder and **updates itself at start-up when it is more than 7 days old** (or missing).

## Using it in YAEC

- On the main screen, type a callsign in the **DX callsign** box: if it is in CALL3.TXT the locator fills in by itself (press **Enter** to use it).
- If you typed the locator yourself and CALL3.TXT gives a different one, press Enter on the callsign to use the CALL3.TXT one.
- If the callsign is not in the list, enter the locator by hand.

## The CALL3 window

Click the **CALL3** button in the DX card of [Live position and +- 24h](Live-Position). It shows the number of callsigns and the file date, and offers:

| Button | What it does |
|---|---|
| **Update now** | Downloads from W7GJ and WSJT-X Improved and merges them. The message tells how many callsigns came only from the second source and how many had a different locator. |
| **Copy to WSJT-X** | Copies the file into the WSJT-X folder. The previous file is kept as `CALL3.TXT.bak`. **Restart WSJT-X** to use it. |

If the WSJT-X folder is not found, YAEC asks where to copy the file. In WSJT-X you can find the folder with **File → Open log directory**.

## Active stations

On the main screen the **DX callsign** box gets an **orange border** when the station has written in the **N0UK EME chat** in the last 90 days; the tooltip says *Station active in the last 90 days (N0UK EME chat), last message on …*. It is only a hint: a station without the border is still computed normally.

The list of active stations (callsign and date of the last message only) is prepared once a day on GitHub from the N0UK chat. YAEC downloads it into the data folder as `attivi.gz` at start-up when it is missing or more than 20 hours old; if the download fails, the saved list is used.

> NJ9R: an up-to-date CALL3.TXT helps decoding by many dB, because WSJT-X and MSHV use it to recognize callsigns – but it is up to the operator to discard the wrong decodes.
