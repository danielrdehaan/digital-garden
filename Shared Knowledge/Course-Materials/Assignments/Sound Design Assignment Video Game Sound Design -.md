---
title: Sound Design Assignment Video Game Sound Design -
type: knowledge
status: active
tags:
  - "#type/assignment"
  - "#topic/game-audio/fmod"
  - "#topic/game-audio/unity"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.618165
---

# Sound Design Assignment: Video Game Sound Design - Part 3: Delivery

# Download/Install

1. Unity Hub ([Mac](https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.dmg) / [Windows](https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.exe))
    
    > [!note]
> You’ll need to create a standard Unity account (don’t make a student account).
    
2. FMOD Studio 2.02.17 ([Mac](https://www.fmod.com/download#) / [Windows](https://www.fmod.com/download#))
3. [FMOD for Unity 2.02.17](https://www.fmod.com/download#)

# Install the Unity Editor

Using the Unity Hub download and install the ***Unity Editor version 2022.3.10f1***

# Download and Open the Provided Projects

Unity Project: `Unity Editor 2022.3.10f1`

[Survival Shooter Unity Project - FMOD.zip](Survival_Shooter_Unity_Project_-_FMOD.zip)

FMOD Project: `FMOD Studio 2.02.17`

[Survival Shooter FMOD Project.zip](Survival_Shooter_FMOD_Project.zip)

# Integrate the FMOD and Unity Project

1. In the Unity Editor import the FMOD for Unity 2.02.17 (Unity Verified) integration package by navigating to the Menu Bar > Assets > Import Package > Custom Package…
    
    ![CleanShot 2023-10-05 at 14.21.27.png](CleanShot_2023-10-05_at_14.21.27.png)
    
2. Select the `FMOD Unity Package.unitypackage` file and click “Open.”
    
    ![CleanShot 2023-10-05 at 14.24.48.png](CleanShot_2023-10-05_at_14.24.48.png)
    
3. Click “Import”.
    
    ![CleanShot 2023-10-05 at 14.26.01.png](CleanShot_2023-10-05_at_14.26.01.png)
    
4. Follow the FMOD Setup Wizard
    
    ![CleanShot 2023-10-05 at 14.28.43.png](CleanShot_2023-10-05_at_14.28.43.png)
    
    ![CleanShot 2023-10-05 at 14.30.05.png](CleanShot_2023-10-05_at_14.30.05.png)
    
5. Choose how to open your FMOD project and select the FMOD Project you just created.
    
    ![CleanShot 2023-10-05 at 14.31.22.png](CleanShot_2023-10-05_at_14.31.22.png)
    
    ![CleanShot 2023-10-05 at 14.34.56.png](CleanShot_2023-10-05_at_14.34.56.png)
    
    ![CleanShot 2023-10-05 at 14.36.22.png](CleanShot_2023-10-05_at_14.36.22.png)
    
6. Since this project doesn’t have any existing Unity Audio components, you can just click next. If your game did have any existing Unity audio in it, this step of the FMOD Setup Wizard would help you replace any Unity Audio Components with FMOD audio components.
    
    ![CleanShot 2023-10-05 at 14.39.01.png](CleanShot_2023-10-05_at_14.39.01.png)
    
7. To be certain that our game is only using the FMOD audio engine, click to disable Unity’s built in audio, then click next.
    
    ![CleanShot 2023-10-05 at 14.39.46.png](CleanShot_2023-10-05_at_14.39.46.png)
    
8. There shouldn’t be any Unity Audio Sources, so you can just click next.
    
    ![CleanShot 2023-10-05 at 14.42.46.png](CleanShot_2023-10-05_at_14.42.46.png)
    
9. And since we are not using [Source Control](https://www.perforce.com/blog/vcs/what-source-control) on this project, we can again click “Next”.
    
    ![CleanShot 2023-10-05 at 14.44.27.png](CleanShot_2023-10-05_at_14.44.27.png)
    
10. Before closing the FMOD Setup Wizard, click to open the FMOD Settings, then you can close the setup wizard.
    
    ![CleanShot 2023-10-05 at 14.46.17.png](CleanShot_2023-10-05_at_14.46.17.png)
    
11. Take a moment to look over the FMOD Settings window that should have opened in your Unity Editor’s Inspector window on the right side. Most importantly notice this is where you can see what FMOD Project is associated with this Unity Project.
    
    ![CleanShot 2023-10-05 at 22.08.51.png](CleanShot_2023-10-05_at_22.08.51.png)
    
    > [!note]
> ![CleanShot 2023-10-05 at 14.47.55.png](CleanShot_2023-10-05_at_14.47.55.png)
    
    > [!note]
> [https://alessandrofama.com/tutorials/fmod/unity/integration-setup](https://alessandrofama.com/tutorials/fmod/unity/integration-setup)
    

# Situation

You and the developer are happy with how all the SFXs are sounding and now its time to put them into the game. The developer has shared with you a copy of the Unity Project and has already coded all the FMOD event calls into the game (Fairly common. They will typically handle all the game engine side of things). They were even nice enough to setup and FMOD project for you with placeholder events (This is not common at all. Ha!) All you need to do now is export all your audio assets from your DAW and setup all the events in FMOD.

# Creative Brief

Implement all of your SFXs in FMOD. Explore the various ways you can create more variation within FMOD for sounds that repeat a lot and the ways that you can limit the number of repetitions of a sound so that there isn’t a massive build up of SFXs like `Zombear-Movement`.

# File Format & Standards

No format standards this week. 

# Evaluation Standards

| X Factor | How good does your game sound? | 10 Point |
| --- | --- | --- |
|  | **Total Points:** | **10 Points** |

# Submission

Just bring your FMOD projects to next class so we can all play test the game from your computer.

# Peer Critique

Please be prepared to present your DAW and FMOD projects to the class so that we can collectively learn from or improve your work.

# Example Documents

[Example Contract - Indie Game - Sound Design.pdf](Example_Contract_-_Indie_Game_-_Sound_Design.pdf)

# Additional Practice

- You can find millions of gameplay videos online. Just download the video, mute the audio and your ready to go!

# Additional Resources

- [“Maximizing Game Feel Through Sound” - Akash Thakkar](https://www.amazon.com/Maximizing-Game-Feel-Through-Sound-ebook/dp/B07BJZMTDW?keywords=maximizing+game+feel+through+sound&qid=1560830000&s=gateway&sr=8-1&linkCode=sl1&linkId=d89290f245b67a8f02db7f0fc49e39dd&language=en_US)
- [Akash Thakkar’s YouTube Channel](https://www.youtube.com/@AkashThakkarAudio)
- [The Airwiggles Online Community](https://www.airwiggles.com/c/highlights)