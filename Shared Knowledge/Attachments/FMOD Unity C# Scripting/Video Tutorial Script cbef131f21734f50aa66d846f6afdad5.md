---
created: 2026-01-19T15:58:24-06:00
modified: 2026-01-19T15:58:24-06:00
---
# Video Tutorial Script

# `Introduction`

Hello! Welcome to a brief video on how to use three custom scripts I designed for easily controlling FMOD events and parameters within Unity. I created these tools to be focused yet adaptable to simplify audio implementation across various projects, saving time and enhancing workflow.

In this video, the spotlight is on scripts crafted for triggering sounds through animations, and adjusting sound parameters with UI sliders, toggles, and buttons. Each script is developed to be a reusable component, enabling quick and efficient integration of sophisticated audio controls in any game or interactive application.

By the end of this tutorial, you'll have a clear understanding of how to apply these scripts to improve audio management, making the process smoother and your projects more dynamic. Let’s dive in and explore how these tools can streamline your audio setup and make your work more intuitive.

This video assumes that you are working with existing Unity project that you a have already connected to an FMOD project with all the necessary events and parameters.

# `FMODAnimationEventTriggers`

Let's first look at the "FMODAnimationEventTriggers" script. This script is designed to make triggering sounds in FMOD simple via animation events. Here is an example where I want to trigger a sound each time the player takes a step.

1. **Add the Script to the Player's GameObject**:
    - Start by adding the `FMODAnimationEventTriggers` script component to the Player GameObject in Unity.
2. **Configure the Script in the Inspector**:
    - In the Inspector, you'll see the `AnimationEventTriggerPairs` array. Click on the plus button to add a new element to this list.
    - For each element:
        - Enter "Step" as the event name.
        - Use the magnifying glass icon to locate and select the desired FMOD event.
3. **Set Up Animation Events**:
    - Open up the Player's prefab and navigate to the Animator or Animation window (depending on your setup).
    - Select the Move animation and scrub through the animation timeline to find the moment you want the FMOD sound to be triggered.
    - Under Events in the Animation window, click the plus button to add a new event at the specific frame.
    - Enter "FMODAnimationEventTrigger" as the function name and "Step" as the parameter. Ensure this event is associated with the GameObject that has the `FMODAnimationEventTriggers` script.
4. **Duplicate the Event for Other Steps**:
    - Move forward to the next relevant moment within the animation.
    - Click to add a new event and fill in the same details as the previous event.
5. **Test the Implementation**:
    - Play your scene in Unity. As the player moves, listen for the sound to trigger at each step, verifying that the FMOD events are properly connected to the animation events.

This setup demonstrates how to use the `FMODAnimationEventTriggers` script to trigger sounds at specific moments in an animation, enhancing the audio experience in your game.

# `FMODButtonEventControl`

Now, let's add audio feedback to UI buttons using the `FMODButtonEventControl` script. This script allows you to easily assign FMOD audio events to button hover and click actions, enriching the user interface with dynamic sound effects.

1. **Add the Script to a GameObject**:
    - First, find or create a GameObject in your Unity scene to manage button audio interactions. This could be a UI manager or the canvas itself. Attach the `FMODButtonEventControl` script to this GameObject.
2. **Configure the Script in the Inspector**:
    - Select the GameObject with the `FMODButtonEventControl` script in the Inspector. You’ll see the `buttonEventPairs` array. Increase the size of this array to match the number of buttons you want to enhance with sound.
    - For each element in the array:
        - Drag the corresponding UI button from the Hierarchy into the `button` field.
        - Use the magnifying glass icon to assign the FMOD event for hover to the `FmodHoverEvent` field.
        - Similarly, assign the FMOD event for click to the `FmodClickEvent` field.
3. **Script Mechanics**:
    - Upon starting the game, the script adds event triggers to each button for hover and click events.
    - For hover, it plays the specified FMOD hover sound when the mouse pointer enters the button area.
    - For clicks, it triggers the designated FMOD click sound when the button is pressed.
4. **Test the Implementation**:
    - Enter Play mode in Unity. Move your cursor over the buttons and click them to hear the FMOD events. Each interaction should now produce the corresponding sound effect, providing immediate auditory feedback to the user.

This section demonstrates how to use the `FMODButtonEventControl` script to apply audio effects to button interactions, making your UI more engaging and interactive.

# `FMODSliderParameterControl`

In this section of the tutorial, we will assume that you already have Unity UI sliders set up in your scene and that FMOD parameters have been created and configured with their desired functions. Let’s see how we can use the `FMODSliderParameterControl` script to dynamically adjust these FMOD parameters using the existing Unity UI sliders.

1. **Add the Script to a GameObject**:
    - Select a GameObject in your scene where you want to manage audio parameters. This could be a dedicated audio control panel or any other GameObject. Add the `FMODSliderParameterControl` script to this GameObject.
2. **Configure the Script in the Inspector**:
    - With the GameObject selected, go to the Inspector where the `FMODSliderParameterControl` script is attached. You will see the `SliderParameterPairs` array. Set the size of this array to match the number of sliders you intend to use for controlling FMOD parameters.
    - For each element in the array:
        - Drag the corresponding slider from the Hierarchy into the `soundSlider` field.
        - Enter the name of the FMOD parameter that this slider will control into the `fmodParameterName` field. It's crucial that the parameter name exactly matches the one defined in FMOD.
        - In additions, since this script does not currently support any value scaling, care should be taken to match these values between the slider in Unity and the parameter in FMOD
3. **Script Mechanics**:
    - Upon starting the game, the script initializes each FMOD parameter with the slider’s current value, ensuring that your audio settings are synced right from the beginning.
    - It also sets up a listener for each slider's `onValueChanged` event. When a slider's value changes, the script calls `UpdateFMODParameterValue`, which updates the FMOD parameter in real-time.
4. **Test the Functionality**:
    - Play your scene in Unity. As you move each slider, observe how the corresponding FMOD parameter affects the audio output. This setup allows for real-time audio adjustments, which can be particularly useful for sound design testing or interactive audio environments.

By following these steps, you've successfully linked Unity UI sliders to FMOD parameters, enabling dynamic audio control directly from your game's UI.

# `FMODToggleParameterControl`

For our final script integration, we will explore how to use the `FMODToggleParameterControl` script to dynamically adjust FMOD parameters using existing Unity UI toggles. This is particularly useful for binary audio settings such as turning a sound on or off.

1. **Add the Script to a GameObject**:
    - Select a GameObject in your scene where you want to manage binary audio parameters, such as a settings menu. Add the `FMODToggleParameterControl` script to this GameObject.
2. **Configure the Script in the Inspector**:
    - With the GameObject selected, go to the Inspector where the `FMODToggleParameterControl` script is attached. You will see the `ToggleParameterPairs` array. Set the size of this array to match the number of toggles you intend to use for controlling FMOD parameters.
    - For each element in the array:
        - Drag the corresponding toggle from the Hierarchy into the `audioToggle` field.
        - Enter the name of the FMOD parameter that this toggle will control into the `fmodParameterName` field. Ensure that the parameter name exactly matches the one used in FMOD.
3. **Script Mechanics**:
    - Upon starting the game, the script initializes each FMOD parameter with the toggle’s current state (on or off), converting this state to 1.0f or 0.0f respectively.
    - It also sets up a listener for each toggle's `onValueChanged` event. When a toggle's state changes, the script calls `UpdateFMODParameterValue`, which updates the FMOD parameter in real-time based on whether the toggle is on (1.0f) or off (0.0f).
4. **Test the Functionality**:
    - Enter Play mode in Unity. As you toggle each UI element, observe how the corresponding FMOD parameter affects the audio output. This setup allows for immediate audio adjustments, making it ideal for settings that require a simple on/off switch, such as muting background music or sound effects.

By following these steps, you've successfully linked Unity UI toggles to FMOD parameters, enabling dynamic and straightforward audio control directly from your game's UI.

# Conclusion

Thanks for watching this tutorial on controlling FMOD through the use of these custom Unity scripts. These tools showcase the simple, yet efficient and adaptable tools I strive to create as a technical sound designer.  For more insights and to explore collaboration opportunities, please connect with me on LinkedIn or visit my website at [www.danielrdehaan.com](http://www.danielrdehaan.com/), 

If you found this video helpful, please like, subscribe, and share. Your support mean a lot. Let's create some awesome audio experiences!