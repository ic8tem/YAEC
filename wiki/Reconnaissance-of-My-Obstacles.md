# Reconnaissance of my obstacles

*Group: Live.* (Formerly called *Pointing map*.)

An **aerial photo or topographic map centred on your station**, with the sky dome drawn in plan on top of it: the horizon is the outer circle and the zenith is the centre. It lets you see, on the real terrain, which directions are blocked by buildings, trees or hills and whether the Moon will pass there.

## What is drawn

- the **current Moon position**;
- the **Moon path over the next 24 hours**, with moonrise and moonset;
- your **antenna limits** in yellow (azimuth sector, minimum and maximum elevation);
- the zones **outside the limits** covered by a grey veil (optionally blurred).

## Controls

| Control | What it does |
|---|---|
| **Map background** | Aerial photo (Esri World Imagery) or topographic (OpenTopoMap, OpenStreetMap). |
| **Zoom** | Mouse wheel, or **+** / **−**. |
| **Yellow handles** | Drag them to change the azimuth sector and the minimum and maximum elevation. The values are the same as in the [Moon position](Moon-Position) tab and change there too. |
| **Grey veil** | Applies the grey veil to the zones outside the limits and darkens the map outside the horizon. Unticked, the background image stays as it is. |
| **Blur the zones outside the limits** | Turns the blur on or off. |
| **Grey opacity** | Opacity of the veil, 0 % (transparent) to 100 % (opaque). |
| **Grey tone** | From white to black; it also applies to the [Sky view](Sky-View). |

## Choosing your exact locator on the map

- **Click outside the circle** of the cardinal points: YAEC takes the **10-character locator** of that point, shows a red marker and asks *"You have changed the locator to …: do you accept the change?"*. **Yes** applies it everywhere in the program (the ground height is looked up again on the web and the map is centred on the new point); **No** keeps the old locator.
- **No locator entered yet?** The map is centred on JJ00AA: click the point of your station to choose its 10-character locator.

## Why 8 or 10 characters

For the Moon direction, 6 characters are enough (±4.4 km changes azimuth and elevation by about 0.04°). Local obstacles, however, are tens or hundreds of metres away: with 6 characters the station could be anywhere in a 7.5 × 4.6 km rectangle. With 8 characters the error is about 450 m, with 10 about 20 m – the precision this tab needs to place the blocked zones correctly.

> **Tip (NJ9R).** Before looking for the Moon, make a local noise map: turn the antenna through 360° in 15 – 30° steps and note the noise in each direction. Comparing it with this map helps to choose the best Moon windows.

Map data: © OpenStreetMap contributors, OpenTopoMap (CC-BY-SA), Esri World Imagery. Map tiles are downloaded from the internet and stored in the `data` folder.
