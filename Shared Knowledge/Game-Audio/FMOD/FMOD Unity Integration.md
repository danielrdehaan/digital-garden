---
title: FMOD Unity Integration
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/game-audio/fmod"
  - "#topic/game-audio/unity"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.546488
---

# FMOD: Unity Integration

Created by [Daniel Dehaan](http://www.danielrdehaan.com), 2021-09-26

> [!warning]
> This document was written using [FMOD Studio version 2.02.03](https://fmod.com/download#) and Unity Editor version 2020.3.18f1 ([Mac](https://download.unity3d.com/download_unity/a7d1c678663c/UnityDownloadAssistant-2020.3.18f1.dmg?_ga=2.225998426.1115221175.1632095976-1002205724.1632095976), [Windows](https://download.unity3d.com/download_unity/a7d1c678663c/UnityDownloadAssistant-2020.3.18f1.exe?_ga=2.225998426.1115221175.1632095976-1002205724.1632095976))

# Unity Project Setup

---

1. Create a new 3D Unity (URL) project and name it "FMOD Playground" (e.g. FA21_*MUSC-601_Week-04_DDehaan*).
    
    ![Screen Shot 2021-09-26 at 7.44.58 PM.png](Screen_Shot_2021-09-26_at_7.44.58_PM.png)
    
2. Import the [Starter Assets - Third Person Character Controller](https://assetstore.unity.com/packages/essentials/starter-assets-third-person-character-controller-196526).
    1. After clicking the link above, click "Add to My Assets". 
        
        ![Screen Shot 2021-09-19 at 5.39.31 PM.png](Screen_Shot_2021-09-19_at_5.39.31_PM.png)
        
        > [!note]
> 
        
    2. Click "Open in Unity".
        
        ![Screen Shot 2021-09-19 at 5.40.31 PM.png](Screen_Shot_2021-09-19_at_5.40.31_PM.png)
        
    3. Make sure the Starter Assets - Third Person Character Controller package is selected and click import.
        
        ![Screen Shot 2021-09-19 at 5.45.13 PM.png](Screen_Shot_2021-09-19_at_5.45.13_PM.png)
        
    4. If a second import window appears make sure all the assets are selected and click "Import".
        
        ![Screen Shot 2021-09-19 at 6.08.13 PM.png](Screen_Shot_2021-09-19_at_6.08.13_PM.png)
        
3. If you get a pop-up warning about this project using a new input system, click "Yes".
    
    ![Screen Shot 2021-09-19 at 6.11.31 PM.png](Screen_Shot_2021-09-19_at_6.11.31_PM.png)
    
4. Once the import completes, and the Unity Editor has restarted, open the demo scene found in the *Project* window **by navigating to *Assets > StarterAssets > ThirdPersonController > Scenes* and double-click "Playground".
    
    ![Screen Shot 2021-09-19 at 5.48.36 PM.png](Screen_Shot_2021-09-19_at_5.48.36_PM.png)
    
5. Save the current scene as "FMOD-Playground" in the *Assets > Scenes* folder by right-clicking on the top-level *Playground Scene* within the Project Hierarchy window and choosing *Save Scene As...*
    
    ![Screen Shot 2021-09-26 at 7.46.15 PM.png](Screen_Shot_2021-09-26_at_7.46.15_PM.png)
    
6. Test the scene by clicking the play button near the top of the Unity Editor window.
    
    ![Screen Shot 2021-09-19 at 6.48.55 PM.png](Screen_Shot_2021-09-19_at_6.48.55_PM.png)
    
    > [!note]
> 
    

# Integrating Unity with an FMOD Project

1. Go to [FMOD.com/download](https://fmod.com/download) and download both "FMOD Studio" and "FMOD for Unity" version 2.02.03
2. Install FMOD Studio and start a new project named "FA21_MUSC-601_Week-04_First Initial Last Name_FMOD-Project" (e.g. "FA21_MUSC-601_Week-04_DDehaan_FMOD-Project").
    
    ![Screen Shot 2021-09-26 at 7.52.46 PM.png](Screen_Shot_2021-09-26_at_7.52.46_PM.png)
    
3. Back in the Unity Editor, from the Menu Bar select Assets > Import > Custom Packages... and then select the FMOD for Unity file you just downloaded. 
    
    ![Screen Shot 2021-09-26 at 7.59.24 PM.png](Screen_Shot_2021-09-26_at_7.59.24_PM.png)
    
4. Then click "Import". 
    
    ![Screen Shot 2021-09-26 at 8.01.53 PM.png](Screen_Shot_2021-09-26_at_8.01.53_PM.png)
    
5. After the package has been successfully imported, a setup wizard will appear, click "Start."
    
    ![Screen Shot 2021-09-26 at 8.10.09 PM.png](Screen_Shot_2021-09-26_at_8.10.09_PM.png)
    
6. On the next screen confirm that "Reorganize Plugin Files" has a green checkmark next to it, then click to "Update Event References". 
    
    ![Screen Shot 2021-09-26 at 8.28.41 PM.png](Screen_Shot_2021-09-26_at_8.28.41_PM.png)
    
7. On the screen that appear, click "Scan".
    
    ![Screen Shot 2021-09-26 at 8.30.12 PM.png](Screen_Shot_2021-09-26_at_8.30.12_PM.png)
    
8. Once the scan completes, you may close the "FMOD Event Reference Updater" window and click the "Next" button in the "FMOD Setup Wizard" window.
    
    ![Screen Shot 2021-09-26 at 8.31.40 PM.png](Screen_Shot_2021-09-26_at_8.31.40_PM.png)
    
9. On the next screen, click "FMOD Studio Project" then navigate to the FMOD Project you just created and click "Open".
    
    ![Screen Shot 2021-09-26 at 8.11.56 PM.png](Screen_Shot_2021-09-26_at_8.11.56_PM.png)
    
    ![Screen Shot 2021-09-26 at 8.12.27 PM.png](Screen_Shot_2021-09-26_at_8.12.27_PM.png)
    
10. Then click "Next".
    
    ![Screen Shot 2021-09-26 at 8.17.20 PM.png](Screen_Shot_2021-09-26_at_8.17.20_PM.png)
    
11. The next screen will prompt you to replace any native "Audio Listener" components with FMOD's Audio Listener components. For now, just click "Next'. We will do this manually in just a moment.
    
    ![Screen Shot 2021-09-26 at 8.19.23 PM.png](Screen_Shot_2021-09-26_at_8.19.23_PM.png)
    
12. On the next screen, click the button to "Disable built in audio". Then click "Next".
    
    ![Screen Shot 2021-09-26 at 8.21.46 PM.png](Screen_Shot_2021-09-26_at_8.21.46_PM.png)
    
13. On the next screen, confirm that no audio sources should have been found and click "Next".
    
    ![Screen Shot 2021-09-26 at 8.23.10 PM.png](Screen_Shot_2021-09-26_at_8.23.10_PM.png)
    
14. The final screen provides information about what you should do if you are working on a collaborative team that uses a system for managing changes to their shared files. We are not, so we can just click "Next".
    
    ![Screen Shot 2021-09-26 at 8.25.43 PM.png](Screen_Shot_2021-09-26_at_8.25.43_PM.png)
    
15. With everything but the Listener step completed, you may now close the FMOD Setup Wizard window.
    
    ![Screen Shot 2021-09-26 at 8.34.04 PM.png](Screen_Shot_2021-09-26_at_8.34.04_PM.png)
    
16. Lastly, we need to replace the native Audio Listener with the FMOD Studio Listener component. To do this, select the MainCamera game object in the Hierarchy window for the FMOD-Playground scene.
    
    ![Screen Shot 2021-09-26 at 8.39.18 PM.png](Screen_Shot_2021-09-26_at_8.39.18_PM.png)
    
17. Then, over in the inspector window, find and remove the "Audio Listener" component.
    
    ![Screen Shot 2021-09-26 at 8.40.20 PM.png](Screen_Shot_2021-09-26_at_8.40.20_PM.png)
    
18. Finally, add a new "FMOD Studio Listener" component to the MainCamera game object.
    
    ![Screen Shot 2021-09-26 at 8.41.28 PM.png](Screen_Shot_2021-09-26_at_8.41.28_PM.png)
    
19. That's it! You have now successfully integrated Unity and FMOD.

# Adding Background Music

1. In your FMOD Project, create a new 2D Timeline Event and call it "Music_Background".
    
    ![Screen Shot 2021-09-26 at 8.46.45 PM.png](Screen_Shot_2021-09-26_at_8.46.45_PM.png)
    
2. Switch to the Assets tab and drag-and-drop your background music file into a new folder called "Music".
    
    [Music Elevator by Jay_You Id-460432.wav.zip](Digital%20Garden/Shared%20Knowledge/Attachments/FMOD%20Unity%20Integration/Music_Elevator_by_Jay_You_Id-460432.wav.zip)
    
    ![Screen Shot 2021-09-26 at 8.48.39 PM.png](Screen_Shot_2021-09-26_at_8.48.39_PM.png)
    
3. Then drag-and-drop that asset onto the Background_Music even you just created.
    
    ![Screen Shot 2021-09-26 at 8.50.47 PM.png](Screen_Shot_2021-09-26_at_8.50.47_PM.png)
    
4. Loop the full duration of the audio asset by right-clicking on the waveform and selecting "New Loop Region".
    
    ![Screen Shot 2021-09-26 at 8.51.48 PM.png](Screen_Shot_2021-09-26_at_8.51.48_PM.png)
    
5. Before this event and its associated assets become available to our Unity project, we have to first assign the event to a Bank, and build the FMOD resource that will be include in the Unity project. To do this, right-click on the "Background_Music" event and assign it to the "Master" bank.
    
    ![Screen Shot 2021-09-26 at 8.54.36 PM.png](Screen_Shot_2021-09-26_at_8.54.36_PM.png)
    
6. Then, from the Menu Bar, select File > Build All Platforms
    
    ![Screen Shot 2021-09-26 at 8.55.23 PM.png](Screen_Shot_2021-09-26_at_8.55.23_PM.png)
    
7. Then save the FMOD project.
8. Back in Unity, select FMOD in the Menu Bar and choose "Refresh Banks".
    
    ![Screen Shot 2021-09-26 at 9.01.42 PM.png](Screen_Shot_2021-09-26_at_9.01.42_PM.png)
    
9. Next, add an empty game object to the FMOD-Playground scene and call it "Background_Music".
10. Select the new "Background_Music" game object and add an "FMOD Studio Event Emitter" component.
    
    ![Screen Shot 2021-09-26 at 8.59.11 PM.png](Screen_Shot_2021-09-26_at_8.59.11_PM.png)
    
11. In the new "FMOD Studio Event Emitter" comment set the
    - Play Event = "Object Start"
    - Stop Event = "Object Destroy"
    - Event = "event:Background_Music"
    
    ![Screen Shot 2021-09-26 at 9.02.44 PM.png](Screen_Shot_2021-09-26_at_9.02.44_PM.png)
    
12. Finally, click the "Play" button to test for your background music.

# Adding Footsteps

---

1. Navigate to *Assets > Standard Assets > ThirdPersonController > Character > Animations > Locamotion—Walk_N.anim*
    
    ![Adding Footstesp - Step 1.gif](Adding_Footstesp_-_Step_1.gif)
    
2. Expand the *Events* section.
    
    ![Footsteps - Step 2.gif](Footsteps_-_Step_2.gif)
    
3. Move the *model* into a good position to see the feet.
    
    ![Adjust Model View.gif](Adjust_Model_View.gif)
    
    - Option/Alt + click + drag = turn camera
    - Click+Drag = slide camera
    - Option/Alt + mouse wheel up/down to zoom in/out
4. Drag on Play Ruler (above model view) to find the first footfall and add a "Step" event by clicking the *Add Event* button.
    
    ![Create Step Events.gif](Create_Step_Events.gif)
    
5. Repeat the previous step for all footsteps.
6. When a "Step" event has been added to all animated footsteps, click "Apply".
    
    ![Click Apply.gif](Click_Apply.gif)
    
7. Select the *PlayerArmature* game object in the *Hierarchy* window, and, if one does not already exist, add an Audio Source component.
    
    ![Add Audio Source.gif](Add_Audio_Source.gif)
    
8. Add a new *Script Component* named "Audio_Trigger_Animation_Event_Step" to the *PlayerArmature* game object. 
    
    > [!note]
> 
    
9. In the *Project* window, create a new *Scripts* folder inside the main *Assets* folder and move your new Animation_FMOD_Event_Trigger **inside of the new folder.
10. Open new Script in Visual Studio.
11. In Visual Studio edit the script so it matches the one shown below:
    
    ```csharp
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;
    
    public class Animation_FMOD_Event_Trigger : MonoBehaviour
    {
        public FMODUnity.EventReference fmodEventStep;
    
        private void Step()
        {
            FMODUnity.RuntimeManager.PlayOneShot(fmodEventStep);
        }
    }
    ```
    
12. Save and close the script.
13. Back in FMOD Studio, create a new 2D Action called "Player_Step" and assign it to the Master bank.
    
    ![Screen Shot 2021-09-26 at 10.14.16 PM.png](Screen_Shot_2021-09-26_at_10.14.16_PM.png)
    
14. In the Assets tab, drag-and-drop the footstep audio files into a new folder called "Footsteps" inside of another new folder called "Player".
    
    [Footstep Audio Files.zip](Digital%20Garden/Shared%20Knowledge/Attachments/FMOD%20Unity%20Integration/Footstep_Audio_Files.zip)
    
    ![Screen Shot 2021-09-26 at 10.13.39 PM.png](Screen_Shot_2021-09-26_at_10.13.39_PM.png)
    
15. Then, back inside the new Player_Step event, right-click and add a new Multi Instrument.
    
    ![Screen Shot 2021-09-26 at 10.15.30 PM.png](Screen_Shot_2021-09-26_at_10.15.30_PM.png)
    
16. Next, drag-and-drop all the footstep assets inside the new Multi Instrument.
    
    ![Screen Shot 2021-09-26 at 10.16.50 PM.png](Screen_Shot_2021-09-26_at_10.16.50_PM.png)
    
17. Test the event in FMOD by clicking the play button a few times. You should hear a different footstep on each click of the play button.
18. Before testing everything back in Unity, be sure to Build For All Platforms and save the FMOD project.
    
    ![Screen Shot 2021-09-26 at 8.55.23 PM.png](Screen_Shot_2021-09-26_at_8.55.23_PM%201.png)
    
19. Back in Unity, refresh the FMOD Banks.
    
    ![Screen Shot 2021-09-26 at 9.01.42 PM.png](Screen_Shot_2021-09-26_at_9.01.42_PM%201.png)
    
20. Return to the Animation_FMOD_Event script component in the inspector window and select the new Player_Step event for the FMOD Event Step parameter.
    
    ![Screen Shot 2021-09-26 at 10.25.59 PM.png](Screen_Shot_2021-09-26_at_10.25.59_PM.png)
    
21. Finally, play the game in Unity and see if you can hear the footsteps.

> [!note]
> ![Screen Shot 2021-09-26 at 10.30.03 PM.png](Screen_Shot_2021-09-26_at_10.30.03_PM.png)
> 
> ![Screen Shot 2021-09-26 at 10.31.26 PM.png](Screen_Shot_2021-09-26_at_10.31.26_PM.png)

> [!note]
> 

# Controlling FMOD Parameters

---

FMOD Parameters could be controlled by almost anything in Unity, but to keep things simple we'll setup some Box Triggers to trigger specific FMOD parameter values.

Box Triggers are invisible game objects within the scene that are used to trigger events whenever a player moves through them.

Let's create a *box trigger* so that whenever our player walks through the short tunnel the background music fades out, and an owl "hoots" randomly for as long as the player remains inside the tunnel.

1. Begin by bringing the short *Tunnel_Prefab* game object into focus by 
    1. Selecting it in the Hierarchy window under *Environment > Greybox > Tunnel_Prefab*
    2. Then hover the cursor over the *Scene* window and pressing the 'f' key
    
    ![Focus Tunnel Prefab.gif](Focus_Tunnel_Prefab.gif)
    
    > [!note]
> 
    
2. Right click on the *Tunnel_Prefab* object in the *Hierarchy* window and create a new *3D Object > Cube* game object named "Box_Trigger". 
    
    ![Add Cube to Tunnel.gif](Add_Cube_to_Tunnel.gif)
    
3. With the new *Box_Trigger* object selected in the *Hierarchy* window, navigate to the *Inspector* widow and adjust all of the following parameters to...
    - Transform > Position x = 0, y = 0, z = 1.25
    - Transform > Scale x = 2.5, y = 6, z = 2.5
        
        ![Screen Shot 2021-09-19 at 10.41.27 PM.png](Screen_Shot_2021-09-19_at_10.41.27_PM.png)
        
    - Disable its *Mesh Renderer*
        
        ![Screen Shot 2021-09-19 at 10.41.43 PM.png](Screen_Shot_2021-09-19_at_10.41.43_PM.png)
        
    - And enable the *Box Collider's '*Is Trigger' option.
        
        ![Screen Shot 2021-09-19 at 10.42.53 PM.png](Screen_Shot_2021-09-19_at_10.42.53_PM.png)
        
4. With the *Box_Trigger* game object still selected in the *Hierarchy* window, add a two "FMOD Studio Global Parameter Trigger" components. The first will set the Location parameter's value to 1 when the player enters the box trigger. And the second will set the Location parameter's value back to 0 when the player exits the box trigger.
    
    ![Screen Shot 2021-09-26 at 11.36.11 PM.png](Screen_Shot_2021-09-26_at_11.36.11_PM.png)
    
5. Now test to see the parameter's value changes when the player moves in and out of the box trigger.