# COAXIAL CABLES

*Group: Help and tools.*

A **database of 50 Ω coaxial cables** with the attenuation in **dB/100 m at 20 °C** at **50, 70, 144, 222 and 432 MHz**, and the **source of every value**. The cables you choose here are used in the station diagram of the [EME budget](EME-Budget).

## Using the table

| Feature | How |
|---|---|
| **Search** | By name, code or manufacturer (magnifier box). |
| **Filter** | By type: All, Flexible, Superflexible, Semi-rigid (corrugated), Custom; and by diameter. |
| **Sort by** | Diameter, loss ascending / descending in the highlighted band, name, manufacturer or type. You can also click a band heading (first click ascending, second descending). |
| **Highlighted band** | The band used for sorting and for the loss calculation. |
| **Tick cables** | Compares them on the chart (1 – 20 dB/100 m) and in the **COMPARISON OF THE TICKED CABLES** card. |
| **LOSS OVER YOUR LENGTH** | Loss of the ticked cables over your own length, in the chosen band. |
| **use in the EME budget** | Puts the first ticked cable, with this length, as the **downlead cable** of your station in the EME budget. |
| Tooltip on a row | The sources of that cable. |

## How to read the values

| Mark | Meaning |
|---|---|
| plain number | value of the manufacturer's data sheet at that frequency (within 2.5 %) |
| **≈** | interpolated between two data-sheet frequencies with the power law (straight line on the log-log chart) |
| **e** | extrapolated beyond the last data-sheet frequency – use with caution |
| **≡** | cables merged into one row: same type, diameter within ±0.2 mm, attenuation within 0.2 dB/100 m on all bands; the value is the mean |
| **also:** | equivalent commercial names (e.g. LMR-400 = HF400, CNT-400) |

Interpolation: $\alpha(f) = \alpha_1 (f/f_1)^n$, with $n = \log(\alpha_2/\alpha_1)/\log(f_2/f_1)$; loss $L = \alpha(f)\cdot \ell/100$.

The Chinese codes 50-3, 50-5, 50-7, 50-9, 50-12 give the dielectric diameter in mm: 50-7 ≈ RG-213/LMR-400 class, 50-9 ≈ 1/2" superflexible, 50-12 ≈ 1/2" corrugated.

## Custom cables

**Add custom cable** with its five attenuations. Custom cables are saved in `data/cavi_personali.txt` and also appear in the drop-down lists of the EME budget diagram. To remove them, tick them and use **Remove the ticked custom cables** (right-click menu).

## Connectors count too

NJ9R's practical advice: about **1 dB every 8 – 10 connectors** (adapters, relays and splitters included) – in his four-antenna system 24 connectors are worth more than 2 dB, as much as 40 – 45 m of new LMR-400 at 144 MHz. In the [EME budget](EME-Budget) the coaxial relay box has two fields, **TX connectors** and **RX connectors** (0.11 dB each).

## Sources

Data sheets of Times Microwave (LMR), RFS (CELLFLEX), CommScope Andrew (HELIAX), Siva Cavi, SSB-Electronic (Aircell, Ecoflex, SeaTex, Aircom Premium), Messi & Paoloni (Hyperflex, Ultraflex, Airborne), Symair, SYV50-7, Belden (H1000, 8237, 9913), Tasker, Prospecta (RT5020, XT2400), QAXIAL (LLF195), Caledonian Cables (MIL-C-17F: RG-142, RG-393), R.F. elettronica (RG-115), the DD1US and EA5IP tables and the SV1BSX table (values to be verified). Full list in THEORY AND TIPS ON EME § 1.8.

> Know a better value or a missing cable? See [Contributing and contacts](Contributing-and-Contacts).
