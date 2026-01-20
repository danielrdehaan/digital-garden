---
title: Cubase - Ambisonic Setup
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/cubase"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.536185
---

# Cubase - Ambisonic Setup

# Setup

![](https://youtu.be/-PRjLar7lyw)

1) Go to Studio > Audio Connections…

![Screen Shot 2022-09-25 at 5.20.21 PM.png](Screen_Shot_2022-09-25_at_5.20.21_PM.png)

2) Create a new Third-Order Ambisonic Output Bus that is not connected to any output device.

![Screen Shot 2022-09-25 at 5.21.38 PM.png](Screen_Shot_2022-09-25_at_5.21.38_PM.png)

3) Right-click on the new Ambisonic Bus and set it as the “Main Mix”

![Screen Shot 2022-09-25 at 5.22.31 PM.png](Screen_Shot_2022-09-25_at_5.22.31_PM.png)

4) Switch to the “Control Room” tab of the “Audio Connections…” window and enable Cubase’s Control Room.

![Screen Shot 2022-09-25 at 5.23.59 PM.png](Screen_Shot_2022-09-25_at_5.23.59_PM.png)

5) Right-Click to add a “Phones” Bus and connect it to your audio interface.

![Screen Shot 2022-09-25 at 5.25.33 PM.png](Screen_Shot_2022-09-25_at_5.25.33_PM.png)

6) Open Cubase’s Preferences window and navigate to the Control Room preferences tab and enable “Use Phones Channel as Preview Channel”. Then click “Apply” and close the Preferences window.

![Screen Shot 2022-09-25 at 5.26.36 PM.png](Screen_Shot_2022-09-25_at_5.26.36_PM.png)

7) You should now see the new “Phones” output in the Control Room window on the right side of your Cubase window. Additionally you should also see that it hosts the “VST Ambidecoder”

![Screen Shot 2022-09-25 at 5.29.57 PM.png](Screen_Shot_2022-09-25_at_5.29.57_PM.png)

8) Create, or route any mono/stereo track to the new Ambisonic Bus. The VST Ambidecoder on the Control Room Phones output track will handle decoding your 3rd-order Ambisonic elements to binaural.