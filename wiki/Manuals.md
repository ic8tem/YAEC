# Manuals: USER MANUAL and THEORY AND TIPS ON EME

*Group: Help and tools.* YAEC contains two complete manuals, **inside the program and in every language**. There are no separate PDF files: the manuals are always in step with the version you are running.

## Common features

- **Clickable index** on the left (the divider between index and text can be moved); new sections are tagged *new*.
- **Search**: type a word in the search box and press **Enter**; **Enter again** for the next result.
- **Formulas** in Equation Editor style (the formulas are the same in all languages), tables, coloured boxes and charts.
- **Sources** cited in full at the end of each section (numbered [n]).
- **Save as Word (.docx)** – saves the whole manual as a Word document for printing: table of contents, chapters on a new page, page numbers, Word (Office Math) formulas, tables, boxes and figures. When Word opens it and asks to update the fields, answer **Yes** (or right-click the table of contents → *Update Field*).

## USER MANUAL

The program itself: installation, files and the data folder, every screen (the tabs in the order of the six groups, what each one shows and what it is for), the user guide with every editable parameter, and how the calculations work. It includes, for example, the section on the **Maidenhead locator** (§ 2.2): how it is built, how many characters to use and why obstacles need 8 or 10.

## THEORY AND TIPS ON EME

How EME works and how to work it at its best. It opens with the **author's preface** – the key ideas, for example:

- *The calculation is a reference, not a promise.*
- *Choose the day before switching on.*
- *Polarization can make a signal vanish* – and *dual polarization is the best solution*.
- *Every decibel in front of the preamplifier counts.*
- *Know your own station* (NJ9R): on 144 MHz the first test bench is the GRAVES echo.
- *Listen, compare, take notes.*

Main sections:

| § | Topic |
|---|---|
| 1.3 | Polarization, Dpol and MNR; Faraday rotation (table up to 902 and 1296 MHz); summary of SM5BSZ's *Selecting Polarisation for EME* |
| 1.4 | Sky noise and Dgrd; the Moon in front of the Galaxy (Sagittarius, Taurus); the Moon's declination |
| – | Why the Sun matters (new Moon, side lobes, eclipses) |
| 1.6 | The EME budget formulas, with the path loss band by band (50 – 1296 MHz); mode thresholds; ground gain in practice (IK1UWL, IK3XTV); published antenna gain and dBd (NJ9R) |
| 1.7 | The preamplifier and the noise figure of the radio (measured NF of many radios); **1.7.1** the transverter (models, combinations measured by DF9IC); the TX/RX sequencer (IK1UWL); the polarization relay |
| 1.8 | Coaxial cables and losses (the formula α = k1·√f + k2·f, bands 50 – 1296 MHz); connectors (NJ9R) |
| 1.10 | Doppler (table up to 902 and 1296 MHz), compensation, CFOM and the radio CAT |
| 1.11 | Pointing: precision, encoders and actuators; **checking the pointing with the GRAVES radar**; compass, mast camera and error log (NJ9R); dishes above 432 MHz |
| 1.12 | Digital modes for EME: Q65 and JT65 (submodes, Doppler spread, JT65A vs Q65-60A, how Q65 builds the signal, WSJT-X settings, NJ9R's JT65B and MAP65 settings, the W7GJ DXpedition procedure) |
| 1.13 | From the first reception to the QSO: NJ9R's advice (local noise map, clean receiver, synchronized clock, CALL3.TXT, patience) |
| 1.14 | Text chats on the Internet (N0UK, EMEchat by EA8DBM, HB9Q logger, ON4KST) and how to read the announcements |

It also includes EME literature by SM5BSZ, other EME calculation tools, the VE7BQH antenna tables (in the preface) and the chapter **"Sources, data and credits"** with all the references.

### What changed in the manual with 1.6

- **Path loss band by band** (§ 1.6): a table from 50 to 1296 MHz at perigee, mean distance and apogee (also in [EME budget Yagi](EME-Budget#how-it-is-calculated)).
- **Mode thresholds** (§ 1.6): the Q65-60B and Q65-60C thresholds are an **estimate** – the *Quick-Start Guide to Q65* gives only Q65-60A, and YAEC uses the same value because, without spread, sensitivity depends on the symbol duration. All thresholds are for an **AWGN** channel (no fading, no spread).
- **Ground gain** (§ 1.6): the antenna height decides how wide the lobes are (peaks at sin α = (n+½)·λ/2H); the Moon rises about 15°/h × cos(latitude), i.e. 10 – 11°/h at 40 – 45° N; in a QSO the ground gain counts once per station, in your own echoes twice.
- **Connectors** (§ 1.8): 0.11 dB each is NJ9R's rule for 144 MHz, applied by YAEC to all bands.
- **Dgrd in other programs**: the Dgrd shown by other software (mmmonvhf.de, MoonTracker) may differ and is not comparable with YAEC's; with the usual calculation YAEC uses the WSJT-X formula.
- **Doppler table** (§ 1.10) extended to 902 MHz (≈ ±2100 Hz) and 1296 MHz (≈ ±3000 Hz).
- **Faraday table** (§ 1.3) extended to 902 and 1296 MHz.
- **Q65 submode table** (§ 1.12): EME on 1296 MHz → **Q65-60C**.
- **Dishes** (§ 1.11): beamwidth ≈ 70·λ/D, where 70 is a choice within IZ0JNY's 65 – 75 range.

## Useful external links cited in the manuals

| Topic | Link |
|---|---|
| VE7BQH antenna tables (DXMaps, EA6VQ) | <https://dxmaps.com/ve7bqh_e.html> |
| Maidenhead Locator System | <https://en.wikipedia.org/wiki/Maidenhead_Locator_System> |
| SM5BSZ, *Selecting Polarisation for EME* | <https://sm5bsz.com/polarity/emepol.htm> |
| SM5BSZ, *EME Path Modulation* | <https://sm5bsz.com/sm5frh/sm5frh.htm> |
| KA1GT, *Doppler 101* | <https://bobatkins.com/radio/EME_doppler_101.html> |
| KA1GT, *CFOM* | <https://bobatkins.com/radio/CFOM.html> |
| OE2IGL & DF3GJ, *EME Link Budget & Analysis Tool (1-300 GHz)* | <https://wettersat.bplaced.net/EME/EME.html> |
| WSJT-X | <https://wsjt.sourceforge.io> |
| W7GJ (6 m EME, Q65 DXpedition procedure) | <http://www.bigskyspaces.com/w7gj/> |
| N0UK EME chat | <https://www.chris.org/cgi-bin/jt65emeA> |
| EMEchat (EA8DBM) | <https://www.emechat.com> |
| HB9Q logger | <https://logger.hb9q.ch> |
| ON4KST chat | <https://www.on4kst.com/chat> |
| LiveCQ | <https://livecq.eu> |
| W3SZ EME station | <https://w3sz.com/EMEFrame1Source1.htm> |
| DF9IC, 144 MHz radio tests | <https://www.df9ic.de/tech/trxtest/trxtest.html> |
| Franco I2FAK interviews (Italian) | [part 1](https://www.youtube.com/watch?v=aNsnSweIvPY), [part 2](https://www.youtube.com/watch?v=GPVNLiUiD_s) |

> **Bands above 432 MHz.** Since 1.6 YAEC covers 902 MHz and the 23 cm band and has the [EME budget dishes](EME-Budget-Dishes) tab (up to 1.5 it stopped at 432 MHz). For the bands above 432 MHz the program is still being completed, but it already computes the **DGRD correctly at every frequency** (tab [DGRD by frequency](DGRD-by-Frequency)). Further advice for those who are new to the frequencies above 900 MHz will follow. For the higher bands and a complete dish analysis (1 – 300 GHz), the manual recommends the tool by OE2IGL and DF3GJ.
