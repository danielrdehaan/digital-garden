---
base: "[[Digital Garden/Free Audio Resources/_Index.base]]"
URL: https://u-he.com/products/protoverb/
Image: uhe-protoverb-screenshot-fullui-1150x1033.jpg
Date Added: 2022-04-21 15:03:00
Tags:
  - audio-effect
  - reverb
🌟: false
Last Edited: 2022-04-21 16:36:00
created: 2026-01-20T11:13:11-06:00
modified: 2026-01-20T11:13:11-06:00
---


**Protoverb: prototype reverb**

A natural sounding reverb based on the concept of a room simulator. Protoverb is an experimental researchware plug-in, developed to aid our research. Download and use it for free.

![[uhe-protoverb-screenshot-fullui-1150x1033.jpg]]

The current version of Avid's toolkit for building **AAX** plug-ins is **not compatible** with the Apple SDK needed to build plug-ins for Apple's new ARM/M1 processors. We are therefore not able to provide updated AAX versions on macOS, neither for Intel CPUs, nor for Apple M1. If you're a Pro Tools user on macOS, please continue using the [previous version of Protoverb](https://dl.u-he.com/release-archive/protoverb/Protoverb_1_0_Mac.zip) for the time being. Once the AAX toolkit supports Apple's M1 processor architecture, we will provide new AAX versions for macOS, with support for Big Sur and both Intel and Apple M1 CPUs.

## Sights and sounds

- Audio Demos
- Screenshots

## Feel it in the air

## What is Protoverb?

Protoverb is an experimental room simulator reverb. Most algorithmic reverbs try to avoid resonances or model the reflections of sound from a room’s walls. Protoverb does the opposite. It builds up as many room resonances as possible, modelling the body of air in the room. No need to modulate or colour the signal. The result is a very natural sounding reverberation with interesting characteristics:

- Notes held for a longer time tend to build up resonance, as if the air takes a while to get excited
- Multiple instruments remain distinct, without disappearing in a wash
- When you play a short melody, the room seems to repeat a ghost echo of that melody

These properties are found in churches and large halls, but are rarely in conventional algorithmic reverbs.

To achieve this, Protoverb works with many parallel, serial and networked delays. With such a structure, no mathematical formula can make it sound right, it is down to trial and error (and luck) using random values. Protoverb generates random delay line lengths, networks and feedback strategies. If you are lucky you will find a great setting, which [you can send to us](https://u-he.com/products/protoverb/protoverb-submit.html).

## Random

The text box at the bottom of Protoverb’s interface contains a text string made up of two random parts. The first half dictates the network structure, strategies for spatial layout and distribution of delay taps, strategies for finding useful delay lengths and so on. The second half is a seed for a pseudo-random number generator—used to set various parameters such as the average delay length, which prime number to choose (if any) etcetera.

You can either edit the text, or randomise each part independently using the buttons below the text box.

![[uhe-protoverb-animation-randomstrings.gif]]

Random strings in Protoverb

## Free

We call Protoverb researchware, because it is free and an attempt at data mining. Instead of spending months researching and testing ourselves, we hope that our community will come up with great settings. We encourage people to share their settings and thoughts with us and each other.

![[uhe-protoverb-logo-med.png]]

- **About Linux:** Please be aware the Linux versions of our plug-ins are still considered beta. While the plug-ins are stable, we are not able to provide the same level of support for these products as we do for the macOS and Windows versions. Support is provided via the Linux and u-he communities [on our forum](http://www.kvraudio.com/forum/viewforum.php?f=31) .

Mac OS X 10.9 or newer
 or
  Windows 7 or newer
  or
  Linux

- Host software / DAW
- 1GB RAM, more recommended
- 50MB free disk space
- 1000 × 600 or larger display
- Modern CPU required: **Windows**/**Linux**: Intel Nehalem or newer, AMD Bulldozer or newer **Mac**: Intel Nehalem or newer, Apple M1
- Linux: glibc version 2.28 or newer

Protoverb is **not a standalone product**, it requires host software. Protoverb is compatible with nearly all DAWs.

**macOS:**
 AUv2, VST2, VST3, 64-bit only
temporarily no AAX ([read more](https://u-he.com/products/protoverb/))

**Windows:**
 VST2, VST3, AAX*
32-/64-bit

Try the [ latest builds of Protoverb](https://dl.u-he.com/latest-builds/protoverb), which include improvements and bug fixes. **Note:** these are stable, but still beta versions.

Older Protoverb installers are in our [release archive](https://dl.u-he.com/release-archive/protoverb) (for legacy systems).