# Warnings: polar and auroral absorption, polarization, Sun near the Moon

YAEC warns you about conditions that a simple Moon-position calculation does not show.

## Polar cap (PCA) and auroral absorption

### When it appears
When you enter a locator – yours or the DX's – that falls in one of these zones, a **"Possible ionospheric absorption"** message appears and then **stays on the main screen**:

| Zone | Criterion | Risk |
|---|---|---|
| **Polar cap** | beyond the polar circles (\|latitude\| ≥ 66.56°) or geomagnetic latitude above 75° | **PCA** (Polar Cap Absorption) after strong solar proton events; can last a few days |
| **Auroral zone** | geomagnetic latitude between 60° and 75° | auroral absorption during geomagnetic storms |

The geomagnetic latitude is computed with the centred dipole of the **IGRF-14** model (2025 north geomagnetic pole at 80.8° N, 72.8° W).

### What it means
During solar proton events, energetic protons guided by the Earth's magnetic field ionize the D region above the polar caps for hours or days; in the auroral zone, electron precipitation during geomagnetic storms causes a similar, more localized and variable absorption.

Absorption falls quickly with frequency (roughly 1/f²): it matters mostly at **50 MHz**, less at **144 MHz** (where, with the Moon low and an oblique path through the D region, it can still take a few dB from a weak EME signal), and is usually negligible from **432 MHz** upwards.

### What to do
Before a QSO with polar or auroral stations, check the NOAA **D-RAP** forecasts and the proton event alerts: <https://www.swpc.noaa.gov/products/d-region-absorption-predictions-d-rap>

Sources: H. H. Sauer and D. C. Wilkinson, "Global mapping of ionospheric HF/VHF radio wave absorption due to solar energetic protons", *Space Weather* 6 (2008), doi:10.1029/2008SW000399; NOAA SWPC D-RAP; IGRF poles from the World Data Center for Geomagnetism, Kyoto.

## Polarization between the two stations

When both locators are entered, YAEC checks the next 24 hours (Moon up for both stations). If the **spatial polarization offset Dpol reaches 60° or more**, a message gives the maximum, the time and the loss with linearly polarized antennas.

| Dpol | Loss with linear antennas, −20·log\|cos Dpol\| |
|---|---|
| 45° | ≈ 3 dB |
| 60° | ≈ 6 dB |
| 90° | > 20 dB (the signal disappears) |

Between distant stations – for example northern and southern hemisphere – the geographic position alone can rotate the polarization a lot, and the unpredictable **Faraday rotation** adds to it (only the spatial part is calculated). Consider circular polarization or H/V switching; with H and V antennas, receive on the better polarization and, if the other station does not answer, switch the transmit one. Never switch the polarization relay while transmitting.

Sources: Franco I2FAK video interviews; Paul Bock K4MSG, *Beginner's Guide to Small-station EME* (2015); SM5BSZ, [Selecting Polarisation for EME](https://sm5bsz.com/polarity/emepol.htm).

## Sun near the Moon

In [Distance and Dgrd](Distance-and-Dgrd) the days when the Moon is close to the Sun are marked **☀**: **red** within 3 beamwidths of your antenna, **orange** within 6 (beamwidth θ ≈ √(41253/G) from the gain in the EME budget). The *Sun-Moon (°)* column of [Moon position](Moon-Position) gives the separation, and [Solar noise](Solar-Noise) estimates the noise increase.

## Other messages

- **Invalid locator** – use 4 to 14 characters, e.g. JN70CN.
- **The minimum elevation is greater than the maximum** – check the antenna limits.
- **No useful window** / **No common window** in the chosen period – the Moon never enters your limits (or both stations' limits): widen the period or the limits.
- Unexpected errors are shown in a message and written to `data/errori.txt` – send that file to the author.
