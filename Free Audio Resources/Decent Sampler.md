---
base: "[[Digital Garden/Free Audio Resources/_Index.base]]"
URL: https://www.decentsamples.com/product/decent-sampler-plugin/
image: https://www.decentsamples.com/wp-content/uploads/2020/06/Decent-Sampler-Cover-Idea-2.jpg
Date Added: 2022-04-21 19:24:00
Tags:
  - decent-sampler
  - instrument
🌟: true
Last Edited: 2022-12-20 10:45:00
created: 2026-01-20T11:13:11-06:00
modified: 2026-01-20T11:13:11-06:00
---



![](https://www.decentsamples.com/wp-content/uploads/2020/06/Decent-Sampler-Cover-Idea-2.jpg)

---

[Decent Sampler Cover Idea 2](https://www.decentsamples.com/wp-content/uploads/2020/06/Decent-Sampler-Cover-Idea-2.jpg)

![[Decent-Sampler-Cover-Idea-2.jpg]]

A FREE sampling plugin that allows you to play samples in the Decent Sampler format.

## Description

The Decent Samples plugin is a FREE sample player plugin that allows you to play sample libraries in the DecentSampler format (files with extensions: **dspreset** and **dslibrary**). It is available in the following formats:

- Windows (32-bit/64-bit): VST, VST3, AAX, Standalone (download link is above)
- Mac (Intel & M1): VST, VST3, AU, AAX, Standalone (download link is above)
- Linux (Intel 64-bit): VST, VST3, Standalone (download link is above)

If you’d like to support the development of **Decent Sampler**, please consider [becoming a patron](https://www.patreon.com/dhilowitz) on Patreon.

**If you want to develop samples for Decent Sampler, **[**check out this page**](https://www.decentsamples.com/decent-sampler-developer-resources/)**.**

![[Screen-Shot-2020-06-07-at-3.56.48-PM.png]]

**If you find bugs, please **[**report them to us**](https://www.decentsamples.com/contact/)**.**

**Older versions can be found here:** [Windows](https://www.dropbox.com/sh/ry9hk1a1c8epyah/AAD0rEFlSYTanBn7PdbLIcRwa?dl=0) [Mac](https://www.dropbox.com/sh/ak3fat2zl56z766/AADQ5gMIU3DJRAwFLG4lvRTwa?dl=0) [Linux](https://www.dropbox.com/sh/dwyry6xpy5uut07/AABBJ84bjTTSQWzXGG5TOQpfa?dl=0)

**Latest version release notes:**

**1.4.17**

- Fixed a bug that was causing REAPER to crash when the plugin was removed from a track

**1.4.16**

- Added SFZ importing. This is just like the EXS importer in that it will get you basic mappings, but extended features are not supported.
- Fixed a bug that was causing some EXS files to crash Decent Sampler
- Fixed a bug that was preventing EXS round robins from being translated correctly
- After doing an EXS or SFZ import, if there are file errors, we now display a message explaining that this probably isn’t catastrophic and that the conversion probably still worked fine
- After doing an EXS or SFZ import, if we then go to save the preset out, a suggested dspreset filename is filled in in the dialog box.
- Refactored a lot of the UI control code to make it use less CPU

**1.4.15 (Mac only)**

- Decent Sampler now works on macOS going back to 10.10. This was requested by several users who work on older machines.
- Got rid of AUv3 support on Mac in order to target macOS 10.10. This is an experimental change. Stats would indicate that everyone was using regular AU and not AUv3 anyway. If it turns out that you need AUv3 format for some reason, [please contact us](https://www.decentsamples.com/contact/).

**1.4.14**

- Fixed a bug that was preventing sounds with seqLength of greater than 5 from playing.

**1.4.13**

- Fixed a bug (introduced in 1.4.12) that was causing some DAWs to crash when a DecentSampler instance was added, removed, and then added again.

**1.4.12**

- Fixed the crashing bug from 1.4.11
- The store catalog now gets cached to disk for quicker plugin loading

**1.4.11**

- Added under-the-hood support for pointing bindings at multiple groups at once using the `tags=` attribute.
- Decent Sampler now supports having multiple round robin groups of different lengths. To make use of this, use the `seqLength=` attribute for your samples/groups.
- Added support for the `minVersion=`attribute.
- Fixed a bug that was causing the UI to freeze for 1-2 seconds on plugin startup

**1.4.10**

- Added an **Import EXS preset **menu item to the **Developer Tools** menu

**1.4.9**

- Fixed a bug that was preventing bindings against the chorus effect’s mod rate from working correctly. (NOTE: If an instrument sounds weird now and it didn’t before, and your instrument uses chorus, check on your modRate values to make sure they’re what you want. The default value is 0.20 and that usually sounds good.)

**1.4.8**

- The `<tag>` element now has an `enabled` attribute. In order for a sample or group to play, all its tags need to be enabled.
- The binding that corresponds to the tag’s volume has been changed to `TAG_VOLUME` (from `AMP_VOLUME`). The old one will still work, but developers should start using the new name in their new instrument’s.
- It’s now possible to create bindings against a tag’s `enabled` attribute using the `TAG_ENABLED` binding parameter.

**1.4.6**

- Fixed MIDI learn (broken in 1.4.0)

**1.4.5 (iOS and Windows only)**

- Windows: Double clicking on **.dspreset** and **.dslibrary** files now causes the standalone version of Decent Sampler to be launched.
- iOS: Tapping on **.dspreset** and **.dslibrary** files within the iOS Files app now causes the standalone version of Decent Sampler to be launched.

**1.4.2 (Mac only)**

- 
    - Mac: Double clicking on **.dspreset** and **.dslibrary** files now causes the standalone version of Decent Sampler to be launched.

**1.4.1**

- 
    - 
        - 
            - Decent Sampler no longer scans the sample library on startup (this was causing the plugin to fail scans for too many DAWs).

**1.4.0**

- 
    - 
        - 
            - Added under-the-hood support for keyswitches (documentation coming soon)
            - Added under-the-hood support for coloring the onscreen keyboard (sample developers, see [here](https://www.decentsamples.com/wp-content/uploads/2020/06/format-documentation.html#the-keyboard-element))
            - Added under-the-hood support for drop-down menus (sample developers, [see here](https://www.decentsamples.com/wp-content/uploads/2020/06/format-documentation.html#the-menu-element))

**1.3.13**

- 
    - 
        - 
            - Fixed a voice-muting bug that was breaking multi-group instruments with a polyphony of 1

**1.3.12**

- 
    - 
        - 
            - Added a publisher label to the sample store so that we can see which publisher made a sample library

**1.3.11**

- 
    - 
        - 
            - Added support for lowpass, bandpass, and highness filters

**1.3.10**

- 
    - 
        - 
            - Added support for different ADSR curves. (Developers can find [more info here](https://www.decentsamples.com/wp-content/uploads/2020/06/format-documentation.html#the-sample-element)).
            - Changed default ADSR curve from linear to logarithmic

See [older release notes here](https://www.decentsamples.com/decent-sampler-release-notes/).