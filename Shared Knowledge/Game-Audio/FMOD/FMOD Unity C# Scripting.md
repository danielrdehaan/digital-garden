---
title: FMOD Unity C# Scripting
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/game-audio/fmod"
  - "#topic/game-audio/unity"
  - "#technique/scripting"
created: 2026-01-19T15:58:15-06:00
modified: 2026-02-18T08:27:55-06:00
canvas_page_url: fmod-unity-c-number-scripting-5
---

# FMOD: Unity C# Scripting

[Video Tutorial Script](FMOD%20Unity%20C#%20Scripting/Video%20Tutorial%20Script%20cbef131f21734f50aa66d846f6afdad5.md)

# Scripting Basics

## FMOD Namespace

Any script that references FMOD needs to declare that it is using FMOD at the top of the script.

```csharp
using FMODUnity;
```

## Referencing FMOD Events

Add the following line of code to any script to create a public FMOD event reference variable

![CleanShot 2024-04-24 at 14.43.55@2x.png](FMOD%20Unity%20C#%20Scripting/CleanShot_2024-04-24_at_14.43.552x.png)

```csharp
[SerializeField] // Show this variable in Unity's Inspector panel
private EventReference myFmodEvent;  // FMOD Event Reference
```

## Triggering FMOD Events from a script

The following line of code is used to trigger an FMOD event from within a script.

```csharp
RuntimeManager.PlayOneShot(myFmodEvent);
```

## Triggering FMOD Events via Animations

1. Add the following script to the desired game object.
    
    ```csharp
    using System.Linq;
    using UnityEngine;
    using FMODUnity;
    
    public class FMODAnimationEventTriggers : MonoBehaviour
    {
        [System.Serializable]
        public struct AnimationEventTriggers
        {
            public string eventName;
            public EventReference fmodEvent;
        }
    
        public AnimationEventTriggers[] animationEventTiggerPairs;
    
        public void FMODAnimationEventTrigger(string eventString)
        {
            AnimationEventTriggers evt = animationEventTiggerPairs.FirstOrDefault(e => e.eventName == eventString);
    
            // If the FMOD event is not null, play the FMOD event
            if (evt.fmodEvent.IsNull == false) // FMOD event is valid, play it
            {
                var instance = RuntimeManager.CreateInstance(evt.fmodEvent);
                instance.set3DAttributes(FMODUnity.RuntimeUtils.To3DAttributes(gameObject));
                instance.start();
                instance.release();
            }
        }
    
    }
    ```
    
1. Add all FMOD events and assign a unique string to each event.
2. Add an event to the animation timeline.
3. Call the `FMODAnimationEventTrigger` function and pass it the same string as given to the corresponding FMOD event on the script.
4. Target the game object that is being animated and that the FMOD event should originate from.

## Controlling FMOD Parameters via Sliders in Unity

```csharp
using UnityEngine;
using UnityEngine.UI;
using FMODUnity;

public class FMODSliderParameterControl : MonoBehaviour
{
    // A struct to hold the slider and its corresponding FMOD parameter name.
    [System.Serializable]
    public struct SliderParameterPair
    {
        public Slider soundSlider;
        public string fmodParameterName;
    }

    // Array of SliderParameterPair - each element represents a slider and its corresponding FMOD parameter.
    public SliderParameterPair[] sliderParameterPairs;

    void Start()
    {
        // For each SliderParameterPair in the array, initialize the FMOD parameter and set up the listener for the slider's onValueChanged event.
        foreach (var pair in sliderParameterPairs)
        {
            // Initialize the FMOD parameter with the initial value of the Slider.
            RuntimeManager.StudioSystem.setParameterByName(pair.fmodParameterName, pair.soundSlider.value);

            // Setup the action to be performed whenever the Slider value changes.
            pair.soundSlider.onValueChanged.AddListener((value) => UpdateFMODParameterValue(value, pair.fmodParameterName));
        }
    }

    // A function to update the FMOD parameter value.
    void UpdateFMODParameterValue(float sliderValue, string parameterName)
    {
        RuntimeManager.StudioSystem.setParameterByName(parameterName, sliderValue);
    }
}
```

## Controlling an FMOD Parameter via a Toggle in Unity

```csharp
using UnityEngine;
using UnityEngine.UI;
using FMODUnity;

public class FMODToggleParameterControl : MonoBehaviour
{
    [System.Serializable]
    public struct ToggleParameterPair
    {
        public Toggle audioToggle;
        public string fmodParameterName;
    }

    public ToggleParameterPair[] toggleParameterPairs;

    void Start()
    {
        foreach (var pair in toggleParameterPairs)
        {
            // Initialize the FMOD parameter with the initial value of the Toggle.
            RuntimeManager.StudioSystem.setParameterByName(pair.fmodParameterName, pair.audioToggle.isOn ? 1.0f : 0.0f);

            // Setup the action to be performed whenever the Toggle value changes.
            pair.audioToggle.onValueChanged.AddListener((value) => UpdateFMODParameterValue(value, pair.fmodParameterName));
        }
    }

    // A function to update the FMOD parameter value.
    void UpdateFMODParameterValue(bool toggleValue, string parameterName)
    {
        // Set FMOD parameter to 1 if Toggle is on, and 0 if off.
        RuntimeManager.StudioSystem.setParameterByName(parameterName, toggleValue ? 1.0f : 0.0f);
    }
}
```