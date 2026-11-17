# Sky noise (Skynoise)

*Group: Planning. New in 1.9.2.*

The antenna temperature computed with the **Skynoise** method by John Sager G8ONH, developed with John Regnault G4SWX (MIT licence, see [Credits and thanks](Credits-and-Thanks)). Instead of the single sky point behind the Moon, the **whole antenna pattern** is pointed at the Moon: every direction (1° steps) reads the sky map, and the directions below the horizon count as ground at 290 K.

T = Σ T·G·sinθ / Σ G·sinθ · average gain = Σ G / Σ sinθ (a check, like the NEC efficiency)

## Choices on the left

| Group | Options |
|---|---|
| **Antenna pattern** | NEC file (.out, 1° step in theta and phi, beam towards theta 90°, phi 0°) · from YA-NEC (.yanec: the NEC .out file with the same name next to it is read) · Gaussian beam with the −3 dB width of the EME budget |
| **Sky map** | Remazeilles 2014 (the Skynoise map) · original Haslam 1982 · GSM 2008 (the multi-survey model of the Sky view) · LFmap (curved spectrum, best for 50 MHz) |
| **Band** | 50, 144, 432 MHz and 23 cm (cosmic background + atmosphere) |
| **Below the horizon** | 290 K as Skynoise, or the terrain profile of *My horizon* (DEM) |

The maps (HEALPix nside 128, about 0.7 MB each) are downloaded once from this repository into `data\cielo`. They are scaled from 408 MHz with T_f = (408/f)^β · T_408 + C, β = 2.56 (50, 144 MHz) or 2.617 (432 MHz, 23 cm), C = 2.73 + 50·(150/f)^2.75 K (Lawson et al. 1987). β and C can be changed with **IN-DEPTH CALCULATIONS** and are shown in **Calculation check**.

## What is shown

- **Sky map** at the band (RA increasing to the left, Dec −40…+90°) with the **Moon path over the month** (one dot per day, click a day for its pass) and the **−3 dB beam** around the Moon.
- **Antenna temperature during the pass** (UTC): your Ta (sky + ground), the sky behind the Moon only (dashed) and the DX Ta, with the common window shaded.
- **Now**: your Ta, the sky behind the Moon (beam only) with RA/Dec, the average gain and the **effect on the EME budget Yagi** compared with the reference cold sky.
- **Comparison of methods**: Skynoise (reference), Gaussian beam from HPBW and DJ9BV (uniform sky above the horizon, ground at 290 K).

Not yet included: ground reflection, the Moon and the Sun.

## Automatic test

`compila.bat` and the GitHub build run `YAEC.exe --collaudo-cielo dati`: with the Skynoise example (Parham 52.2 N 1.4 E, az 269.036°, el 40.0°, 14/05/2025 21:59:33 UTC) the beam must point at RA 142.0°, Dec 30.0°, the temperature must match Skynoise within 0.5 K on the same NEC pattern, and an isotropic antenna must give average gain 1.000.
