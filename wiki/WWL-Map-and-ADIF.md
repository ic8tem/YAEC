# WWL map and ADIF

*Group: Log.*

A world map with the **Maidenhead grid**. Loading your log colours the squares you have worked and confirmed – also per band and for EME QSOs only.

## Colours

| Colour | Meaning |
|---|---|
| Orange | worked square |
| Green | confirmed via **LoTW** |
| Blue | confirmed by **QSL only** |

Hover over a square for the details. The status line gives the number of QSOs with locator, worked squares, and squares confirmed via LoTW and in total.

## Loading the log

- **Open ADIF file…** – choose the `.adi` / `.adif` file exported by your logging program.
- **Download from LoTW…** – downloads the log directly from ARRL Logbook of the World with your LoTW username and password (it may take a few minutes). You can **save username and password in the settings**: the password is stored **encrypted** for the current user (DPAPI on Windows, the Mono key store on Linux and macOS). On another computer or another Windows user it must be entered again. The downloaded log is saved as `lotw.adi` in the data folder and refreshed at start-up if it is missing.
- **Clear ADIF data** – removes the loaded data from the map.

## Filters and view

| Control | What it does |
|---|---|
| **Map** | OpenStreetMap, OpenTopoMap (relief), CARTO light, CARTO dark, or *No map (grid only, no internet)*. |
| **Maidenhead grid** | Shows or hides the locator grid. |
| **All bands** / a band | Squares worked on all bands or on one only. |
| **EME QSOs only (PROP_MODE = EME)** | Counts only the QSOs marked as EME in the log. |
| **Distinguish confirmed (green = LoTW, blue = QSL only)** | Colours confirmed squares differently. |
| **Centre on me** / **Whole world** | Quick views. |
| Mouse | Wheel or double click = zoom, drag = move. |

> For **EME only** to work, your logging program must write `PROP_MODE` = `EME` in the ADIF records.

Map tiles are downloaded from the internet and stored in the `data\tiles` folder. Map data © OpenStreetMap contributors (ODbL), OpenTopoMap (CC-BY-SA), CARTO basemaps.
