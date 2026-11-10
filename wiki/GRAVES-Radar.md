# GRAVES radar

*Group: Link* (the **GRAVES radar** tab, since 1.5), and the **GRAVES** button on the main screen.

## What GRAVES is

**GRAVES** is a French radar that transmits **continuously on 143.050 MHz** from locator **JN27SI** (transmitter near Broye-lès-Pesmes, eastern France). Its powerful signal is reflected by the Moon, and its echo is the most widely used **test bench on 144 MHz** for reception via the Moon: if you can hear the GRAVES echo, your receive chain and your pointing work.

According to PE1ITR, the transmitter illuminates the southern sky (azimuth 90° to 270°) in four 45° sectors, stepping the beam in a fixed sequence – which is why the Moon echo is not a steady carrier but appears as a dashed line on the waterfall. As the tab explains: four phased arrays cover the four sectors (D, C, B, A); each sector is divided into 6 steps of 7.5°, illuminated one after another, at the same time in all four sectors. The beam is about 25° wide in elevation: lunar echoes are received well with the Moon between 15° and 40° elevation as seen from GRAVES. Details and timing: Rob Hardenberg PE1ITR, *"The 143.050 MHz Graves Radar, a VHF Beacon"* (DUBUS 4/2007) and *"Graves Radar Update April 2021"* – [pe1itr.com/graves](https://pe1itr.com/graves).

## The GRAVES button

In the **DX station** card of [Live position and +- 24h](Live-Position), the **GRAVES** button sets the GRAVES radar as the DX station: callsign *GRAVES*, locator **JN27SI**, second station enabled in all tabs.

From then on, the **common windows** shown everywhere in YAEC (status band, 24-hour bar, [Moon position](Moon-Position), [Distance and Dgrd](Distance-and-Dgrd)) are the moments when the Moon is visible both from your station and from GRAVES – **the moments when you can receive its echo** and check your receiver and pointing.

> The button changes the DX, not your working frequency: for the Doppler values of the GRAVES echo, set the frequency to 143 MHz + 050 kHz in the Echo and frequencies card.

To go back to your normal DX, type its callsign or locator again.

## The GRAVES radar tab

The French GRAVES radar (143.050 MHz) as a test bench: when the Moon is in its beam and within your antenna limits, the Doppler and delay of the echo, the next beam pass on the Moon, the sky seen from GRAVES with the four sectors, the reconstruction of the 24 UTC hours and tips for hearing the echo.

### Top bar

| Control | What it does |
|---|---|
| **Now** | Recomputes the tab at the current time. |
| **SET GRAVES AS DX** | The same as the GRAVES button of the main screen: GRAVES becomes the DX station. |
| **Beam sequence:** | *0.8 s per step · cycle 4.8 s (PE1ITR 2021)* or *3.2 s per step · cycle 19.2 s (PE1ITR 2007)*. |
| **Sound alert when the window opens** | A sound when the common window with GRAVES opens (Moon in the radar beam and within your antenna limits). |

### Cards

| Card | Contents |
|---|---|
| **MOON IN THE GRAVES BEAM** | *YES · sector …* or *NO*, with the Moon azimuth and elevation from GRAVES and the step (of 6) of the sector. |
| **COMMON WINDOW WITH YOU** | *open* (with its duration and when it closes) or *closed* (when it opens, or *no window in the next 24 hours*). |
| **ECHO DOPPLER ON 143.050** | Bistatic Doppler GRAVES → Moon → you, the frequency to listen on and the echo delay. |
| **NEXT BEAM PASS OVER THE MOON** | In how many seconds the beam step that contains the Moon is illuminated again, how often, and when the echo arrives. |

Below them:

- **THE SKY AS SEEN FROM GRAVES** – the four sectors and their steps, with the Moon and its path over the next 12 hours.
- **CHRONOLOGICAL RECONSTRUCTION OF THE TRANSMISSIONS** – the 24 UTC hours with the Moon from GRAVES, the Moon from your station, the illuminated sector and the common window, and the **detail of the next 10 s**: beam steps in the Moon's sector and the expected echo arrival. The sequence is tied to UTC time (PE1ITR); the control station sometimes shifts it by a few steps, so the detail is a prediction to be confirmed by listening – keep the PC clock synchronised.
- **HOW TO HEAR THE ECHO (NJ9R, PE1ITR)** – receiver, antenna, waterfall and test, summarized in the table below; on the waterfall the echo is a dashed line at about 1240 Hz (± Doppler), while aircraft are lines near the direct signal.
- **Sources** – PE1ITR (DUBUS 4/2007 and *Graves Radar Update April 2021*), Bolidozor wiki, Wikipedia (*GRAVES (system)*), NJ9R, Grupo Bandas Altas DX (*Desafío EME GRAVES*).

## How to hear the Moon echo (NJ9R)

From Relu NJ9R, *"2M EME the easy way… the secret sauce to success"* (summarized in THEORY AND TIPS ON EME § 1.11):

| Step | What to do |
|---|---|
| Receiver | **SSB on 143.050 MHz** (or 143.0495 MHz), audio bandwidth **at least 2.4 kHz**, **AGC off**, **noise blanker on**, no other filter, notch or DSP. |
| Radio | Many radios do not tune outside the 2 m band: in that case use an **SDR receiver**. |
| Antenna | Point at the Moon as seen from your station. Without elevation the echo is usually received only with the Moon between **0° and 15°** elevation, at moonrise or moonset. |
| Waterfall | The GRAVES echo shows up as a **dashed line**: the stronger it is, the better the antenna is aimed. |
| Peak the pointing | Move the rotator in small steps, first azimuth then elevation, up to the maximum, and compare the position found with the calculated one. |

NJ9R also uses GRAVES as an S-meter: with the gain slider zeroed he reads the average signal over one minute, and before every session he checks with GRAVES that the station is still in tune. If you use a mast camera, mark the centre of the Moon on the monitor after peaking the GRAVES echo.

## Why it is useful

- It is a **free, always-on signal** from the Moon: no sked needed.
- It checks the **whole receive chain** (antenna, preamp, cables, radio, software) and the **pointing** (compare the peak with YAEC's azimuth and elevation and keep an error log).
- NJ9R started this way with a 7-element Yagi and no preamplifier.

See also: [EME budget](EME-Budget) (what your station should receive) and THEORY AND TIPS ON EME § 1.11 and § 1.13 in the [Manuals](Manuals).
