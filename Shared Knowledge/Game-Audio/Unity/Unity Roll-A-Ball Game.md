---
title: Unity Roll-A-Ball Game
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/game-audio/unity"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.630837
---

# Unity: Roll-A-Ball Game

[Roll-a-Ball - Unity Learn](https://learn.unity.com/project/roll-a-ball?uv=2019.4)

> [!note]
> When you get to positioning the “PickUp” objects you may find the following table helpful…
> 
> ![CleanShot 2023-09-25 at 12.25.19.png](CleanShot_2023-09-25_at_12.25.19.png)
> 
> | Pick Up # | X Position | Y Position | Z Position |
> | --- | --- | --- | --- |
> | 1 | 4 | 0.5 | 7 |
> | 2 | 7 | 0.5 | 4 |
> | 3 | 8 | 0.5 | 0 |
> | 4 | 7 | 0.5 | -4 |
> | 5 | 4 | 0.5 | -7 |
> | 6 | 0 | 0.5 | -8 |
> | 7 | -4 | 0.5 | -7 |
> | 8 | -7 | 0.5 | -4 |
> | 9 | -8 | 0.5 | 0 |
> | 10 | -7 | 0.5 | 4 |
> | 11 | -4 | 0.5 | 7 |
> | 12 | 0 | 0.5 | 8 |

# Adding Sound

For now, I’ll just leave a version of the Roll A Ball game where I have already added sounds using several custom scripts and Unity’s default audio capabilities for you to study. In the future, I’ll come back and provide a step-by-step guide on how to replicate this project. 

The script “PlayAudioClipOnImpact.cs” included in this project’s `Assets/Scripts/Audio` folder is a great script for you to keep for your own notes/reference. Please note that for this script to properly work, you project needs to also include all the “Editor” folder found in `Assets/Scripts/`.

Here is the project. It was created using Unity 2022.3.10f1

[Rollaball_Unity-Audio.zip](Rollaball_Unity-Audio.zip)