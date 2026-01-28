---
canvas_title: "Week-05: Building Sample Instruments II"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-21T16:00:42-06:00
canvas_page_url: week-05-building-sample-instruments-ii
---

## Overview

Building on last week's introduction, we'll explore advanced sampling techniques including velocity layers, round-robin variations, effects processing, and creative sample manipulation. We'll also discuss how to package and distribute your instruments.

## Learning Objectives

By the end of this session, students will be able to:

- Implement velocity layers for dynamic expression
- Create round-robin variations to avoid machine-gun effect
- Add effects processing within Decent Sampler
- Package instruments for distribution

## Topics Covered

### Advanced Mapping Techniques

**Velocity Layers**
- Why velocity matters for realism
- Recording multiple velocity layers
- Mapping velocity ranges
- Crossfading between layers

**Round-Robin Variations**
- What round-robin achieves
- Recording multiple takes
- Implementing RR in Decent Sampler
- `seqMode` and `seqPosition` attributes

### Effects Processing

**Built-in Effects**
- Filter (low-pass, high-pass, band-pass)
- Reverb
- Chorus
- Delay
- Convolution

**Effect Implementation**
```xml
<effects>
  <effect type="lowpass" frequency="8000" resonance="0.5"/>
  <effect type="reverb" wetLevel="0.3"/>
</effects>
```

**Modulation and Bindings**
- Connecting UI controls to effects
- MIDI CC control
- Velocity modulation
- Key tracking

### Creative Sampling

**Non-Traditional Sources**
- Found sounds and objects
- Processed/mangled samples
- Granular textures
- Layered composite instruments

**Processing Techniques**
- Extreme time-stretching
- Pitch manipulation
- Convolution with unusual IRs
- Layering and stacking

### UI Design

**Control Elements**
- Knobs and sliders
- Buttons and switches
- Labels and text
- Custom graphics (images)

**Binding Controls to Parameters**
```xml
<labeled-knob x="120" y="20" width="90" label="Cutoff"
  type="float" minValue="200" maxValue="20000" value="8000">
  <binding type="effect" level="instrument"
    effectIndex="0" parameter="FX_FILTER_FREQUENCY"/>
</labeled-knob>
```

### Packaging and Distribution

**Folder Structure**
```
MyInstrument/
├── samples/
│   ├── C3_v1.wav
│   ├── C3_v2.wav
│   └── ...
├── images/
│   └── background.png
└── MyInstrument.dspreset
```

**Distribution Options**
- Pianobook community
- Personal website
- Gumroad/itch.io
- Including documentation

## Resources

- [Decent Sampler Developer Documentation](https://www.decentsamples.com/decent-sampler-developer-resources/)
- [Pianobook](https://www.pianobook.co.uk/) - Community instrument library
- [[Decent Sampler CCC_C-Piano]]
- [[Kontakt Building the CCC-C Piano]]

## In-Class Activity

**Enhancing Your Sample Instrument**

**Part 1: Velocity Layers (25 min)**

Add dynamic response to your instrument:

1. If you have multi-velocity samples, organize them:
   - `Piano_C3_p.wav` (piano/soft)
   - `Piano_C3_mf.wav` (mezzo-forte)
   - `Piano_C3_f.wav` (forte/loud)

2. Map with velocity ranges:
```xml
<group name="soft" loVel="1" hiVel="50">
  <sample path="samples/C3_p.wav" rootNote="60" loNote="58" hiNote="62"/>
</group>
<group name="medium" loVel="51" hiVel="100">
  <sample path="samples/C3_mf.wav" rootNote="60" loNote="58" hiNote="62"/>
</group>
<group name="loud" loVel="101" hiVel="127">
  <sample path="samples/C3_f.wav" rootNote="60" loNote="58" hiNote="62"/>
</group>
```

3. Test velocity response
4. Adjust ranges for natural feel

**Part 2: Round-Robin Setup (20 min)**

Add variation to repeated notes:

1. Add `seqMode` to your group:
```xml
<group seqMode="round_robin">
  <sample path="samples/C3_rr1.wav" rootNote="60" seqPosition="1"/>
  <sample path="samples/C3_rr2.wav" rootNote="60" seqPosition="2"/>
  <sample path="samples/C3_rr3.wav" rootNote="60" seqPosition="3"/>
</group>
```

2. Test by repeatedly playing the same note
3. Listen for natural variation

**Part 3: Effects Chain (20 min)**

Add character with effects:

1. Add an effects section:
```xml
<effects>
  <effect type="lowpass" frequency="12000" resonance="0.3"/>
  <effect type="reverb" wetLevel="0.25" roomSize="0.6"/>
</effects>
```

2. Create UI controls for effects:
```xml
<labeled-knob x="200" y="20" width="90" label="Reverb"
  type="float" minValue="0" maxValue="1" value="0.25">
  <binding type="effect" level="instrument"
    effectIndex="1" parameter="FX_REVERB_WET_LEVEL"/>
</labeled-knob>
```

3. Test and adjust to taste

**Part 4: Finishing Touches (15 min)**

1. Add instrument name and info:
```xml
<ui width="812" height="375" bgImage="images/background.png">
  <label x="20" y="340" width="200" text="My Custom Instrument"/>
```

2. Fine-tune all parameters
3. Test across different octaves and velocities
4. Create a simple background image (optional)

**Part 5: Packaging (10 min)**

1. Organize all files in proper folder structure
2. Create a README.txt with:
   - Instrument name and description
   - Your name/credit
   - Usage notes
3. Zip the folder for distribution

**Deliverable:**
Completed Decent Sampler instrument with velocity layers OR round-robin, effects, and UI controls.

**Discussion:**
What other sounds or instruments would you like to sample? How might you use custom instruments in your MUSC 231 projects?
