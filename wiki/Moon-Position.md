# Moon position

*Group: Planning.* A table of the Moon position for any period, coloured by **pointability**, with the list of **useful windows** and **common windows** with the DX. This tab also holds the station parameters (locator, height, antenna limits) used by the whole program.

## Station parameters

There are two station cards, **My station** and **Second station (DX)**, each with:

| Field | Meaning |
|---|---|
| **WWL locator** | Maidenhead locator; the centre of the square is used. |
| **Height (m)** | Ground height above sea level (very small effect on parallax). With a 10-character locator it is taken from the web. |
| **Azimuth from (°) / to (°)** | Useful azimuth sector, travelled clockwise. 0 → 360 = no limit; 270 → 90 = north sector through 0°. |
| **Elevation min (°) / max (°)** | Minimum and maximum reachable elevation (obstacles, rotator, fixed antenna). Max 0 for an antenna fixed on the horizon, 90 with a full elevation rotator. |

Tick **Compare with the second station** (or **COMPARE** in the DX card) to compute the DX too and show the common windows.

## Period and calculation

| Field | Meaning |
|---|---|
| **Start (UTC)** | Date and time at which the table starts. |
| **Duration (days)** | Length of the period; fractions allowed (0.5 = 12 hours). |
| **Interval (min)** | Step between rows. Window start and end have this resolution. |
| **Frequency (MHz + kHz)** | Working (CFOM) frequency, used for Tsky, Dgrd, Doppler and CFOM. |
| **Correct for atmospheric refraction** | Adds refraction (near the horizon the Moon appears higher). Unticked = geometric topocentric elevation, as in the most common EME programs. |
| **Show only pointable rows** | Hides rows with the Moon outside the limits (common ones, if the DX is active). |

Press **Compute table**. Green rows are the useful ones; the **Useful windows** box at the bottom lists each window with start, end, duration, azimuth range, maximum elevation, Dgrd and, with the DX, the Dpol range and the best moment (highest minimum elevation).

## Columns

Date to MNR are always visible. The **Columns** button opens a window with switches for the additional columns, grouped as *Noise and degradation*, *Doppler and frequencies* and *Moon geometry* (e.g. Tsky, Dgrd of both stations, Doppler, echo, Doppler DX → me, TX/RX CFOM, declination, hour angle, distance, DX distance, Sun–Moon (°), Moon illuminated (%)). Columns marked [DX] appear only with the second station active. The choice is saved and also applies to **Export CSV**. Additional columns are shown with the **IN-DEPTH CALCULATIONS** box. Hover over a column header for its explanation.

At the top, live "pills" show the current time, the Moon from you and from the DX, Dgrd, Dpol and CFOM.

## Export

**Export CSV…** saves the table as a CSV file for Excel.

## Links with other tabs

- The selected row can be used as the instant of the [EME budget](EME-Budget) (**Use the table row**).
- [Moon over the world](Moon-over-the-World) uses the same moment as this tab.
- The limits are the same as the yellow handles of [Reconnaissance of my obstacles](Reconnaissance-of-My-Obstacles).
- Locator and frequency are shared with [Live position and +- 24h](Live-Position).

## Accuracy

Moon positions are computed with the ELP-2000/82 theory in J. Meeus' abridged form (*Astronomical Algorithms*, ch. 47), with nutation, sidereal time and topocentric parallax: about **0.01°**. Refraction, when enabled, uses Sæmundsson's formula. Tsky, Dgrd and similar values are model-based estimates.
