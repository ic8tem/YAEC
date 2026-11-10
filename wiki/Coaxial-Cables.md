# COAXIAL CABLES

*Group: Help and tools.*

A **database of 50 Ω coaxial cables** with the attenuation in **dB/100 m at 20 °C** at **50, 70, 144, 222, 432, 902 and 1296 MHz**, and the **source of every value**. The cables you choose here are used in the station diagrams of the [EME budget Yagi](EME-Budget) and of the [EME budget dishes](EME-Budget-Dishes).

## Using the table

| Feature | How |
|---|---|
| **Search** | By name, code or manufacturer (magnifier box). |
| **Filter** | By type: All, Flexible, Superflexible, Semi-rigid (corrugated), Custom; and by diameter. |
| **Sort by** | Diameter, loss ascending / descending in the highlighted band, name, manufacturer or type. You can also click a band heading (first click ascending, second descending). |
| **Highlighted band** | The band used for sorting and for the loss calculation; the band of the EME budget is marked *(from the EME budget)*. |
| **Tick cables** | Compares them on the chart (1 – 20 dB/100 m) and in the **COMPARISON OF THE TICKED CABLES** card. |
| **LOSS OVER YOUR LENGTH** | Loss of the ticked cables over your own length, in the chosen band. |
| **use in the EME budget** | Puts the first ticked cable, with this length, as the **downlead cable** of your station in the EME budget. |
| Tooltip on a row | The sources of that cable. |

## How to read the values

| Mark | Meaning |
|---|---|
| plain number | value of the manufacturer's data sheet at that frequency (within 2.5 %) |
| **≈** | computed with the formula α = k1·√f + k2·f (conductors + dielectric) within the frequencies of the data sheet (up to 1.5: interpolated between two data-sheet frequencies with the power law) |
| **e** | computed with the same formula outside the frequencies of the data sheet – use with caution (up to 1.5: extrapolated beyond the last data-sheet frequency) |
| **≡** | cables merged into one row: same type, diameter within ±0.2 mm, attenuation within 0.2 dB/100 m on all bands; the value is the mean |
| **also:** | equivalent commercial names (e.g. LMR-400 = HF400, CNT-400) |

Since 1.6 the values are brought to the bands from 50 to 1296 MHz with the physical formula for coaxial cable attenuation, the sum of the losses in the conductors (skin effect, growing with $\sqrt{f}$) and of those in the dielectric (growing with $f$):

$$\alpha(f) = k_1\sqrt{f} + k_2 f, \qquad L = \alpha(f)\cdot\frac{\ell}{100}$$

with α in dB/100 m, f in MHz and ℓ in metres. For each cable $k_1$ and $k_2$ (never negative) are obtained by least squares, weighting the relative error, from the values in the maker's data sheet. With a single term the formula reduces to a cable dominated by the conductors ($k_2 = 0$) or by the dielectric ($k_1 = 0$). The values at 902 and 1296 MHz come from the data sheets where the makers give them.

Up to 1.5 the values were interpolated with the power law, $\alpha(f) = \alpha_1 (f/f_1)^n$, with $n = \log(\alpha_2/\alpha_1)/\log(f_2/f_1)$.

The Chinese codes 50-3, 50-5, 50-7, 50-9, 50-12 give the dielectric diameter in mm: 50-7 ≈ RG-213/LMR-400 class, 50-9 ≈ 1/2" superflexible, 50-12 ≈ 1/2" corrugated.

## Custom cables

**Add custom cable** with its name, diameter and attenuations on seven bands (50 to 1296 MHz); a custom cable saved with five bands by an older version (up to 1.5) gets the missing ones from the formula. Custom cables are saved in `data/cavi_personali.txt` and also appear in the drop-down lists of the EME budget diagram. To remove them, tick them and use **Remove the ticked custom cables** (right-click menu).

## Connectors count too

NJ9R's practical advice: about **1 dB every 8 – 10 connectors** (adapters, relays and splitters included) – in his four-antenna system 24 connectors are worth more than 2 dB, as much as 40 – 45 m of new LMR-400 at 144 MHz. In the [EME budget](EME-Budget) the coaxial relay box has two fields, **TX connectors** and **RX connectors** (0.11 dB each: NJ9R's rule is for 144 MHz, and YAEC applies it to all bands).

## Sources

Data sheets of Times Microwave (LMR), RFS (CELLFLEX), CommScope Andrew (HELIAX), Siva Cavi, SSB-Electronic (Aircell, Ecoflex, SeaTex, Aircom Premium), Messi & Paoloni (Hyperflex, Ultraflex, Airborne), Symair, SYV50-7, Belden (H1000, 8237, 9913), Tasker, Prospecta (RT5020, XT2400), QAXIAL (LLF195), Caledonian Cables (MIL-C-17F: RG-142, RG-393), R.F. elettronica (RG-115), the DD1US and EA5IP tables and the SV1BSX table (values to be verified). Full list in THEORY AND TIPS ON EME § 1.8.

> Know a better value or a missing cable? See [Contributing and contacts](Contributing-and-Contacts).
