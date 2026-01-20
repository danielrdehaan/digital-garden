---
title: Cubase - Dolby Atmos Setup
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/cubase"
  - "#technique/spatial-audio"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.536650
---

# Cubase - Dolby Atmos Setup

# Setup

![](https://youtu.be/YEvul2Xcn1A)

1) Add a new 7.1.4 Group Track to your Cubase project. 

![Screen Shot 2022-09-25 at 5.57.48 PM.png](Screen_Shot_2022-09-25_at_5.57.48_PM.png)

2) Insert the “Dolby Atmos Renderer” on the newly create 7.1.4 group track.

![Screen Shot 2022-09-25 at 6.04.50 PM.png](Screen_Shot_2022-09-25_at_6.04.50_PM.png)

> [!note]
> - Sample Rate is set to 48000
> - Bit Depth is set to 24
> - And you buffer size is set to 512 or 1024

3)Set the “Dolby Atmos Renderer” to downmix to “Binaural”

![Screen Shot 2022-09-25 at 6.07.34 PM.png](Screen_Shot_2022-09-25_at_6.07.34_PM.png)

4) From the “Project” menu dropdown, open the “ADM Authoring for Dolby Atmos…” window

![Screen Shot 2022-09-25 at 6.10.36 PM.png](Screen_Shot_2022-09-25_at_6.10.36_PM.png)

5)Set the Render to “Renderer for Dolby Atmos”

![Screen Shot 2022-09-25 at 6.13.07 PM.png](Screen_Shot_2022-09-25_at_6.13.07_PM.png)

6) Create a new 7.1.2 group track named “Atmos Bed” to use as your Atmos Bed Master Mix. Route the output of this track to your “Atmos” group track.

![Screen Shot 2022-09-25 at 6.53.25 PM.png](Screen_Shot_2022-09-25_at_6.53.25_PM.png)

7) Open the “ADM Authoring for Dolby Atmos…” window and click the “Add Bed” button. Then set the source track to the “Atmos Bed” group track you just created.

![Screen Shot 2022-09-25 at 6.57.33 PM.png](Screen_Shot_2022-09-25_at_6.57.33_PM.png)

8) To add an Atmos Object, return to the “ADM AUthoring for Dolby Atmos…” window and add a new object and select its source track.

![Screen Shot 2022-09-25 at 7.03.52 PM.png](Screen_Shot_2022-09-25_at_7.03.52_PM.png)

# Exporting a Dolby Atmos File

1) Return to the “ADM Authoring for Dolby Atmos…” window and click the “Export ADM File” button near the bottom right corner.