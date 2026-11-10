# Getting started

YAEC starts in English with no default locator or callsign. These first steps take a few minutes and are enough for every tab to work.

## 1. General settings (top bar of the main screen)

At the top of **Live position and +- 24h** there is a white settings bar:

| Setting | What it does |
|---|---|
| **Callsign** | Your amateur radio callsign: it appears in the window title, on the main screen and on the map. |
| **Language** | One of the 28 interface languages; applied at once, without restarting. |
| **Colours** | Light, Night (blue tones), Black or one of eight pastel schemes. |
| **Font size** | Size of all the program fonts, in %; applied at once. |
| **Font** | *System default* (the font suited to the chosen language) or one of the *Fonts recommended for YAEC*: up to 10 fonts installed on your computer, chosen from a tested list for Windows, Linux and macOS. |

On the right of the bar: the **BAND SELECTION** button and the **SHOW COMPLEX DATA ON THE MAIN SCREEN** box. More in [Settings and data folder](Settings-and-Data-Folder).

## 2. Your locator

Enter your Maidenhead **WWL locator** in *QTH - My WWL locator*. YAEC accepts 4 to 14 characters and uses the centre of the square:

| Characters | Accuracy | Use in YAEC |
|---|---|---|
| 4 | ±106 km | rough estimate only (Moon direction can be off by up to about 1°) |
| 6 | ±4.4 km | DX locator, QSOs, EME budget |
| **8** | ±450 m | your station, for obstacles |
| **10** | ±20 m | your station, best result; the ground height is taken from the web automatically |
| 12 – 14 | metres or better | accepted, but they add nothing |

> **Tip.** Derive the 10-character locator from the GPS coordinates of the point where the antenna stands (not the house entrance). For the DX the 6-character locator he gives you is enough. You can also pick your 10-character locator by clicking the map in [Reconnaissance of my obstacles](Reconnaissance-of-My-Obstacles).

With a 10-character locator the ground height above sea level is looked up on the web (Open Topo Data, or Open-Meteo as an alternative); with shorter locators enter it by hand in the **Moon position** tab. It is the ground height at the locator point, not the height of the antenna above ground, and it changes the Moon parallax only very little.

## 3. The DX station

In the *DX station — callsign and WWL locator* card type the **DX callsign**: if it is in [CALL3.TXT](CALL3-TXT), YAEC suggests the locator and enters it when you press **Enter**. Otherwise type the locator. An orange border around the callsign means the station has been active in the N0UK EME chat in the last 90 days. When the DX locator is valid, the second station is enabled in all tabs and YAEC computes the **common windows** (Moon pointable from both stations).

Want to test your receiver first? Press **GRAVES** in the same card, then open the **GRAVES radar** tab (group *Link*): see [GRAVES radar](GRAVES-Radar).

## 4. Your antenna limits

In the **Moon position** tab (group *Planning*) set what your antenna can really reach:

| Field | Meaning | Examples |
|---|---|---|
| **Azimuth from / to (°)** | Useful sector, travelled **clockwise** | 0 → 360 = no limit; 270 → 90 = north sector through 0°; 90 → 270 = south only |
| **Elevation min (°)** | Lowest reachable elevation (horizon, obstacles, rotator) | obstacles up to 8° → 8 |
| **Elevation max (°)** | Highest reachable elevation | antenna fixed on the horizon → 0 (or 10 – 12 for the lobe); full elevation rotator → 90; rotator stopping at 60° → 60 |

You can also drag the limits with the mouse (yellow handles) in [Reconnaissance of my obstacles](Reconnaissance-of-My-Obstacles): the values are the same.

## 5. Frequency and bands

- The **frequency** is chosen in the **Echo and frequencies (CFOM)** card of the main screen: the MHz (from the list or typed) plus the kHz from 000 to 999, e.g. 144 and 180 = 144.180 MHz. It is the CFOM frequency used for Doppler, Tsky and Dgrd, and it is copied to every tab. The MHz list always contains all the bands (70, 222 and 902 MHz included); for the 23 cm band choose **1296** or **1298** MHz (both belong to the 23 cm band).
- **BAND SELECTION** chooses the bands used in the calculations and lists: 50, 70, 144, 222, 432, 902 MHz and **23 cm** (in the band lists the 1296 MHz band is shown as *23 cm*). If the MHz match one of the selected bands, the EME budget switches to that band automatically (and vice versa). Band lists saved by an older version get the new bands added automatically.

## 6. IN-DEPTH CALCULATIONS

The **IN-DEPTH CALCULATIONS** box (in the estimated S/N card of the main screen and at the top right of the EME budget; they are the same box) shows the advanced data: the columns from Dpol onwards in Moon position and all the intermediate rows of the EME budget. It also enables the **Solar noise**, **Export calculations to Excel** and **Calculation check** tabs, which are grey without it. All calculations are always made; the box only controls what you see.

## 7. Describe your station

Open the [EME budget Yagi](EME-Budget) (called *EME budget* up to 1.5) and fill in the station diagram for each band: antenna gain and number, antenna temperature from the VE7BQH tables, cables, relay, preamplifier, transmitter power, radio MDS and mode. Each band keeps its own parameters. With a dish on 432 MHz, 902 MHz or 23 cm, use the [EME budget dishes](EME-Budget-Dishes) tab.

## 8. Find the good moments

- **Now:** look at the status band of [Live position and +- 24h](Live-Position) (green = pointable, blue = common window with the DX).
- **Next days:** [Distance and Dgrd](Distance-and-Dgrd) shows the three best days; [DGRD by frequency](DGRD-by-Frequency) shows the Dgrd at your frequency with your station's noise.
- **Exact windows:** [Moon position](Moon-Position) → **Compute table**.

## Advice for constrained stations

- **Antenna fixed on the horizon:** set elevation from 0 to the upper limit of the lobe (e.g. 0 – 12°), tick **BETA- antenna without elevation** in the EME budget with the real height above ground, and look for the best days in Distance and Dgrd: windows will be short, at moonrise and moonset.
- **QTH obstructions:** if an obstacle covers only a sector, narrow the azimuth sector or raise the minimum elevation; check the result in the [Sky view](Sky-View) (yellow lines).
- **For a QSO with a DX** the *common* windows count, and the Dgrd of the more disadvantaged station.
- **Near new Moon** check [Solar noise](Solar-Noise): with the Sun close to the Moon the noise can rise by many dB.

> **The look of the controls (since 1.6).** Drop-down lists and dates have a rounded frame with a "v" arrow and a calendar icon drawn by YAEC, text boxes have rounded frames, buttons are written in capitals (e.g. **COMPUTE TABLE**) and the sliders have a thin track with a round knob. The names in this wiki are the same, only the capitals differ.
