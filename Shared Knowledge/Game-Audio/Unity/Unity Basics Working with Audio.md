---
title: Unity Basics Working with Audio
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/game-audio/unity"
created: 2026-01-19T15:58:15-06:00
modified: 2026-03-04T08:44:51-06:00
---


---

Created by [Daniel Dehaan](http://www.danielrdehaan.com), 2021-09-20

# Project Setup

---

1. Create a new 3D Unity project and name it "FA22_MUSC-601_Week-03_First initial Last name" (e.g. FA22_*MUSC-601_Week-03_DDehaan*).
    
    ![Screen Shot 2022-09-25 at 7.09.19 PM.png](Screen_Shot_2022-09-25_at_7.09.19_PM.png)
    
2. Import the [Starter Assets - Third Person Character Controller](https://assetstore.unity.com/packages/essentials/starter-assets-third-person-character-controller-196526) from the [Unity Asset Store](https://assetstore.unity.com/?q=Starter&orderBy=1).
    1. After clicking the link above, click "Add to My Assets". 
        
        ![Screen Shot 2021-09-19 at 5.39.31 PM.png](Screen_Shot_2021-09-19_at_5.39.31_PM.png)
        
        > [!note]
> 
        
    2. Click "Open in Unity".
        
        ![Screen Shot 2022-09-25 at 7.11.42 PM.png](Screen_Shot_2022-09-25_at_7.11.42_PM.png)
        
    3. Make sure the Starter Assets - Third Person Character Controller package is selected and click “Download” and/or “Import”.
        
        ![Screen Shot 2021-09-19 at 5.45.13 PM.png](Screen_Shot_2021-09-19_at_5.45.13_PM.png)
        
    4. If a second import window appears make sure all the assets are selected and click "Import".
        
        ![Screen Shot 2021-09-19 at 6.08.13 PM.png](Screen_Shot_2021-09-19_at_6.08.13_PM.png)
        
3. If you get a pop-up warning about this project using a new input system, click "Yes.”
    
    ![Screen Shot 2022-09-25 at 7.13.53 PM.png](Screen_Shot_2022-09-25_at_7.13.53_PM.png)
    
4. Once the import completes and the Unity Editor has restarted, open the demo scene found in the *Project* window **by navigating to *Assets > StarterAssets > ThirdPersonController > Scenes* and double-click "Playground".
    
    ![Screen Shot 2021-09-19 at 5.48.36 PM.png](Screen_Shot_2021-09-19_at_5.48.36_PM.png)
    
5. Save the current scene as "Audio-Playground" in the *Assets > Scenes* folder by right-clicking on the top-level *Playground Scene* within the Project Hierarchy window and choosing *Save Scene As...*
    
    ![Screen Shot 2021-09-19 at 5.59.01 PM.png](Screen_Shot_2021-09-19_at_5.59.01_PM.png)
    
6. Test the scene by clicking the play button near the top of the Unity Editor window.
    
    ![Screen Shot 2021-09-19 at 6.48.55 PM.png](Screen_Shot_2021-09-19_at_6.48.55_PM.png)
    
    > [!note]
> 
    

# Adding Music Loop

---

1. Check that the scene's *MainCamera* game object has an Audio Listener component.
    
    ![Screen Shot 2021-09-19 at 6.33.39 PM.png](Screen_Shot_2021-09-19_at_6.33.39_PM.png)
    
2. Right-click in the empty space of the *Hierarchy* window and create an *Empty g*ame object **called "MusicLoop".
    
    ![Screen Shot 2021-09-19 at 6.34.56 PM.png](Screen_Shot_2021-09-19_at_6.34.56_PM.png)
    
3. In the new game object's inspector, add an *Audio Source* component.
    
    ![Screen Shot 2021-09-19 at 6.39.39 PM.png](Screen_Shot_2021-09-19_at_6.39.39_PM.png)
    
4. Using the *Project* window, create a new "Music" folder inside the *Assets* folder.
    
    ![Screen Shot 2021-09-19 at 6.41.02 PM.png](Screen_Shot_2021-09-19_at_6.41.02_PM.png)
    
5. Import any music .WAV file of your choosing, by dragging and dropping into the new *Music* folder.
    
    [Music Elevator by Jay_You Id-460432.wav.zip](Digital%20Garden/Shared%20Knowledge/Attachments/Unity%20Basics%20Working%20with%20Audio%209727-0a40/Music_Elevator_by_Jay_You_Id-460432.wav.zip)
    
6. After the .WAV file has finished importing, drag it from the *Project* window into the *Audio Clip* parameter of the *MusicLoop* game object's *Audio Source* component.
    
    ![Screen Shot 2021-09-19 at 6.46.05 PM.png](Screen_Shot_2021-09-19_at_6.46.05_PM.png)
    
7. Check that both the *Play On Awake* and *Loop* options are enabled.
    
    ![Screen Shot 2021-09-19 at 6.47.24 PM.png](Screen_Shot_2021-09-19_at_6.47.24_PM.png)
    
8. Test by clicking the *Play* button.

> [!note]
> 

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
9. In the *Project* window, create a new *Scripts* folder inside the main *Assets* folder and move your new *Audio_Trigger_Animation_Event_Step* inside of the new folder.
10. Open new Script in Visual Studio.
    
    ![Create Trigger Script.gif](Create_Trigger_Script.gif)
    
11. In Visual Studio edit the script so it matches the one shown below:
    
    ```csharp
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;
    
    public class Audio_Trigger_Animation_Event_Step : MonoBehaviour
    {
        public AudioClip[] footsteps;
    
        private AudioSource audioSource;
    
        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
        }
    
        private void Step()
        {
            AudioClip clip = GetRandomClip();
            audioSource.PlayOneShot(clip);
        }
    
        private AudioClip GetRandomClip()
        {
            return footsteps[UnityEngine.Random.Range(0, footsteps.Length)];
        }
    }
    ```
    
12. Save and close the script.
13. Inside the main *Assets* folder, create a new folder called SFXs, and import these footstep audio files:
    
    [Footstep Audio Files.zip](Digital%20Garden/Shared%20Knowledge/Attachments/Unity%20Basics%20Working%20with%20Audio%209727-0a40/Footstep_Audio_Files.zip)
    
    ![Create SFX Folder.gif](Create_SFX_Folder.gif)
    
14. Add several footstep audio clips to the *Footsteps* array within the *Audio_Trigger_Animation_Event_Step* component.
    
    ![Add Audio Clips to Script.gif](Add_Audio_Clips_to_Script.gif)
    
15. Test by running the game.

> [!note]
> ![Adjust Music Level.gif](Adjust_Music_Level.gif)

> [!note]
> 

# Audio Mixers

---

By default, all new *Audio Source* components output their signal directly to the scene's *Audio Listener* component (usually found on the *MainCamera* game object). Unity's Audio Mixers can be used to control and effect the flow of sound from the scene's *Audio Sources* to the *Audio Listener.*

### Creating and Audio Mixer

1. Begin by creating a new *Audio Mixer* folder inside the main *Assets* folder.
2. Inside the new folder, right-click to create a new *Audio Mixer* and call i*t* "Audio Mixer".
3. Then double-click on the new *Audio Mixer* to open the *Audio Mixer* window .
    
    ![Create an Audio Mixer.gif](Create_an_Audio_Mixer.gif)
    

Along the left side of the *Audio Mixer* window you'll see the four sections: 

- *Mixers* contain *groups (*similar to a *track* inside a DAW). They are called "groups" **because they can have any number of A*udio Sources* or other *Audio Mixers* routed through them.
- *Snapshots* save recallable presets for a *Mixer.*
- *Groups* are the "tracks" of a *Mixer.*
- *Views* store/recall visibility setting while editing, making it easier to work with lots of *groups.*

### Simple Audio Mixer Example

Previously we used the *Volume* slider of our *MusicLoop's* *Audio Source* component to balance the levels between the background music and the sound of the character's footsteps. Let's try using an Audio Mixer to accomplish the same thing.

1. Begin by returning the background music' volume to 1. We'll now use the Audio Mixer to control the volume of the music.
    
    ![Background Music Return to 1.gif](Background_Music_Return_to_1.gif)
    
2. Next add a new *group* call "Background Music" by clicking the '+' button near the top right of the *Groups* section. 
    
    ![Create Background Music Group.gif](Create_Background_Music_Group.gif)
    
3. Finally select the *Background Music Group* as the O*utput* destination for the Background Music's *Audio Source* component. 
    
    ![Select Output Destination.gif](Select_Output_Destination.gif)
    
4. Repeat this same process for the footsteps and any other SFX you may have added.
    
    ![Select SFXs Output Destination.gif](Select_SFXs_Output_Destination.gif)
    

> [!note]
> ![Screen Shot 2021-09-19 at 9.44.13 PM.png](Screen_Shot_2021-09-19_at_9.44.13_PM.png)
> 
> In this case, both the Background Music and Player SFXs *groups* output their audio signals to the Master *group.*
> 
> A mixers signal flow can be configured by dragging the groups around in this section.

### Snapshots

1. Enter play mode, then, after pressing the 'esc' key to free your mouse from the game, enable the Audio Mixer's *Edit in Play Mode* feature.
2. Right click the default snapshot and rename it to "Music Up"
3. Then click the '+' button to create a new snapshot called "Music Down"
4. With the the *Music Down* snapshot selected, lower the volume of the *Background Music group.*
5. Then try listen and watch as you click back and forth between the *Music Up* and *Music Down snapshots.*
    
    ![Snapshots.gif](Snapshots.gif)
    

> [!note]
> 

> [!note]
> 

# Box Triggers

---

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
        
4. With the *Box_Trigger* game object still selected in the *Hierarchy* window, add a new *Script* component and title it "Tunnel_Box_Trigger"
    
    ![Add Trigger Script.gif](Add_Trigger_Script.gif)
    
5. Open the script in Visual Studio and edit it so that it matches the one shown below. Then save and return to Unity.
    
    ```csharp
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;
    using UnityEngine.Audio;
    
    public class Tunnel_Box_Trigger : MonoBehaviour
    {
        public AudioMixerSnapshot inSnapshot;
        public AudioMixerSnapshot outSnapshot;
        public float fadeInTime;
        public float fadeOutTime;
    
        public AudioClip[] tunnelSounds;
        private AudioSource audioSource;
    
        private bool playerIsInTunnel = false;
    
        private void Awake()
        {
            audioSource = GetComponent<AudioSource>();
        }
    
        private void Update()
        {
            if (playerIsInTunnel == true && audioSource.isPlaying != true)
            {
                AudioClip clip = GetRandomClip();
                audioSource.PlayOneShot(clip);
            }
        }
    
        private void OnTriggerEnter(Collider other)
        {
            if (other.gameObject.CompareTag("Player"))
            {
                playerIsInTunnel = true;
                if (inSnapshot != null) inSnapshot.TransitionTo(fadeInTime);
            }
        }
    
        private void OnTriggerExit(Collider other)
        {
            if (other.gameObject.CompareTag("Player"))
            {
                playerIsInTunnel = false;
                if (outSnapshot != null) outSnapshot.TransitionTo(fadeInTime);
            }
        }
    
        private AudioClip GetRandomClip()
        {
            return tunnelSounds[UnityEngine.Random.Range(0, tunnelSounds.Length)];
        }
    
    }
    ```
    
6. Back in Unity, specify which snapshot should be recalled when the player is either inside or outside the tunnel.
7. Next, set the time it takes to transition between the two snapshots.
    
    ![Set Snapshots.gif](Set_Snapshots.gif)
    
8. Now we need some tunnel sounds! Download the sounds below and import them into a new "Tunnel Sounds" folder inside of the existing SFXs folder.
    
    [Tunnel_Sounds.zip](Tunnel_Sounds.zip)
    
9. Add a couple of these audio clips as items in the Tunnel Sounds array (list).
    
    ![Add Tunnel Sounds.gif](Add_Tunnel_Sounds.gif)
    
10. Finally, add an *Audio Source* component to the *Box_Trigger* game object.
    
    ![Add Tunnel Audio Source.gif](Add_Tunnel_Audio_Source.gif)
    
11. Now test to see that everything works by playing the game and moving the player in and out of the tunnel.

> [!note]
> 

> [!note]
> 

# Challenge

---

Once you've completed all the previous steps, see if you can apply the knowledge you have gained to fill out the rest of your audio world by adding additional sounds that are...

- [ ]  2D looping audio sources
- [ ]  3D looping audio sources
- [ ]  triggered by animation events
- [ ]  triggered by a box trigger
- [ ]  And. finally, give the terrain some textural shifts by creating several other *Audio Mixer Snapshots* that are triggered as the player moves around the scene.