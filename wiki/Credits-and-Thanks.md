# Credits and thanks

The **Credits and thanks** group of the program has three tabs: **ABOUT & CREDITS**, **AUTHOR CONTACTS AND ACKNOWLEDGEMENTS** and **LICENCE**. The full credits, with authors, works and links, are in the chapter **"Sources, data and credits"** of THEORY AND TIPS ON EME. Keeping these citations is a condition of the [Licence](Licence): data, tables, articles and measurements belong to those who produced them.

## Acknowledgements

- **IZ0JNY Ivan** – for the patronage of the **ARI "Valle del Liri" Section (03-04)**; YAEC is published under the patronage of the Section and uses its logo.
- **Beta testers:** IZ7NLJ Fabio, I2NOY Maurizio, IK4GNG Gilberto.
- **HA5OLA** – for the development news on the frequencies above 432 MHz (next version).
- **Relu NJ9R** – for the encouragement not to give up, and for *"2M EME the easy way"*, whose advice is in the theory manual.
- **Giorgio IK1UWL**, Italian EME pioneer – a thought and a memory.
- **All the authors of articles and of hardware or software products** commonly found in the stations of EME operators all over the world. In the program each callsign has a tooltip with the works and where they are cited in the manual.

The program source code was written with the assistance of **Claude (Anthropic)**, following the directions of Costantino IC8TEM.

## Algorithms, formulas and data

| Topic | Source |
|---|---|
| Moon ephemerides | Jean Meeus, *Astronomical Algorithms*, 2nd ed. (1998): ch. 47 (ELP-2000/82 by M. Chapront-Touzé and J. Chapront, truncated), ch. 22 nutation, ch. 12 sidereal time, ch. 40 topocentric correction, ch. 13 azimuth/elevation, ch. 7 Julian day |
| Sun position | Meeus, ch. 25 (about 0.01°) |
| Atmospheric refraction | Sæmundsson formula (*Sky & Telescope*, 1986), as in Meeus ch. 16 |
| ΔT (TT − UT) | Polynomials by F. Espenak and J. Meeus (NASA) |
| Tsky along the ecliptic, Dgrd, Dpol, MNR | **WSJT-X** by Joe Taylor K1JT and the WSJT Development Group, `lib/astro.f90` (GPL v3), rewritten in C# |
| Doppler and CFOM | Topocentric radial velocity; CFOM as in WSJT-X Doppler tracking; Bob Atkins KA1GT |
| EME path loss | Radar equation, lunar reflectivity 0.065, lunar radius 1737.4 km |
| Receiver noise figure | H. T. Friis, *Proc. IRE* 32 (1944); HP/Agilent (Keysight) Application Note 57-1 |
| Ground gain (BETA) | Two-ray model over flat reflecting ground; IK1UWL and IK3XTV papers |
| All-sky temperature | Global Sky Model, A. de Oliveira-Costa et al., MNRAS 388, 247 (2008); Haslam et al. 408 MHz survey; LWA Software Library |
| Antenna performance and Tant | Lionel Edwards **VE7BQH** antenna tables (TANT program by DG7YBN, 30° elevation), published on [DXMaps](https://dxmaps.com/ve7bqh_e.html) by EA6VQ |
| Solar flux | NOAA SWPC (RSTN network, F10.7); NRC DRAO Penticton; Learmonth (BoM, Australia) |
| Sun near the Moon | Bob Atkins KA1GT, *New Moon EME operation* (Icarus offset) |
| Polar and auroral absorption | Sauer & Wilkinson, *Space Weather* 6 (2008); NOAA SWPC D-RAP |
| Geomagnetic latitude | IGRF-14 dipole, World Data Center for Geomagnetism, Kyoto |
| Time zones | tz-lookup (DarkSky / PhotoStructure, CC0); Unicode CLDR `windowsZones.xml` |
| Maps | © OpenStreetMap contributors (ODbL), OpenTopoMap (CC-BY-SA), CARTO basemaps, Esri World Imagery |
| Ground height | Open Topo Data (EU-DEM, SRTM), Open-Meteo (Copernicus DEM GLO-90) |
| Locator and logs | Maidenhead locator system (IARU); ADIF specification; ARRL Logbook of the World |
| Mode thresholds | WSJT-X User Guide § 7.1; K1JT, G4WJS, K9AN, IV3NWV, *Quick-Start Guide to Q65* (2021); K1JT, EME 2006 JT65 paper; K1JT, *Sensitivity Comparison of JT65A and Q65-60A*; G4JNT, *The Q65 Coding Process* (2023) |
| Radio and transverter NF | VA7OJ/AB4OJ test reports (IC-9700, FT-991); DF9IC with DARC OV Durlach A35; ARRL QST (IC-746PRO); RadCom (FT-897); data sheets of Down East Microwave, Kuhne electronic, Q5 Signal, HA1YA; W3SZ station |
| Polarization | Leif Åsbrink SM5BSZ, *Selecting Polarisation for EME*; Franco I2FAK interviews; Paul Bock K4MSG |
| Operating practice | Relu Jianu NJ9R; Lance Collister W7GJ; Giorgio Marchi IK1UWL, *EME – Guida operativa* |
| Pointing (higher bands) | OE2IGL and DF3GJ, *EME Link Budget & Analysis Tool (1-300 GHz)* |
| Dish gain (next version) | PE1RKI formula, G = 10·log[η·(π·D/λ)²], efficiency 60 % on average, 60–80 % typical; beamwidth ≈ 70·λ/D |
| GRAVES radar | Rob Hardenberg PE1ITR, *The 143.050 MHz Graves Radar, a VHF Beacon* (DUBUS 4/2007) and *Graves Radar Update April 2021*; Bolidozor wiki, *Graves*; Wikipedia, *GRAVES (system)*; Relu Jianu NJ9R; Grupo Bandas Altas DX, *Desafío EME GRAVES* |
| Coaxial cables | Manufacturers' data sheets and tables listed in [COAXIAL CABLES](Coaxial-Cables); next version: values brought to the bands with α = k1·√f + k2·f |
| CALL3.TXT | W7GJ and WSJT-X Improved |
| Active stations | N0UK EME chat (stations that wrote there in the last 90 days) |
| Moon image | `moon_1024.jpg` from the three.js library |

The listed algorithms were rewritten in C# for YAEC: the program contains no compiled external libraries. Values marked "indicative", "experimental" or "BETA" are meant for comparison and planning, not as measurements.
