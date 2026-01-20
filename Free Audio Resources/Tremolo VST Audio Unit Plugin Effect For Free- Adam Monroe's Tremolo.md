---
base: "[[Digital Garden/Free Audio Resources/_Index.base]]"
URL: https://adammonroemusic.com/free-tremolo-vst/tremolo-vst-free.html
Image: Untitled 321.png
Date Added: 2022-04-21 15:03:00
Tags:
  - audio-effect
🌟: false
Last Edited: 2022-04-21 16:33:00
created: 2026-01-20T11:13:11-06:00
modified: 2026-01-20T11:13:11-06:00
---


![[Untitled 321.png]]

A Tremolo plugin VST, AAX, or Audio Unit effect isn't that difficult to program. Originally, I intended to make a non-parameterized version, to go a long with an upcoming [Wurlitzer sample library](https://adammonroemusic.com/wurlitzer-vst/am-wurlitzer-vst-plugin.html) that would mimic the traditional "vibrato" oscillator of a Wurlitzer 200A. Having accomplished this, the decision was made to make an independent plugin, as the tremolo effect sounded nice with my [Rhodes sample library](https://adammonroemusic.com/rhodes-piano-vst/am-rhodes-piano-vst.html) (Rhodes suitcase models also include a stereo panner).
 Stereo panning was added to make the piano more robust abduseful. Technically speaking, the tremolo sine wave is half the length of the panner sine wave, so that with all knobs being equal, the Tremolo effect should pan at 2:1 ratio with the panner effect. However, in practice amplitude and stereo modulation are different sounding enough for ratios to become difficult for the ear to quantify. By varying speed and depth, the user can produce all kinds of unique relationships between the two oscillators. Adding a parameter to change oscillators from sine waves to square or triangle waves was considered, but for practical purposes, it is my feeling that sine waves produce the best tremolo effect - I might update this in a future version.
 The length of the Tremolo and Panning sine waves are 18,000 and 36,000 points respectively, so that the slowest possible oscillation can occur at 2.45 and 1.225 Hz (or lower if selecting a higher sample rate) up to 100x (about 245/125 Hz). With the speed set at maximum, it becomes difficult to discern the tremolo effect. 
 This plugin was coded in native C++ for VST, AU, and AAX versions. The majority of build time was spent teasing out Apple's Audio Unit and Cocoa frameworks. By default, Audio Units are designed o process audio data independently, one channel at a time. For the stereo panner, this is a limitation that had to be overcome.
 A bit of time was also spent making 3d models and artwork for the GUI. The entire build process took less then a week. As such, the decision was made to make it a free tremolo plugin. As with all my plugins, I am continuously updating and improving the tremolo, so if you have comments or suggestions you can email them to me at adammonreo@adammonroemusic.com     