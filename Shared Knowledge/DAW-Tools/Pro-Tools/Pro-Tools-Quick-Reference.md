---
title: Pro Tools Introduction
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/pro-tools"
  - "#topic/media-composition"
created: 2026-01-28T20:35:07-06:00
modified: 2026-01-28T21:02:53-06:00
canvas_page_url: pro-tools-introduction
---

# Pro Tools Introduction
### A Hands-On Guide for Media Composers

---

## First 10 Minutes: Get Audio Playing

1. **Launch Pro Tools** → Splash page appears
2. **Create New Session:**
   - Name your session (this creates your project folder)
   - Set location to an **external drive** (not your OS drive)
   - Session Config: **24-bit / 48 kHz BWAV** *(industry standard for broadcast/film)*
   - I/O Settings: **Stereo Mix**
   - Check **Interleaved**
   - Click **Create**
3. **Set Playback Engine** (Setup → Playback Engine):
   - Select your audio interface or built-in output
   - *Mac users: Choose "MacBook Headphones" if using headphones*
4. **Create an Audio Track:** `⌘ ⇧ N` → Stereo → Audio Track → Create
5. **Import audio:** File → Import → Audio, or drag from Finder into the track

> **Try this now:** Create a session, import a piece of music, and press `Spacebar` to play

---

## Why These Settings Matter for Media Work

| Setting | Why It Matters |
|---------|----------------|
| **24-bit / 48 kHz** | Broadcast and film delivery standard; matches video frame rates |
| **BWAV format** | Embeds timecode stamps—essential for spotting audio to picture |
| **External drive** | Prevents system slowdowns; audio streaming needs fast, dedicated storage |
| **Interleaved** | Keeps stereo files as single files (L+R together) for easier management |

---

## The Two Windows You'll Live In

Press `⌘ =` to toggle between them. Layer them on top of each other and flip back and forth.

### Edit Window
Your **timeline view**—where you see and edit audio/MIDI/video visually.

- **Toolbar** (top): Edit modes, tools, transport, tempo
- **Universe** (below toolbar): Birds-eye view of entire session
- **Tracks/Groups** (left column): Track list
- **Clip Bin** (right column): All audio files in your session
- **Center**: Your timeline with waveforms

> **Recommended display:** I/O, Track Color, Marker Controls

### Mix Window
Your **console view**—for adding effects, balancing levels, and panning.

- **Inserts**: 2 banks × 5 slots = 10 plugins per track (signal flows top → bottom)
- **Sends**: Route audio to effects returns or headphone mixes
- **Faders & Pan**: Level and stereo positioning

> **Recommended display:** Inserts, Sends, EQ Curve, Meters/Faders, I/O, Delay Compensation

---

## Track Types for Media Composers

| Type | What It Does | When to Use It |
|------|--------------|----------------|
| **Audio** | Records/plays audio with waveform | Recorded instruments, imported stems, sound design |
| **Aux** | Routes audio through (no clips live here) | Effects returns, submixes (e.g., "All Strings" bus) |
| **Instrument** | MIDI + virtual instrument combined | Virtual instruments, soft synths |
| **MIDI** | MIDI data only (no audio) | When routing multiple MIDI parts to one instrument |
| **Master** | Output volume control | Final output level (but see note below) |

> **Pro tip:** For your main output, use a stereo **Aux track** as your master bus instead of a Master Fader. Master Fader inserts are post-fader, which causes issues with processing during fades.

**Create tracks:** `⌘ ⇧ N`
**Rename tracks:** Double-click the name. *Do this before recording—the track name becomes the audio file name.*

---

## Working to Picture

### Video Engine
- **Setup → Playback Engine → Video Engine**: Enable when working with video
- Importing a video file turns this on automatically
- Turn OFF when not using video (frees up processing power)

### Spot Mode for Scoring
This is how you place audio at exact timecode locations:

1. Press `F4` or click **Spot** in the edit modes
2. Click any audio clip
3. A dialog appears—type the exact timecode where you want it
4. BWAV files can be placed at their **original timestamp** automatically

> **Try this now:** Import a BWAV file, switch to Spot mode, and click it to see the timecode dialog

---

## Edit Modes (F1–F4)

| Mode | What Happens | Best For |
|------|--------------|----------|
| **Slip** (F1) | Free movement, no restrictions | General editing, fine adjustments |
| **Grid** (F2) | Snaps to tempo grid | Music editing, rhythmic alignment |
| **Shuffle** (F3) | Clips snap to adjacent clip edges | Dialogue editing, removing gaps |
| **Spot** (F4) | Type exact timecode placement | Scoring to picture, placing cues |

**Grid has two sub-modes:**
- *Absolute*: Clip start lands exactly on grid line
- *Relative*: Clip moves by grid increments but keeps its offset (use this for pickups/anticipations)

---

## Edit Tools (F5–F10)

| Tool | What It Does |
|------|--------------|
| **Zoom** (F5) | Drag to zoom into area; double-click to see full session |
| **Trim** (F6) | Adjust clip boundaries (start/end) |
| **Selector** (F7) | Make timeline selections |
| **Grabber** (F8) | Move clips around |
| **Scrub** (F9) | Drag across audio to hear it |
| **Pencil** (F10) | Draw automation or repair waveforms |

### The Multi-Tool (Most Efficient)
Combines tools based on cursor position:
- **Above center line** → Selector
- **Below center line** → Grabber
- **At clip edges** → Trim
- **Upper corners** → Fade in/out
- **Where clips meet (bottom)** → Crossfade

> **Lock your tools:** Options → Edit/Tool Mode Keyboard Lock (prevents accidentally cycling through tool variants when pressing F-keys)

---

## Session Organization for Media Work

### Suggested Track Color Coding
| Color | Stem Type |
|-------|-----------|
| Blue | Dialogue |
| Green | Music |
| Orange/Red | Sound Effects |
| Purple | Foley |
| Yellow | Ambience/Backgrounds |

### Naming Conventions
Use clear, consistent names that make sense in a stem delivery:
- `MX_Strings_01` (Music - Strings - Cue 1)
- `DX_Character_Name`
- `FX_Explosion_Big`

---

## Playback Engine & Buffer Settings

**Setup → Playback Engine**

| Setting | Recording | Editing/Mixing |
|---------|-----------|----------------|
| **HW Buffer** | 128 samples (low latency) | 512–1024 samples (more processing power) |

> **Mac headphone warning:** If you unplug headphones while Pro Tools is open with "MacBook Headphones" selected, Pro Tools will crash. Switch playback engine *before* unplugging.

---

## Common First-Day Problems

| Problem | Solution |
|---------|----------|
| No sound | Check Playback Engine (Setup menu) → correct output selected? |
| Audio clicks/pops | Increase HW Buffer size |
| Can't hear while recording | Click the **I** (Input Monitor) button on the track |
| Track won't record | Click the **R** (Record Enable) button; check input assignment |
| Clips won't move freely | Check Edit Mode—you're probably in Grid or Shuffle |
| Pro Tools quit unexpectedly | Unplugged headphones? See warning above |

---

## Essential Shortcuts

| Action | Shortcut |
|--------|----------|
| Play / Stop | `Spacebar` |
| Record | `⌘ Spacebar` (with track record-enabled) |
| New Track | `⌘ ⇧ N` |
| Toggle Edit/Mix Window | `⌘ =` |
| Undo | `⌘ Z` |
| Save | `⌘ S` |
| Zoom to Selection | `⌥ F` |
| Zoom to Full Session | Double-click Zoom tool |

---

## Exporting Your Work

When your cue is ready for delivery:

**File → Bounce to → Disk**
- Choose format (typically WAV or AIFF for media work)
- Match your session settings (24-bit / 48 kHz)
- Select whether to bounce the full timeline or just a selection

---

## What's Next

Topics for future sessions:
- Automation (volume, pan, plugin parameters)
- Advanced MIDI editing and virtual instruments
- Mixing techniques and plugin workflows
- Stem delivery and print masters
- Working with surround/immersive formats

---

*Pro Tools Introduction — Graduate Media Composition*
