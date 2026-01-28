---
canvas_title: "Week-04: Building Sample Instruments I"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-23T10:17:07-06:00
canvas_page_url: week-04-building-sample-instruments-i
---

## Overview

This week introduces sample-based instrument creation using Decent Sampler, a free and powerful sampler plugin. We'll learn the fundamentals of sample mapping, XML structure, and building a traditional instrument from recorded samples. This skill enables you to create custom instruments for your compositions and distribute them freely.

## Learning Objectives

By the end of this session, students will be able to:

- Explain the basic architecture of sample-based instruments
- Write and edit Decent Sampler XML preset files
- Map samples across the keyboard with appropriate zones
- Create a basic playable instrument from recorded samples

## Topics Covered

### Sample Instrument Fundamentals

**What is a Sampler?**
- Sample playback vs. synthesis
- Memory vs. CPU considerations
- When to use samples vs. synthesis
- Popular sampler formats (Kontakt, SFZ, Decent Sampler)

**Sample Organization**
- Naming conventions for samples
- Velocity layers
- Round-robin variations
- Key ranges and zones

### Introduction to Decent Sampler

**Why Decent Sampler?**
- Free and cross-platform
- Simple XML-based format
- Easy distribution
- Sufficient for many use cases

**Interface Overview**
- UI elements and controls
- Loading instruments
- Basic playback

### XML Structure Basics

**Preset File Structure**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<DecentSampler>
  <ui>
    <!-- UI elements go here -->
  </ui>
  <groups>
    <group>
      <sample path="samples/C3.wav" rootNote="60" loNote="58" hiNote="62"/>
      <!-- More samples -->
    </group>
  </groups>
</DecentSampler>
```

**Key Elements**
- `<DecentSampler>` - Root element
- `<ui>` - Interface controls
- `<groups>` - Sample organization
- `<sample>` - Individual sample definitions

### Sample Mapping

**Basic Mapping Parameters**
- `path` - File location
- `rootNote` - The original pitch of the sample
- `loNote` / `hiNote` - Key range
- `loVel` / `hiVel` - Velocity range
- `volume` - Sample volume adjustment

**Mapping Strategies**
- Chromatic sampling (every note)
- Interval sampling (every 3rd, 4th, etc.)
- Range-based mapping
- Velocity layer organization

### Recording Samples

**Preparation**
- Consistent recording environment
- Proper gain staging
- Multiple velocity layers
- Clean edits (start/end points)

**Processing Considerations**
- Normalization (per sample vs. group)
- Fade handling
- Loop points (for sustained sounds)
- Sample rate and bit depth

## Resources

- [Decent Sampler Plugin](https://www.decentsamples.com/product/decent-sampler-plugin/)
- [Decent Sampler Developer Documentation](https://www.decentsamples.com/decent-sampler-developer-resources/)
- [[Decent Sampler CCC_Tongue-Drum]]
- [[Kontakt Building the CCC-C Piano]]

## In-Class Activity

**Building Your First Sample Instrument**

**Part 1: Sample Preparation (20 min)**

Using provided samples (or record your own):

1. Organize samples in a logical folder structure
2. Name samples consistently: `InstrumentName_Note_Velocity.wav`
   - Example: `Piano_C3_mf.wav`, `Piano_C3_f.wav`
3. Verify all samples are:
   - Same sample rate (48kHz preferred)
   - Same bit depth (24-bit)
   - Cleanly trimmed

**Part 2: Basic XML Setup (25 min)**

Create your first Decent Sampler preset:

1. Create a new folder for your instrument
2. Create `preset.dspreset` file
3. Start with this template:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<DecentSampler>
  <ui width="812" height="375">
    <tab name="main">
      <labeled-knob x="20" y="20" width="90" label="Volume"
        type="float" minValue="0" maxValue="1" value="0.8">
        <binding type="amp" level="instrument" parameter="AMP_VOLUME"/>
      </labeled-knob>
    </tab>
  </ui>
  <groups>
    <group>
      <!-- Add your samples here -->
    </group>
  </groups>
</DecentSampler>
```

4. Add your first sample mapping

**Part 3: Complete Mapping (30 min)**

Map all samples across the keyboard:

1. Add each sample with appropriate parameters:
```xml
<sample path="samples/Piano_C3_mf.wav"
        rootNote="60"
        loNote="58"
        hiNote="62"
        loVel="1"
        hiVel="100"/>
```

2. Adjust `loNote` and `hiNote` to create zones
3. Test in Decent Sampler:
   - Load your preset
   - Play across the keyboard
   - Listen for pitch shifting artifacts
   - Adjust zone boundaries as needed

**Part 4: Basic Refinement (15 min)**

1. Adjust individual sample volumes if needed (`volume` attribute)
2. Add basic ADSR envelope:
```xml
<group attack="0.01" decay="0.5" sustain="0.8" release="0.3">
```
3. Test and adjust envelope to taste
4. Save your work

**Deliverable:**
Working Decent Sampler preset with at least 5 mapped samples.

**Preview:** Next week we'll add velocity layers, round-robin, and effects!
