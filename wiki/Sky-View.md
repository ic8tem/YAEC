# Sky view

*Group: Live.*

The sky seen from your QTH: **azimuth horizontally** (N-E-S-W-N), **elevation vertically**, and the horizon as a flat line at 0°. The background colours show the **sky noise at your working frequency**, so you can see at a glance when the Moon will be in front of the hot regions of the Milky Way.

## What is drawn

| Element | Drawing |
|---|---|
| Sky noise | Background colours, from the Global Sky Model (blue = minimum, red = maximum with the rainbow scale) |
| Galactic plane | White dots; the galactic centre (Sgr A) is labelled |
| Ecliptic | Light dots |
| Moon | Current position and **path over the next 24 hours** with UTC times |
| Sun | Its position and distance from the Moon |
| Radio sources | Main sources (3C and other catalogues), with indicative fluxes |
| DX horizon | Violet line |
| Your antenna limits | Yellow dashed lines; the zones outside are covered with light grey diagonal lines |
| Pointable area | Dashed purple boxes around the area your antenna can point at |

A caption above the chart gives the instant, the Moon azimuth, elevation and declination, Tsky behind the Moon, and the Sun position and its distance from the Moon.

## Controls

| Control | What it does |
|---|---|
| **Follow the current time (every minute)** | Updates the sky every minute; untick to choose the instant. |
| **Moon path over the next 24 hours** | Draws the Moon path with UTC times. |
| **My antenna limits** | Draws the limits and covers the zones outside them with grey diagonal lines. |
| **Background colours** | Rainbow, black to white, or yellow to red. All labels have a dark outline to stay readable. |
| **Grey tone** | Tone of the grey over the zones outside the limits, from white to black; it applies to all the maps. Used with the **My antenna limits** box. |

The **GO TO SKY VIEW** button in the *Sky and geometry* card of the main screen opens this tab.

## Reading it

- Every month the Moon crosses the Milky Way twice. Near **Sagittarius** (galactic centre) the sky behind the Moon at 144 MHz reaches a few thousand K against about 200 K in the cold regions; there the Moon is also at its lowest declination. It is the worst period of the month for northern stations.
- On the opposite side (**Taurus and Gemini**) the sky is colder, but in Taurus lies the **Crab Nebula** (Taurus A), a strong radio source.
- Sky noise grows as frequency goes down: it weighs much more at 50 MHz than at 144 MHz, much less at 432 MHz (YAEC scales it with spectral index 2.6).

> Sky temperatures and radio-source fluxes are model-based estimates, meant to compare situations, not measurements.

Source: A. de Oliveira-Costa et al., "A model of diffuse Galactic radio emission from 10 MHz to 100 GHz", MNRAS 388, 247 (2008) (Global Sky Model, 408 MHz-locked version from the LWA Software Library, resampled to 2°).
