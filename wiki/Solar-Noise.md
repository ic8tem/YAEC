# Solar noise

*Group: Link. Experimental.* Enabled with the **IN-DEPTH CALCULATIONS** box.

The Sun is the strongest noise source in the sky. Around new Moon the Sun and the Moon are close: even if the Sun stays out of the main lobe it enters through the side lobes, and within a few beamwidths the received noise grows a lot. This tab downloads the **measured solar flux** and estimates **how much the Sun raises your receiver noise** at the chosen moment, for you and for the DX. The station parameters are those of the [EME budget](EME-Budget) (next version: for 432, 902 and 1296 MHz, those of the budget tab – Yagi or [dishes](EME-Budget-Dishes) – used last for that band).

## Layout

- **Top:** four indicators, including SOLAR FLUX AT the working frequency, NOISE INCREASE (SUN IN THE BEAM) and DATA UPDATED.
- **Left:** the **DATA SOURCE** and the table of measuring stations (distance from you and from the DX, last measurement UTC).
- **Right:** the **solar flux spectrum** (log-log, 100 – 20 000 MHz, 5 – 1000 SFU) with dots = measurements and dashes = extrapolation down to the working frequency.

## Data sources

| Source | Notes |
|---|---|
| **NOAA SWPC · RSTN network, 245 – 15400 MHz** (recommended) | 4 stations (San Vito dei Normanni, Learmonth, Sagamore Hill, Kaena Point), 8 frequencies. |
| NOAA SWPC · F10.7 (2800 MHz) | Rough estimate: the low-frequency flux is scaled from a typical quiet Sun. |
| Penticton (Canada, DRAO) · F10.7 | Rough estimate; observed, three measurements a day. |
| Learmonth (Australia, BoM) | Quiet Sun, 8 frequencies, from the daily ASWFC bulletin. |
| Custom address… | JSON file in SWPC (RSTN) format. |

Buttons and options: **Update from web**, **Update at start-up** (downloads the fluxes at every start).

## CALCULATION CHOICES

| Option | Meaning |
|---|---|
| **SFU station for me / for the DX** | *Automatic (nearest with valid data)* or a station of your choice. |
| **My side lobes / DX side lobes (dB)** | Average side-lobe level relative to the main lobe; it matters when the Sun is far from the Moon. |
| **Manual flux for this band (SFU)** | Replaces the estimated flux with your value. |

## How it is estimated

- Flux at the working frequency: 432 MHz interpolated between 410 and 610 MHz; 144 and 50 MHz **extrapolated** from 245 and 410 MHz with a power law – the most uncertain part, compare with a manual value. Next version: 902 and 1296 MHz are interpolated on a logarithmic scale between the nearest measured frequencies (610 and 1415 MHz).
- The Sun is treated as an unpolarized point source (the antenna collects half of it): $T = S A_e / 2k$, with the effective area from the total gain, attenuated by the antenna pattern (Gaussian lobe with width estimated from the gain, θ ≈ √(41253/G), then side lobes at the set level; back lobes 10 dB lower).
- Sun below the receiver horizon: no contribution.
- RSTN values are local-noon measurements and **do not follow current bursts**.

The result appears in the EME budget as the S/N **with the Sun**.

## Tips

- In practice the week of the new Moon is almost always to be avoided; [Distance and Dgrd](Distance-and-Dgrd) marks those days with ☀.
- Antennas with **strongly attenuated side lobes** suffer much less.
- Near new Moon the *Icarus offset* is used: point slightly further from the Sun than the Moon, accepting a small gain loss for much less noise (Bob Atkins KA1GT).
- During a solar eclipse I2FAK still completed a QSO by pointing 2.5 – 3° to one side of the Moon with his narrow-beam array.

Sources: NOAA Space Weather Prediction Center (`solar-radio-flux.json`, `f107_cm_flux.json`); Natural Resources Canada, DRAO Penticton; Bureau of Meteorology (Australia).
