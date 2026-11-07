# Export calculations to Excel and Calculation check

*Group: Link.* Both tabs are enabled with the **IN-DEPTH CALCULATIONS** box (main screen or EME budget); without it they are grey. They exist for transparency: **every formula is visible and every number can be checked.**

## Export calculations to Excel

The same [EME budget](EME-Budget) laid out as a **spreadsheet** inside the program.

- The parameters are the same as in the EME budget tab, band and instant included.
- **Green cells can be edited**: type a value and press **Enter**; the results update at once.
- Useful to try "what if" changes in a familiar spreadsheet layout.

## Calculation check

(Formerly *FORMULA DEBUG*.) All the parameters and formulas of the **EME budget** and of **Solar noise**, for the instant and band chosen in the EME budget, with:

| Column | Content |
|---|---|
| **formula** | the equation, in Equation Editor style |
| **values** | the same equation with the numbers substituted |
| **result** | the value obtained |

It covers both directions (**you → DX** and **DX → you**, selectable with **Direction**), step by step:

- time and band; input parameters;
- wavelength and radar cross-section of the Moon, Moon azimuth / elevation / topocentric distance, Earth–Moon–Earth path loss;
- EIRP (PA–relay cable + relay + antenna cable + connectors, antennas);
- signal along the receive chain (before the preamp, preamp, downlead cable, transverter, cables to the radio), radio NF from the MDS, receiver NF (Friis), temperatures, noise in the bandwidth and S/N;
- for the Sun: flux, beam, pattern attenuation, effective area and noise increase.

It is updated at every recalculation and is laid out like a Word document. Buttons:

- **Copy to clipboard**
- **Save as Word (.docx)** – with Word (Office Math) formulas
- **Zoom**

> The licence promise: *"every formula is visible in the Calculation check tab and every data item gives its source. No black boxes."* If you doubt a result, check it here – and if you find an error, please [report it](Contributing-and-Contacts).
