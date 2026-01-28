---
canvas_title: "Week-11: Introduction to FMOD"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-21T16:07:37-06:00
canvas_page_url: week-11-introduction-to-fmod
---

## Overview

This week introduces FMOD Studio, an industry-standard audio middleware used in games like Celeste, Hades, and many AAA titles. We'll explore the FMOD interface, understand the event-based workflow, create multi-instrument events, and learn to use parameters for adaptive audio. Understanding middleware concepts is increasingly relevant for composers working in interactive and immersive media.

## Learning Objectives

By the end of this session, students will be able to:

- Navigate the FMOD Studio interface and workspace
- Explain the difference between Events, Banks, and the Mixer
- Create Single and Multi-instrument events with randomization
- Use continuous and discrete parameters to control audio behavior
- Build and export banks for game integration

## Topics Covered

### Why FMOD?

- Separation of audio design from game code
- Real-time iteration without rebuilding
- Advanced features: parameters, snapshots, 3D positioning
- Industry adoption and career relevance
- Concepts transferable to other middleware (Wwise)

### FMOD Interface Overview

- Events browser
- Audio Bin
- Event Editor
- Mixer
- Profiler (preview)
- Banks tab

### Core Concepts

- Events: Containers for audio assets and logic
- Banks: Compiled packages for game integration
- Master Bus: Final output routing
- Parameters: Variables that control audio behavior

### Event Types and Instruments

- Single Instrument: One sound
- Multi Instrument: Random selection from pool
- Scatterer Instrument: Random timing (ambience)
- Playlist vs. Probability selection

### Parameters

**Parameter Types**
- Continuous parameters (0-100, distance, etc.)
- Discrete/Labeled parameters (states like "Combat", "Explore")
- Built-in parameters (Distance, Direction, Speed)
- Local vs. Global parameters

**Using Parameters**
- Adding parameters to events
- Parameter sheets for instrument selection
- Automating volume, pitch, and effects
- Creating adaptive audio behaviors

### Creating Events

- Importing audio to Audio Bin
- Creating new events
- Adding instruments to timeline
- Trigger regions and logic

### Building Banks

- Assigning events to banks
- Building all banks
- Bank organization strategies

## Resources

- [FMOD Studio Download](https://www.fmod.com/download)
- [FMOD Learning Resources](https://www.fmod.com/learn)
- [FMOD YouTube Channel](https://www.youtube.com/@FMODSoundSystem)
- [[FMOD Survival Shooter Unity Integration]]

## In-Class Activity

**FMOD First Steps**

**Part 1: Project Setup (15 min)**
1. Download and install FMOD Studio
2. Create a new project
3. Explore the interface - locate each window

**Part 2: Import Assets (15 min)**
1. Import sound design elements from earlier weeks
2. Organize assets in the Audio Bin with folders
3. Create logical folder structure (UI, SFX, Music, Ambience)

**Part 3: Create Basic Events (30 min)**

Create the following events:

1. **UI_ButtonClick** (Multi Instrument)
   - Add button click variations
   - Set to Playlist mode with No Repeat
   - Add subtle pitch randomization (+/- 2 semitones)

2. **SFX_Impact** (Multi Instrument)
   - Add impact sound variations
   - Test randomization behavior
   - Experiment with volume randomization

3. **SFX_Transition** (Single Instrument)
   - Add a riser or transition sound
   - Add volume envelope
   - Experiment with timeline markers

**Part 4: Parameter-Driven Event (20 min)**

Create an event with parameter control:

1. **Ambience_Room** (Multi Instrument with Parameter Sheet)
   - Create continuous parameter "RoomSize" (0-100)
   - Add three ambience variations:
     - Small room (0-33)
     - Medium room (33-66)
     - Large hall (66-100)
   - Add crossfade overlap between layers
   - Automate reverb send with parameter

**Part 5: Build Banks (10 min)**
1. Create a "Master" bank and a "SFX" bank
2. Assign events to appropriate banks
3. Build banks
4. Locate the built bank files

**Discussion:**
How might middleware concepts apply to other interactive or immersive media projects you're working on?
