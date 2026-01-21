---
base: "[[Digital Garden/Free Audio Resources/_Index.base]]"
URL: https://www.kvraudio.com/forum/viewtopic.php?t=486995
image: https://hvoyaaudio.com/wp-content/uploads/2020/10/ribs.png
Date Added: 2022-04-21 15:03:00
Tags:
  - granular
  - audio-effect
  - delay
  - sound-design
🌟: false
Last Edited: 2025-11-18 09:06:00
created: 2026-01-20T11:13:11-06:00
modified: 2026-01-20T11:13:11-06:00
---



![[Untitled 326.png]]

Hello, fellow sound experimentalists and developers!

I've released a free plugin called Ribs. It's a granular instrument/fx that combines a number of different features that I always wanted to use in my productions.

Download:

[**VST, AU, standalon**](https://yadi.sk/d/hPyKrGTk3KbiXJ)**e**

.

NB 1: Windows antivirus may report false positive. Keep calm and check on

[virustotal.com](https://www.virustotal.com/)

prior to unpacking, just to see for yourselfves.

here are two videos. A detailed tutorial for the initial release and a short video update:\

![](https://youtu.be/MOPs13L1yl0)

![](https://youtu.be/-tdyLr2jtEk)

You can play it as a synth, you can glitch and scratch sounds, create textures, etc. You can also use it as a granular FX with polyphonic capabilities (FX button on the top-left)

Some example sounds are available here

[https://soundcloud.com/crimsonbrain/birds-in-april-fog-ribs-demo?utm_source=clipboard&utm_campaign=wtshare&utm_medium=widget&utm_content=https%253A%252F%252Fsoundcloud.com%252Fcrimsonbrain%252Fbirds-in-april-fog-ribs-demo](https://soundcloud.com/crimsonbrain/birds-in-april-fog-ribs-demo?utm_source=clipboard&utm_campaign=wtshare&utm_medium=widget&utm_content=https%253A%252F%252Fsoundcloud.com%252Fcrimsonbrain%252Fbirds-in-april-fog-ribs-demo)

Since use cases share many common design elements, I've made a single tool, hence lots of controls. I realize that it's "a bit" overwhelming. But for starters there's the "?" button next to the logo on the right. Once it's pressed, hover the mouse over the controls and get a description for each of them.

PDF manual comes with the download.

One key concept to keep in mind is the use of incoming sound. Ribs fills its buffers with the sound that you route to its inputs, that means that Ribs takes the output of a track it is on. By default a buffer starts filling on the first incoming MIDI note. Then you can use the waveform to select specific parts of a sound (right mouse button), scroll and zoom (mouse wheel), aim the playhead at a specific position (left click) and do other things to it.

Most of the params are MIDI-automatable via the right click.

Ribs is made with WDL-OL. For graphical design I used KnobMan, Processing, Krita and Inkscape.

Feel free to ask questions, and please report bugs to

[ribsey@ya.ru](mailto:ribsey@ya.ru)

(attach the GUI screenshot if possible).

I'd appreciate your feedback, especially if there's anything that you find particulary slick/misleading/(un)convenient/awesome or if you just want to share an idea. I've allowed myself to experiment with the UI, so there must be something

I'd also highly appreciate your support. You could spread the word, or share your sounds. I also have a [Patreon](https://www.patreon.com/eugeneyakshin) page if you want to support the development. You can find these links in the info section of the plugin too.