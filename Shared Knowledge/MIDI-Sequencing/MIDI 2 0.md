---
title: MIDI 2 0
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/midi"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.594300
---

# MIDI 2.0

![](https://youtu.be/klun6WMxryU)

# MIDI Basics:

- MIDI (Music Instrument Digital Interface
- MIDI 1.0
    - One Directional Data
    - Data Range: 0-127 (7-bit resolution)
    - 127 Notes, 127 controllers
    - No exchange of profile/property information (MIDI 1.0 devices are “blind”)
- MIDI 2.0 Overview
    - Bi-Directional Data
    - Higher Resolution, More Controllers, and Better Timing
        - Data Range: 0-4,294,967,296 (32-bit resolution)
        - 32,000 controllers (CCs)
    - Device Profile Configuration & Property Exchange
        - Enables devices to...
            - report/request the purpose/functionality of/to other devices
            - get/set all the various parameters and parameter ranges of a MIDI 2.0 device
        - this will enable the state of MIDI 2.0 devices (e.g. hardware synthesize) to be saved/recalled with a DAW project

# MIDI MPE (MIDI Polyphonic Expression)

- Adopted by MMA (MIDI Manufacturers Association) in 2018
- Organize each point of contact on its own MIDI channel
    - Ch1 = Global Controlls
    - Ch2-15 = each point of contact/note