---
title: Unity+FMOD - Survival Game
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/reaper"
  - "#topic/game-audio/fmod"
  - "#topic/game-audio/unity"
  - "#topic/sampling/orchestral"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.631590
---

# Unity+FMOD - Survival Game

# Task

Using only Spitfire LABS, BBC Discover, or your DAW’s stock instruments/sounds, create, compose, and implement all the SFX and music for the Unity Survival Game.

### Style:

Your SFXs and music must be a hybrid design (blending real and improbable SFX with music that employs both synthesized and acoustic instruments) that evokes a whimsical, childlike dream state or nightmare.  

### Your music should include the following:

- [ ]  An introduction
- [ ]  At least one transition timeline
- [ ]  Three levels of intensity (sections or layers) that change in relationship to the player’s `score`
- [ ]  Audio effects, or additional compositional changes that change in relationship to the player’s `health`

### Additional Requirements:

- [ ]  All SFX should be fully implemented using the resources below
- [ ]  All events should route through either an `SFX Group Bus` or `Music Group Bus` in FMOD’s Mixer
- [ ]  All Events and Parameters listed below should be implemented in FMOD and connected to the Unity game

# Resources

**Unity Project (Editor Version 2021.3.10.f1):**

[Survival Game - FMOD Basics.zip](Survival_Game_-_FMOD_Basics.zip)

**Reaper Projects:**

[Survival Shooter - Reaper Projects.zip](Survival_Shooter_-_Reaper_Projects.zip)

**Audio Assets:**

[Music.zip](Music.zip)

[SFXs.zip](SFXs.zip)

# FMOD Events

| **Sound** | **FMOD Event** | 2D/3D | Unity Location |
| --- | --- | --- | --- |
| Player Hurt | Player/Player_Hurt | 2D | Assets/CompleteAssets/Prefabs/Player |
| Player Death | Player/Player_Death | 2D | Assets/CompleteAssets/Prefabs/Player |
| Player Yawn | Player/Player_Yawn | 2D | Assets/CompleteAssets/Prefabs/Player |
| Player Movement | Player/Player_Movement | 2D | Assets/CompleteAssets/Prefabs/Player |
| Gunshot | Player/Player_Gunshot | 2D | Assets/CompleteAssets/Prefabs/Player/GunBarrelEnd |
| Hellephant Hurt | Enemies/Hellephant/Hellephant_Hurt | 3D | Assets/CompleteAssets/Prefabs/Hellephant |
| Hellephant Death | Enemies/Hellephant/Hellephant_Death | 3D | Assets/CompleteAssets/Prefabs/Hellephant |
| Hellphant Land | Enemies/Hellephant/Hellephant_Land | 3D | Assets/CompleteAssets/Prefabs/Hellephant |
| ZomBear Hurt | Enemies/ZomBear/ZomBear_Hurt | 3D | Assets/CompleteAssets/Prefabs/ZomBear |
| ZomBear Death | Enemies/ZomBear/ZomBear_Death | 3D | Assets/CompleteAssets/Prefabs/ZomBear |
| ZomBear Movement | Enemies/ZomBear/ZomBear_Movement | 3D | Assets/CompleteAssets/Prefabs/ZomBear |
| ZomBunny Hurt | Enemies/ZomBear/ZomBunny_Hurt | 3D | Assets/CompleteAssets/Prefabs/ZomBunny |
| ZomBunny Death | Enemies/ZomBear/ZomBunny_Death | 3D | Assets/CompleteAssets/Prefabs/ZomBunny |
| ZomBunny Movement | Enemies/ZomBunny/ZomBunny_Movement | 3D | Assets/CompleteAssets/Prefabs/ZomBunny |
| Background Music | Music/Background_Music | 2D | Scene Game Object: BackgroundMusic |
| Game Over | Misc/Game_Over | 2D | Scene Game Object: HUDCanvas |

# FMOD Parameters

| Unity Parameter | FMOD Parameter | Global/Local | Control | Range |
| --- | --- | --- | --- | --- |
| Score | Score | Global | Music System | 0-1000 |
| Player_Health | Player_Health | Global | Music System Effects | 0-100 |
| Music_Level | Music_Level | Global | Music Mixer Bus | 0-1 |
| SFX_Level | SFX_Level | Global | SFX Mixer Bus | 0-1 |
| Global_Level | Global_Level | Global | Main Mixer Bus | 0-1 |

# Evaluation

You will be evaluated based on the following:

- **8 Points -** The functionality of your FMOD SFX/music systems and their successful integration with the Unity game
- **2 Points -** How successfully you realize the stylistic cues required for the game.