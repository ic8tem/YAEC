# EME budget dishes

*Group: Link. (since 1.6)*

The same calculation as the [EME budget Yagi](EME-Budget), for stations with a **dish antenna**, at **432 MHz, 902 MHz and 23 cm** (1296 MHz), with values **stored separately** from those of the Yagi tab. The layout is the same: top bar, the two station cards, the six indicators, the table of steps and, on the right, the **TRANSMIT AND RECEIVE SYSTEM** diagram, which here shows the dish with its feed at the focus.

## Station cards

In each station's card, instead of gain and number of antennas, you enter the dish:

| Field | Meaning |
|---|---|
| **Dish diameter** | Diameter in metres. |
| **Efficiency (feed + dish)** | Aperture efficiency of the dish with its feed: 60 % is the average value, 60–80 % the typical range (PE1RKI). |
| **f/D ratio** | Ratio of focal length to diameter: used to choose the feed; the card shows where the focus is (*→ focus … m from vertex*). |
| **Mount** | *Az-El* or *Polar (equatorial)*. For now it is only a note and does not enter the calculation. |

The card shows the resulting gain:

$$G = 10\log_{10}\left[\eta\left(\frac{\pi D}{\lambda}\right)^2\right]\ \text{dBi (PE1RKI)},\qquad \text{dBd} = \text{dBi} - 2.15,\qquad \theta_{-3\,dB} \approx 70\,\frac{\lambda}{D}$$

In the beamwidth formula (degrees) the factor 70 is a choice within the 65 – 75 range given by IZ0JNY.

The BETA ground gain (antenna without elevation) is a Yagi option and is not offered for dishes.

## Prime focus or offset (since 1.7)

The **Dish type** drop-down chooses a prime-focus dish (feed in front of the centre) or an **offset** dish (feed outside the aperture). For an offset dish enter the **projected aperture**, i.e. the minor axis, as the diameter: it has no feed and strut blockage, which costs at least 0.5 dB on a prime-focus dish, while illumination efficiency and spillover are the same (W2IMU, Crawford Hill VHF Club Technical Report #18, 1980). For this reason the default efficiency becomes 65 % (60 % for prime focus). The station diagram draws the offset reflector with the feed below it.

At 1296 MHz with dishes (circular polarization) the polarization loss box uses **0.4 dB**, the typical loss of real feeds with about 10 dB of port isolation measured by Bob Atkins KA1GT, instead of the spatial polarization loss.

## Station diagram

The rest of the station is described as in the Yagi tab (antenna temperature, antenna – relay cable, coaxial relay and connectors, transmitter, preamplifier, downlead cable, transverter, cables to the radio, radio MDS and mode), with the complete chain that both tabs have since 1.6:

- **PREAMPLIFIER** – **Stages**: *single stage* or *two stages*; with two stages the total gain reaches about 30 dB and the noise of cable and transverter becomes negligible.
- **TRANSVERTER** – **TX output** (W, it drives the amplifier) and the **Cable to PA** (type and length).
- **TRANSMITTER · PA** – **Required drive** (W): the drive power the amplifier needs to deliver the set output power. With the transverter ticked, the TRANSVERTER box compares it with the power that reaches the PA after the cable and writes *drive sufficient* or *insufficient drive*.

See [EME budget Yagi](EME-Budget#station-diagram) for all the other fields and for how the budget is calculated.

## Bands

- Only **432 MHz, 902 MHz and 23 cm** (the 1296 MHz band, shown as *23 cm* in the band list) can be chosen in this tab. If another band is selected when you open it, YAEC moves to the first of these three among the bands chosen with **BAND SELECTION**.
- Each band keeps its Yagi values and its dish values separately: switching tab does not overwrite the other set.

## Dishes and higher bands

> **Bands above 432 MHz.** For the bands above 432 MHz the program is still being completed, but it already computes the **DGRD correctly at every frequency** (tab [DGRD by frequency](DGRD-by-Frequency)). Further advice for those who are new to the frequencies above 900 MHz will follow.

The manual (THEORY AND TIPS ON EME § 1.11, *Above 432 MHz: dishes*) explains why from 902 MHz upwards mostly dishes are used and why pointing precision matters more with their narrow beams. For a complete dish analysis (f/D, feed, surface roughness, libration, atmosphere) and for the bands above 1296 MHz, the manual recommends the *EME Link Budget & Analysis Tool (1-300 GHz)* by OE2IGL and DF3GJ – see [Manuals](Manuals).

See also: [COAXIAL CABLES](Coaxial-Cables) (cable losses up to 1296 MHz), [Solar noise](Solar-Noise), [Calculation check](Excel-Export-and-Calculation-Check).
