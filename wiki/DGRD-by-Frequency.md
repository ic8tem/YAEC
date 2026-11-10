# DGRD by frequency

*Group: Planning. (since 1.6)*

**Dgrd at your working frequency**, compared with the usual calculation (80 K receiver, sky only at the Moon's position, as in WSJT-X). Here you can use your station's **real noise** (Tant and Te from the band's [EME budget](EME-Budget)) and the **sky averaged over the antenna beam**. On the right, how the Dgrd of the selected day builds up and the same moment on the other bands. **The choices apply throughout the program**, including the best days in [Distance and Dgrd](Distance-and-Dgrd).

## Controls

| Control | What it does |
|---|---|
| **Days** · **from** | Number of days from today to show in the chart (7 to 61); the start date is today (UTC). |
| **CALCULATE** | Computes the chart again (every 30 minutes of the period). |
| **Dgrd calculated with** · **Frequency** | The MHz and kHz of the working frequency of the main screen (read only here: *= working frequency of the main screen*). |
| **Receiver noise:** *fixed 80 K, like WSJT-X* | Same 80 K receiver for everyone, as in the WSJT-X Dgrd: values can be compared with those of WSJT-X. |
| **Receiver noise:** *my station from the EME budget* | Tant and Te of your station, taken from the band's EME budget: sky noise counts as much as it really does on your setup. |
| **Sky:** *Moon center only* | Sky noise only at the Moon's position (table along the ecliptic, as in WSJT-X). |
| **Sky:** *averaged over the antenna beam (…°)* | Sky noise averaged over the whole antenna beam, with the width derived from the gain set in the EME budget (shown in brackets). |
| **Click a day** in the chart | Shows how its Dgrd builds up and the values on the other bands. |

The new calculation (*my station from the EME budget* and *averaged over the antenna beam*) is the default. To get the same Dgrd as WSJT-X, choose *fixed 80 K, like WSJT-X* and *Moon center only*.

## What it shows

**Chart** – *DGRD OF* your locator *AT* the frequency, *FROM … TO …*, *0 dB AT BOTTOM*:

| Line | Meaning |
|---|---|
| grey dashed | *current calculation* (band, 80 K receiver, sky at Moon center) |
| purple | *new calculation* (frequency, receiver noise and sky as chosen) |
| light blue band | *selected day* (with *perigee* if it falls on that day) |

The worst point of the current calculation is labelled with both values (*current* and *new*), and *Moon on the Milky Way* when the sky there is hot. As the note under the chart says: distance affects all bands equally; what changes is the weight of sky noise. Where the Moon crosses the Milky Way the new calculation gives a less severe Dgrd, because the wide antenna beam "sees" an average of the hot region, not just its hottest point.

**HOW THE DGRD BUILDS UP** – for the best moment of the selected day: sky behind the Moon (centre or beam), Tsys, Moon distance and the dB of each part.

**SAME MOMENT ON THE OTHER BANDS (dB)** – current and new Dgrd on every band, with Tant and Te taken from each band's EME budget.

**WHY IT CHANGES WITH FREQUENCY**

- Sky noise drops with frequency (index 2.6): at 50 MHz it is thousands of kelvin, at 432 MHz a few tens.
- How much it counts depends on the station's own noise: with real Tant and Te, not with the same 80 K for everyone.
- The antenna beam widens or narrows the patch of sky that enters the calculation.
- The DX has their own Dgrd, calculated with their station.

## How it is calculated

In both cases $Dgrd = -40\log_{10}(d/356\,903\ \text{km}) - 10\log_{10}(T_{sys}/T_{sys,0})$, with $d$ the topocentric Moon distance.

| Choice | $T_{sys}$ | $T_{sys,0}$ (cold sky) |
|---|---|---|
| fixed 80 K, like WSJT-X | $T_{sky} + 80\ \text{K}$ | $13\,(408/f)^{2.6} + 80\ \text{K}$ |
| my station from the EME budget | $T_{ant} + \max(0,\ T_{sky} - T_{ref}) + T_e$ | $T_{ant} + T_e$ |

- $T_e = 290\,(10^{NF/10} - 1)$, with NF the receiver noise figure of the band's EME budget (Friis, in 2500 Hz); $T_{ref}$ is the reference sky of the budget (200 K at 144 MHz, scaled with index 2.6).
- *Moon center only*: $T_{sky}$ from the WSJT-X table along the ecliptic. *Averaged over the antenna beam*: the Global Sky Model at 144 MHz averaged over a Gaussian beam with half-power width $\approx 0.93\sqrt{41253/G}$ for Yagis (G = total gain of the EME budget) or $70\lambda/D$ for dishes, then scaled to the working frequency with index 2.6.

The tooltip of the Dgrd in the other tabs reminds you: *The noise model (receiver and sky) is chosen in the DGRD by frequency tab.*

See also: [Distance and Dgrd](Distance-and-Dgrd) (what Dgrd means), [Sky view](Sky-View) (the sky noise map), [EME budget](EME-Budget) (Tant and receiver).
