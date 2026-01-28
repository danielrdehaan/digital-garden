---
canvas_title: "Week-12: FMOD Mixing and Integration"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-23T10:17:35-06:00
canvas_page_url: week-12-fmod-mixing-and-integration
---

## Overview

This week covers FMOD's mixing capabilities—buses, effects, and snapshots—and introduces Unity integration basics. You'll learn to create professional mixes in FMOD and understand how your audio projects connect to game engines.

## Learning Objectives

By the end of this session, students will be able to:

- Create and configure a bus hierarchy for organized mixing
- Apply and automate effects on buses and events
- Use snapshots to create mix states (pause menu, underwater, etc.)
- Set up the FMOD-Unity integration and trigger events from scripts

## Topics Covered

### Bus Architecture

- Master bus and group buses
- Creating a mix hierarchy (Music, SFX, Ambience, UI, Voice)
- Routing events to buses
- VCAs for grouped volume control

### Effects in FMOD

- Event-level vs. bus-level effects
- Reverb sends and returns
- Compression and limiting
- EQ and filtering
- Sidechain compression
- Third-party plugin support (VST)

### Snapshots

- What snapshots are (mix states)
- Creating snapshots
- Snapshot intensity (blending)
- Common snapshot uses:
  - Pause menu (duck everything but UI)
  - Underwater (low-pass, reverb)
  - Tension (boost bass, reduce ambience)
  - Focus/cutscene states

### Loudness and Metering

- FMOD's loudness meter
- Target loudness levels (-18 to -14 LUFS typical)
- Headroom management
- Limiter on master bus

### Unity Integration Basics

**Setup**
- Installing FMOD for Unity plugin
- Linking FMOD project to Unity
- Bank loading and initialization
- Studio Listener component

**Playing Events**
- FMOD Event Emitter component
- One-shot events vs. persistent events
- 3D positioning basics

**Scripting Basics**
- Creating event instances from code
- Setting parameters via script
- Starting/stopping events
- Releasing event instances

## Resources

- [FMOD Mixer Documentation](https://www.fmod.com/docs/2.02/studio/mixing.html)
- [FMOD Unity Integration Guide](https://www.fmod.com/docs/2.02/unity/)
- [[FMOD Survival Shooter Unity Integration]]
- [[Basic Audio Scripting in Unity with C#]]

## In-Class Activity

**FMOD Mixing and Unity Setup**

**Part 1: Bus Setup (20 min)**

1. Create the following bus hierarchy:
   ```
   Master
   ├── Music
   ├── SFX
   │   ├── Player
   │   └── Environment
   ├── Ambience
   ├── UI
   └── Voice
   ```
2. Route your existing events to appropriate buses
3. Set initial levels

**Part 2: Effects Chain (20 min)**

1. Add a reverb send on the SFX bus
2. Add subtle compression to the Master bus
3. Add a limiter on Master (ceiling: -1dB)
4. Create a "Radio" effect chain on an event:
   - High-pass filter (300Hz)
   - Low-pass filter (3kHz)
   - Distortion (light)

**Part 3: Snapshot Creation (20 min)**

Create these snapshots:

1. **Pause_Menu**
   - Music: -10dB
   - SFX: Muted
   - Ambience: Muted
   - UI: 0dB

2. **Underwater**
   - Add low-pass filter to Master (800Hz cutoff)
   - Increase reverb send

**Part 4: Unity Integration (30 min)**

1. **Project Setup**
   - Create new Unity project (or use provided template)
   - Install FMOD for Unity package
   - Link your FMOD project
   - Add Studio Listener to Main Camera

2. **Basic Event Playback**
   - Add FMOD Event Emitter to a game object
   - Select one of your events
   - Configure playback settings (Play on Start, etc.)
   - Test in Play mode

3. **Scripted Playback**

```csharp
using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class SimpleAudioTrigger : MonoBehaviour
{
    [SerializeField] private EventReference soundEvent;

    public void PlaySound()
    {
        RuntimeManager.PlayOneShot(soundEvent, transform.position);
    }

    // For UI buttons or key press
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            PlaySound();
        }
    }
}
```

4. Test triggering events with key presses

**Discussion:**
What other applications beyond games might benefit from middleware-style audio integration?
