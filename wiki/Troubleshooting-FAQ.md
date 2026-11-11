# Troubleshooting and FAQ

## Installation and start-up

**Windows SmartScreen says "Windows protected your PC".**
The installer is not signed with a commercial certificate. Click *More info* → *Run anyway*. You can first check the file with `SHA256SUMS.txt` (see [Installation](Installation#checking-the-downloaded-files-sha-256)).

**Windows: settings are not saved / "Cannot write to the data folder".**
YAEC keeps its `data` folder next to `YAEC.exe`. Put the program in a folder where you can write (e.g. `Documents\YAEC`), not in *Program Files*.

**Linux: "YAEC needs Mono".**
Install Mono: `sudo apt install mono-complete` (Debian/Ubuntu/Mint), `sudo dnf install mono-complete` (Fedora), `sudo pacman -S mono` (Arch), `sudo zypper install mono-complete` (openSUSE). The `.deb` package installs it automatically.

**macOS: "YAEC cannot be opened because it is from an unidentified developer".**
The app is not signed by Apple. The first time, **right-click YAEC → Open** and confirm.

**macOS: "YAEC needs Mono" or "YAEC needs XQuartz".**
Install Mono for macOS ([mono-project.com](https://www.mono-project.com/download/stable/) or the *Framework Mono* package from WineHQ) and [XQuartz](https://www.xquartz.org); after installing XQuartz, **log out and in again**. Mono draws the window through X11. If something goes wrong, look at `~/Library/Application Support/YAEC/data/mono-log.txt`. macOS support is experimental.

**macOS (Apple Silicon): Mono and XQuartz are installed but YAEC does not open.**
Use the official Mono package from mono-project.com (Mono 6.12 "Stable", universal): the Homebrew `mono` has no libgdiplus, so the window cannot be drawn (with Homebrew also run `brew install mono-libgdiplus`). On macOS 15, after the first attempt go to *System Settings → Privacy & Security* and click **Open Anyway**, or run `xattr -dr com.apple.quarantine /Applications/YAEC.app`. From version 1.8 the launcher starts XQuartz by itself, writes the Mono version and the architecture in `mono-log.txt` and shows a message if YAEC does not start; to see the error directly run `/Applications/YAEC.app/Contents/MacOS/YAEC` in Terminal and send the output and the log to the author.

## Display

**Linux: some languages show boxes or empty squares (Urdu, Bengali, Hindi, Arabic, Hebrew, Chinese, Japanese, Korean…).**
Your system lacks fonts for that script. Install the **Noto** fonts, which cover all of them, for example:

| Distribution | Command |
|---|---|
| Debian, Ubuntu, Mint | `sudo apt install fonts-noto-core fonts-noto-cjk` |
| Fedora | `sudo dnf install google-noto-sans-fonts` plus the `google-noto-sans-*-fonts` packages for the scripts you need (e.g. Bengali, Arabic, CJK) |
| Arch | `sudo pacman -S noto-fonts noto-fonts-cjk` |

Then restart YAEC and, in the settings bar, set **Font** to *System default* or choose a Noto font from the list (each font name is written in its own font, so you can see which ones work).

**Text is cut or too small / too large.**
Change **Font size** (%) or **Font** in the settings bar; they apply at once.

**I work at night and the screen is too bright.**
Choose the **Night** or **Black** colour scheme.

## Tabs and calculations

**Solar noise, Export calculations to Excel and Calculation check are grey.**
Tick **IN-DEPTH CALCULATIONS** (estimated S/N card on the main screen, or top right of the EME budget).

**The estimated S/N on the main screen is empty.**
Tick **SHOW COMPLEX DATA ON THE MAIN SCREEN**; a valid locator for your station and an active DX are needed.

**"No useful window" / "No common window".**
With your antenna limits the Moon never becomes pointable in the period. Check the azimuth sector (clockwise *from → to*; 0 → 360 = no limit) and the minimum/maximum elevation, widen the period, or look further ahead in [Distance and Dgrd](Distance-and-Dgrd).

**The Moon direction looks slightly different from another program.**
Check the **Correct for atmospheric refraction** box in Moon position: unticked, YAEC gives the geometric elevation, as most EME programs do. Also use a locator with at least 6 characters (4 characters can be off by about 1°).

**The Dgrd is different from WSJT-X (or another program).**
The Dgrd shown by other software (mmmonvhf.de, MoonTracker…) may be computed differently and is not directly comparable (THEORY AND TIPS ON EME); with the usual calculation (fixed 80 K receiver, sky at the Moon centre) YAEC uses the same formula as WSJT-X. In YAEC the noise model of the Dgrd is chosen in [DGRD by frequency](DGRD-by-Frequency); by default it uses your station's noise and the sky averaged over the antenna beam. Choose *fixed 80 K, like WSJT-X* and *Moon center only* there to get values comparable with WSJT-X.

**The EME budget says "the locators of both stations are needed".**
Enter a valid DX locator (or callsign from CALL3.TXT) so that the second station is active.

**The radio noise figure looks wrong.**
The radio NF is derived from its MDS: NF = MDS + 174 − 10·log B. Set the budget **Bandwidth** to the one in which the MDS is specified (usually 500 Hz).

## Data and internet

**Maps are empty.**
Map tiles and aerial images come from the internet and are stored in `data/tiles`. Offline, choose *No map (grid only, no internet)* in the WWL map.

**Solar flux: download error.**
YAEC uses the saved data. Try **Update from web** later, choose another source, or enter a **manual flux**.

**LoTW: login failed.**
Check username and password. The password is stored encrypted for the current user: on another computer or Windows user it must be entered again.

**CALL3.TXT: "WSJT-X folder not found".**
Choose the folder yourself: in WSJT-X use *File → Open log directory* to find it. Restart WSJT-X after copying.

**The ground height was not found.**
It is looked up only with a 10-character locator and needs internet; otherwise enter it by hand in Moon position.

## Other questions

**Is YAEC really free?** Yes, for amateur radio use, study and teaching; the source is always included. Selling it or including it in paid products needs the author's written permission. See [Licence](Licence).

**Does YAEC cover 1296 MHz and up?** Since 1.6 YAEC covers **902 MHz and the 23 cm band** (1296 MHz) in the whole program (up to 1.5 it stopped at 432 MHz), with the [EME budget dishes](EME-Budget-Dishes) tab for dish antennas at 432 MHz, 902 MHz and 23 cm. For the bands above 432 MHz the program is still being completed, but it already computes the **DGRD correctly at every frequency** ([DGRD by frequency](DGRD-by-Frequency) tab); further advice for those who are new to the frequencies above 900 MHz will follow. Above 1296 MHz, and for a complete dish analysis (1 – 300 GHz), the manual recommends the [EME Link Budget & Analysis Tool](https://wettersat.bplaced.net/EME/EME.html) by OE2IGL and DF3GJ.

**Does it control my rotator or radio?** No. YAEC is a calculator and planning tool; for Doppler tracking via CAT use your digital program (e.g. WSJT-X *Astronomical Data*).

**Something crashed.** The error is shown in a message and written to `data/errori.txt`. Please send that file to the author – see [Contributing and contacts](Contributing-and-Contacts).
