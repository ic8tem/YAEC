# Settings and data folder

## General settings

The general settings are in the white bar at the top of [Live position and +- 24h](Live-Position). Language, colours, font and font size are **applied at once**: the window is rebuilt in the same place and on the same tab, without restarting.

| Setting | Options |
|---|---|
| **Callsign** | Your callsign; shown in the window title ("… by Costantino IC8TEM for *your callsign*"), on the main screen and on the map. |
| **Language** | 37 languages (see below). |
| **Colours** | Light, Night (blue tones, for use at night), Black (black background, suited to the dark and to OLED screens), and eight pastel schemes. |
| **Font size** | Size of all the program fonts, in %. |
| **Font** | *System default* (the font suited to the chosen language) or one of the *Fonts recommended for YAEC*: at most 10 fonts installed on your computer, chosen from a list tested tab by tab for Windows, Linux and macOS (for non-Latin scripts, fonts that contain that script). Each name in the list is written in its own font, and the font suited to the language is marked *recommended*. |
| **BAND SELECTION** | Bands used in the calculations and lists: 50, 70, 144, 222, 432, 902 MHz and **23 cm** (the 1296 MHz band is shown as *23 cm* in the band lists). Band lists saved by an older version get the new bands added automatically. The MHz list of the working frequency always contains all the bands (70, 222 and 902 MHz included); for 23 cm it offers **1296** and **1298** MHz, both in the 23 cm band. |
| **SHOW COMPLEX DATA ON THE MAIN SCREEN** | Shows the S/N estimated now at the bottom right of the main screen. |
| **IN-DEPTH CALCULATIONS** | Shows the advanced columns and rows and enables Solar noise, Export calculations to Excel and Calculation check. |

The DGRD by frequency tab holds two more choices that apply to the whole program: the receiver noise and the sky used for the Dgrd – see [DGRD by frequency](DGRD-by-Frequency).

### Colour schemes

| Scheme | Description |
|---|---|
| Light | default |
| Night | dark blue tones |
| Black | black background |
| Pastel light blue · Pastel orange · Pastel aquamarine · Pastel green · Pastel pink · Pastel lilac · Pastel indigo · Pastel brown | eight light pastel schemes |

The scheme applies to all tabs.

### Languages

YAEC, its two manuals, the licence and the README are available in **37 languages**:

| | | | |
|---|---|---|---|
| English `en` | Italiano `it` | Deutsch `de` | Français `fr` |
| Español `es` | Português `pt` | Nederlands `nl` | Svenska `sv` |
| Norsk (bokmål) `nb` | Íslenska `is` | Eesti `et` | Latviešu `lv` |
| Lietuvių `lt` | Русский `ru` | Українська `uk` | Türkçe `tr` |
| Afrikaans `af` | العربية `ar` | עברית `he` | اردو `ur` |
| हिन्दी `hi` | বাংলা `bn` | 中文 (简体) `zh` | 日本語 `ja` |
| 한국어 `ko` | Bahasa Indonesia `id` | Dansk `da` | Tagalog `tl` |
| Português (Brasil) `pt-BR` | ไทย `th` | 中文 (繁體) `zh-TW` | Polski `pl` |
| Čeština `cs` | Română `ro` | Ελληνικά `el` | Magyar `hu` |
| Slovenčina `sk` | | | |

Arabic, Hebrew and Urdu are right-to-left. The licence and README in every language are in the [`lingue`](https://github.com/ic8tem/YAEC/tree/main/lingue) folder of the repository. Some scripts need suitable fonts on Linux: see [Troubleshooting](Troubleshooting-FAQ).

## Data folder

All the program data are in a single **`data`** folder. YAEC writes nothing anywhere else.

| System | Location |
|---|---|
| Windows | the `data` subfolder **next to `YAEC.exe`** (the installer puts the program in `Documents\YAEC`) |
| Linux | `~/.local/share/YAEC/data` |
| macOS | `~/Library/Application Support/YAEC/data` |

On Windows you can therefore copy the whole program folder to a USB stick or another computer. Put the program in a folder where you can write – not in *Program Files*.

### Files

| File | Content |
|---|---|
| `impostazioni.txt` | All the settings (locators, callsign, antenna limits, budget parameters for each band, language, theme, fonts), as plain text. |
| `solar-radio-flux.json` | Solar fluxes from NOAA SWPC (RSTN network). |
| `CALL3.TXT` | Merged W7GJ + WSJT-X Improved callsign list. |
| `lotw.adi` | Log downloaded from LoTW (only if you use the LoTW download). |
| `attivi.gz` | List of the EME stations active in the N0UK chat in the last 90 days (callsign and date only), for the orange border of the DX callsign. |
| `cavi_personali.txt` | Your custom coaxial cables. |
| `tiles/` | Map tiles already downloaded. |
| `errori.txt` | Unexpected errors (send it to the author if something goes wrong). |
| `mono-log.txt` | macOS only: output of Mono. |

### Start-up check

During the green bar of the opening window YAEC checks the data folder: it creates it if missing, verifies that it can write there and checks the files.

- The **solar flux** is downloaded again from NOAA if missing, invalid or older than 12 hours.
- **CALL3.TXT** is downloaded again if missing or older than 7 days.
- The **LoTW log** is downloaded again if missing and if username and password are stored.
- The **list of active stations** is downloaded again if missing or older than 20 hours.

If a download fails, YAEC goes on with the saved data.

### LoTW password

The LoTW password is stored **encrypted** for the current user: DPAPI on Windows, the Mono key store on Linux and macOS. On another computer, or another Windows user, enter it again.

### Privacy

YAEC collects no data and shows no advertising. It only connects to the internet to download public data: solar flux (NOAA and the other chosen sources), CALL3.TXT, map tiles and aerial images, ground height (Open Topo Data / Open-Meteo, only with a 10-character locator), the list of active EME stations (from the YAEC repository on GitHub) and, if you ask for it, your LoTW log.
