---
title: Logic Pro Import & Sync a Video
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/logic"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.588465
---

# Logic Pro: Import & Sync a Video

> [!note]
> 

- Table of Contents

# Summary

1. Find the SMPTE start time and frame rate of your video.

2. Create a new project with the correct frame rate and a sample rate of 48 kHz.

3. Match measure 3’s SMPTE value to the first frame of your video file.

4. Move the movie region and extracted audio file to measure 3.

5. Confirm that Logic’s SMPTE and that displayed over the video match from beginning to end.

# Step-by-Step Guide

1. Using a program such as QuickTime Player or VLC, open your video file and make note of the starting SMPTE value and the video’s frame rate.
    - To find the video’s frame rate using Quicktime, open the
    video file using Quicktime, then show the `Movie
    Inspector` window by navigating to the `Menu Bar >
    Window > Show Movie Inspector`. There you will find
    the video’s frame rate shown as “FPS.”
        
        ![Screen Shot 2023-04-13 at 1.59.12 PM.png](Screen_Shot_2023-04-13_at_1.59.12_PM.png)
        
    - To find the video’s frame rate using VLC: Open the video
    file using VLC, then open the Media Information...
    window by navigating to the `Menu Bar > Window >
    Media Information...` The video’s frame rate is found on
    the `Codec Details` page of the `Media Information...`
    window.
        
        ![Screen Shot 2023-04-13 at 1.59.45 PM.png](Screen_Shot_2023-04-13_at_1.59.45_PM.png)
        
2. Next, open Logic Pro X.
3. If Logic’s `Choose a Project` window does not appear after the application launches...
    
    ![Screen Shot 2023-04-13 at 2.00.42 PM.png](Screen_Shot_2023-04-13_at_2.00.42_PM.png)
    
    ...open it by navigating to the `Menu Bar > File > New from Template…`
    
4. In the `New Project` page of the `Choose a Project` window select the `Empty Project` or another template you have already created.
5. Before clicking `Choose` use the `Details` zone to set your project’s `Sample Rate` to `48 kHz` and to adjust the `Frame Rate` to match the video you will soon import. If the Details zone is not visible, expose it by clicking the triangle located in the lower left corner of the `Choose a Project` window next to the word “Details.”
    
    ![Screen Shot 2023-04-13 at 2.05.50 PM.png](Screen_Shot_2023-04-13_at_2.05.50_PM.png)
    
6. Now click `Choose` in the lower right corner of the `Choose a Project` window to create your new project.
7. Logic will prompt you to create a track. To avoid Logic creating more than just the selected track type, create an `Audio` track, and make sure that none of the options are checked in the `Details` zone of the `Create Track` window.
    
    ![Screen Shot 2023-04-13 at 2.06.24 PM.png](Screen_Shot_2023-04-13_at_2.06.24_PM.png)
    
    > [!note]
> ![Screen Shot 2023-04-13 at 2.07.03 PM.png](Screen_Shot_2023-04-13_at_2.07.03_PM.png)
    
8. Next, set measure three of your project to match the SMPTE value of the first frame of your video file by navigating to the `Menu Bar > File > Project Settings > Synchonization…`
    
    ![Screen Shot 2023-04-13 at 2.09.06 PM.png](Screen_Shot_2023-04-13_at_2.09.06_PM.png)
    
    1. Close the `Project Settings` window, and import your video file by navigating to the `Menu Bar > File > Movie > Open Movie…`
    2. Place Logic’s Edit/Playback Cursor at the start of measure 3 so that in the next step, when we import the movie file, the movie begins at measure 3.
        
        ![Screen Shot 2023-04-13 at 2.11.17 PM.png](Screen_Shot_2023-04-13_at_2.11.17_PM.png)
        
    3. In the `Open Movie` dialog box that appears, select both options to open the movie and to extract the movie’s embedded audio to a separate track within your Logic project.