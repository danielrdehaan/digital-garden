---
canvas_title: "Week-09: Stem Rendering and Asset Delivery"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-21T16:02:36-06:00
canvas_page_url: week-09-stem-rendering-and-asset-delivery
---

# Week 09: Stem Rendering & Asset Delivery

## Overview

Professional media composers must deliver audio in formats that meet client and industry specifications. This week covers stem rendering, file organization, naming conventions, and delivery specifications across different media types. These skills ensure your work can be properly integrated, edited, and mixed by collaborators downstream.

## Learning Objectives

By the end of this session, students will be able to:

- Explain what stems are and why they're essential for professional delivery
- Create properly organized stem exports from a DAW session
- Apply industry naming conventions for audio assets
- Prepare deliverables according to common industry specifications

## Topics Covered

### Understanding Stems

**What Are Stems?**
- Sub-mixes of related elements
- Grouped by category (strings, brass, percussion, etc.)
- Allow re-mixing, re-balancing, and editing
- Preserve creative intent while offering flexibility

**Why Stems Matter**
- Re-recording mixers need stems for film
- Game audio teams need stems for adaptive systems
- Music editors need stems for picture changes
- Clients may need alternate mixes

**Common Stem Configurations**

*Film/TV:*
- Music stem (full mix)
- Orchestra stem
- Synth/Electronic stem
- Percussion stem
- Solo instruments (if featured)

*Games:*
- Layers for adaptive systems
- Loops with head/tail
- Alternate intensity levels
- Stingers and transitions

### Naming Conventions

**Professional Naming Structure**
```
ProjectName_CueName_StemType_Version.wav
```

Examples:
- `MyFilm_M01_FullMix_V3.wav`
- `MyFilm_M01_Strings_V3.wav`
- `MyFilm_M01_Perc_V3.wav`
- `GameProject_Combat_LayerA_Loop.wav`

**Key Principles**
- No spaces (use underscores or camelCase)
- Include version numbers
- Be consistent across project
- Include timecode if relevant

**Metadata**
- Embed metadata in files when possible
- Include cue sheets for film/TV
- Document BPM for loops
- Note any special playback requirements

### Delivery Specifications

**Sample Rate and Bit Depth**
- Film/TV: Typically 48kHz/24-bit
- Broadcast: 48kHz/24-bit (some 96kHz)
- Games: 44.1kHz or 48kHz (platform dependent)
- Streaming: Varies (often 44.1kHz/16-bit final)

**Loudness Standards**
- Film dialogue norm: -27 LKFS (Dolby)
- Broadcast: -24 LKFS (EBU R128), -24 LKFS (ATSC A/85)
- Streaming: -14 LUFS (Spotify), -16 LUFS (Apple Music)
- Games: Typically -18 to -14 LUFS (varies)

**File Formats**
- Stems: WAV or AIFF (uncompressed)
- Final mixes: WAV, AIFF, or client-specified
- Previews: MP3 or AAC
- Games: Often OGG or proprietary formats

### Delivery Package Organization

**Folder Structure Example**
```
ProjectName_Delivery_V1/
├── Stems/
│   ├── M01_MainTitle/
│   │   ├── M01_FullMix_V1.wav
│   │   ├── M01_Orchestra_V1.wav
│   │   ├── M01_Synth_V1.wav
│   │   └── M01_Perc_V1.wav
│   └── M02_ActionCue/
│       └── ...
├── Mixes/
│   ├── M01_MainTitle_Mix_V1.wav
│   └── M02_ActionCue_Mix_V1.wav
├── Documentation/
│   ├── CueSheet.pdf
│   └── TechnicalSpecs.txt
└── README.txt
```

### Quality Control

**Before Delivery**
- Verify all files play correctly
- Check start/end points (no clicks, proper silence)
- Confirm stems sum to mix
- Verify naming is consistent
- Check loudness against specs

**Documentation**
- Cue sheet (cue names, timecodes, durations)
- Technical specs used
- Any special notes
- Contact information

## Resources

- [Netflix Sound Mix Specifications](https://partnerhelp.netflixstudios.com/)
- [Dolby Atmos Music Specifications](https://www.dolby.com/music/)
- [EBU R128 Loudness Guidelines](https://tech.ebu.ch/docs/r/r128.pdf)

> [!warning] Additional Resources Needed
> Add links to specific delivery specification documents.

## In-Class Activity

**Stem Rendering and Delivery Workshop**

**Part 1: Session Preparation (15 min)**

Using your mixed project from previous weeks:

1. **Organize tracks into stem groups**
   - Create bus/submix for each stem category
   - Route all relevant tracks to their bus
   - Verify solo'ing the bus plays only intended tracks

2. **Common stem groups:**
   - Full Mix (all elements)
   - Melodic/Lead
   - Harmonic (pads, chords)
   - Bass
   - Percussion/Drums
   - FX/Sound Design

**Part 2: Stem Export (25 min)**

Export stems following professional standards:

1. **Configure export settings**
   - Sample rate: 48kHz
   - Bit depth: 24-bit
   - Format: WAV
   - No normalization
   - Same start/end points for all stems

2. **Export each stem**
   - Solo the bus, export
   - Name according to convention
   - Repeat for all stems

3. **Export full mix**
   - All buses active
   - Same settings and length

4. **Verify stems sum**
   - Import stems into new session
   - Play simultaneously
   - Should match original mix

**Part 3: Loudness Check (15 min)**

Verify loudness against target:

1. **Measure your full mix**
   - Use loudness meter (LUFS)
   - Note integrated loudness
   - Note true peak

2. **Compare to spec**
   - Target: -16 LUFS (streaming standard)
   - True peak: -1 dBTP or lower

3. **Adjust if needed**
   - Use limiter on master to achieve target
   - Re-export if necessary

**Part 4: Package Organization (20 min)**

Create a professional delivery package:

1. **Create folder structure**
   ```
   YourName_Project_Delivery/
   ├── Stems/
   ├── Mixes/
   └── Documentation/
   ```

2. **Move files to appropriate folders**

3. **Create documentation**
   - README.txt with:
     - Project name
     - Your name and contact
     - Technical specs used
     - Contents list
   - Cue notes (duration, tempo, key)

4. **Final verification**
   - Play each file to verify
   - Check names are consistent
   - Verify folder structure is clean

**Part 5: Packaging (15 min)**

1. Zip the delivery folder
2. Name the zip appropriately
3. Verify the zip extracts correctly

**Deliverable:**
Complete delivery package with stems, mixes, and documentation.
