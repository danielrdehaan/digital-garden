---
canvas_title: "Week-14: Spatial Audio and Optimization"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T15:00:00-06:00
modified: 2026-01-21T16:08:02-06:00
canvas_page_url: week-14-spatial-audio-and-optimization
---

# Week 14: Spatial Audio & Optimization

## Overview

This week explores spatial audio concepts in FMOD and Unity, covering 3D positioning, attenuation curves, and occlusion systems. We'll also discuss optimization techniques and the FMOD Profiler for debugging and performance analysis. These skills are essential for creating immersive audio in interactive media.

## Learning Objectives

By the end of this session, students will be able to:

- Configure FMOD's Spatializer plugin for 3D positioning
- Design custom attenuation curves for different sound types
- Implement basic occlusion for sounds behind obstacles
- Use the FMOD Profiler to debug audio issues and monitor performance
- Apply optimization strategies for efficient audio playback

## Topics Covered

### 3D Sound Fundamentals

- Audio Listener position (Studio Listener component)
- Sound source positioning in 3D space
- Distance-based attenuation
- Panning and spatialization

### FMOD Spatializer

- Adding Spatializer effect to events
- Min/Max distance settings
- Attenuation curves:
  - Linear
  - Logarithmic (inverse square law)
  - Custom curves
- Envelopment (stereo width over distance)

### Attenuation Design

- Different curves for different purposes:
  - UI sounds: No attenuation (2D)
  - Footsteps: Moderate range
  - Ambience: Large range, gentle falloff
  - Voice: Medium range, clear falloff

### Occlusion

- What occlusion simulates (walls blocking sound)
- Built-in vs. scripted occlusion
- FMOD's occlusion parameter
- Raycast-based occlusion detection
- Low-pass filtering for occluded sounds

### Optimization Techniques

**Memory Management**
- Bank loading strategies (load on demand vs. preload)
- Compressed vs. uncompressed audio
- Streaming vs. sample data
- Sample rate considerations

**CPU Optimization**
- Voice limiting and stealing
- Effect processing costs
- When to use 2D vs. 3D
- Distance-based culling

**Best Practices**
- Organizing banks by usage patterns
- Using virtual voices effectively
- Monitoring with the Profiler
- Testing on target hardware

### FMOD Profiler

- Real-time monitoring
- 3D visualization
- Voice count tracking
- CPU and memory usage
- Identifying performance issues

## Resources

- [FMOD 3D Events Documentation](https://www.fmod.com/docs/2.02/studio/3d-events.html)
- [FMOD Profiler Documentation](https://www.fmod.com/docs/2.02/studio/profiler.html)
- [Game Audio Optimization Guide](https://www.fmod.com/docs/2.02/studio/optimization.html)

## In-Class Activity

**Spatial Audio Implementation & Optimization**

**Part 1: Spatializer Setup (20 min)**

Configure 3D audio for your events:

1. Open an SFX event in FMOD
2. Add the Spatializer effect to the Master track
3. Set Min Distance: 1m, Max Distance: 20m
4. Choose Logarithmic attenuation
5. Adjust Envelopment:
   - Near: Stereo spread
   - Far: More mono
6. Build banks and test in Unity

**Part 2: Custom Attenuation Curves (20 min)**

Design appropriate curves for different sounds:

1. **Close-range Sound** (footsteps, UI)
   - Min: 0.5m, Max: 5m
   - Linear falloff

2. **Medium-range Sound** (dialogue, interactions)
   - Min: 1m, Max: 15m
   - Logarithmic

3. **Long-range Sound** (ambience, explosions)
   - Min: 10m, Max: 100m
   - Custom curve (gentle start, faster falloff)

**Part 3: Basic Occlusion (25 min)**

Implement raycast-based occlusion:

```csharp
using UnityEngine;
using FMODUnity;
using FMOD.Studio;

public class OccludedAudioSource : MonoBehaviour
{
    [SerializeField] private EventReference audioEvent;
    [SerializeField] private LayerMask occlusionLayers;
    private EventInstance instance;
    private Transform listener;

    void Start()
    {
        listener = FindObjectOfType<StudioListener>().transform;
        instance = RuntimeManager.CreateInstance(audioEvent);
        instance.set3DAttributes(RuntimeUtils.To3DAttributes(transform));
        instance.start();
    }

    void Update()
    {
        // Update 3D position
        instance.set3DAttributes(RuntimeUtils.To3DAttributes(transform));

        // Check for occlusion
        Vector3 direction = listener.position - transform.position;
        float distance = direction.magnitude;

        float occlusion = 0f;
        if (Physics.Raycast(transform.position, direction.normalized,
            distance, occlusionLayers))
        {
            occlusion = 1f; // Fully occluded
        }

        instance.setParameterByName("Occlusion", occlusion);
    }

    void OnDestroy()
    {
        instance.stop(FMOD.Studio.STOP_MODE.IMMEDIATE);
        instance.release();
    }
}
```

1. Add an "Occlusion" parameter to your event (0-1)
2. Automate a low-pass filter with this parameter
3. Implement the script
4. Test with walls between source and listener

**Part 4: Profiler Analysis (15 min)**

1. Open FMOD Profiler (FMOD > Open Profiler or Window > FMOD > Profiler)
2. Enter Play mode in Unity
3. Observe:
   - Active voice count
   - CPU usage
   - Memory allocation
   - 3D sound positions
4. Identify potential optimizations

**Part 5: Optimization Exercise (10 min)**

Apply one optimization to your project:
- Set up voice limiting on a frequently-triggered event
- Configure distance-based culling
- Change compression settings for large files
- Implement bank loading on demand

**Discussion:**
What spatial audio challenges might you encounter in different types of projects (VR, mobile, open-world games)?
