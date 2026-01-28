---
canvas_title: "Week-13: Adaptive Music Systems"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-21T16:07:55-06:00
canvas_page_url: week-13-adaptive-music-systems
---

## Overview

This week explores adaptive music techniques using FMOD. We'll examine horizontal (sequential) and vertical (layered) music systems, learning how to compose and implement music that responds dynamically to user interaction or game states. These concepts apply to games, interactive installations, and other non-linear media.

## Learning Objectives

By the end of this session, students will be able to:

- Distinguish between horizontal and vertical adaptive music approaches
- Implement a horizontal music system with transitions in FMOD
- Create a vertical layering system controlled by parameters
- Design music that responds appropriately to interactive contexts

## Topics Covered

### Adaptive Music Concepts

- Linear vs. non-linear music
- Why interactive media needs adaptive music
- User agency and musical response
- Balancing musicality with interactivity

### Horizontal Music (Sequential)

- Music segments and regions
- Transition timelines
- Transition markers and quantization
- Musical endings (outros, stingers)
- Examples: combat → exploration transitions

### Vertical Music (Layered)

- Stem-based composition
- Adding/removing layers based on parameters
- Crossfading between intensity levels
- Mix considerations for layered stems
- Examples: increasing tension, building intensity

### Combining Approaches

- Horizontal segments with vertical layers
- State machines for complex systems
- When to use which approach

### Composition Considerations

- Tempo consistency
- Key and harmonic planning
- Loop points and seamless transitions
- Stem separation for mixing flexibility
- Composing for flexibility vs. composing for impact

## Resources

- [[Composing Horizontal and Vertical Music Part 1]]
- [[Composing Horizontal and Vertical Music Part 2]]
- [FMOD Music System Tutorial (YouTube)](https://www.youtube.com/results?search_query=fmod+adaptive+music+tutorial)

## In-Class Activity

**Building Adaptive Music Systems**

**Part 1: Vertical Layering System (35 min)**

Create an intensity-based music system:

1. **Prepare stems in your DAW:**
   - Base layer (drums/rhythm)
   - Middle layer (bass/chords)
   - Top layer (melody/lead)
   - All stems: same length, same tempo, same key
   - Export each as separate files

2. **Set up in FMOD:**
   - Create new event "Music_Adaptive"
   - Add continuous parameter "Intensity" (0-100)
   - Add three tracks (one per stem)
   - Place stems on timeline
   - Enable Loop region

3. **Configure layer volumes:**
   - Base: Always audible (automate 0 to -6dB over intensity)
   - Middle: Fade in 30-70 intensity
   - Top: Fade in 60-100 intensity
   - Use volume automation curves

4. **Test in FMOD:**
   - Move intensity slider
   - Listen for smooth transitions
   - Adjust curves as needed

**Part 2: Horizontal Transition System (30 min)**

Create a segment-based music system:

1. **Create segments:**
   - Calm segment (looping)
   - Intense segment (looping)
   - Transition: Calm → Intense (fill/build)
   - Transition: Intense → Calm (wind-down)

2. **Set up in FMOD:**
   - Create new event "Music_States"
   - Add discrete parameter "State" (Calm, Intense)
   - Create timeline regions for each segment
   - Place transition markers on beat boundaries

3. **Configure transitions:**
   - Set quantization (1 bar recommended)
   - Add transition timeline with musical fill
   - Test state changes

**Part 3: Unity Integration (20 min)**

Connect your adaptive music to gameplay:

```csharp
using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class AdaptiveMusicController : MonoBehaviour
{
    [SerializeField] private EventReference musicEvent;
    private EventInstance musicInstance;

    void Start()
    {
        musicInstance = RuntimeManager.CreateInstance(musicEvent);
        musicInstance.start();
    }

    public void SetIntensity(float value)
    {
        musicInstance.setParameterByName("Intensity", value);
    }

    public void SetState(string state)
    {
        musicInstance.setParameterByNameWithLabel("State", state);
    }

    void OnDestroy()
    {
        musicInstance.stop(FMOD.Studio.STOP_MODE.ALLOWFADEOUT);
        musicInstance.release();
    }
}
```

1. Implement the script
2. Test parameter changes using UI sliders or key presses
3. Observe musical transitions

**Discussion:**
How might you apply adaptive music concepts to your MUSC 231 projects? What about non-game contexts like theater, installations, or podcasts?
