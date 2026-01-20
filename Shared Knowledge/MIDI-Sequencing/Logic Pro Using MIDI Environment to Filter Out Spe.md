---
title: Logic Pro Using MIDI Environment to Filter Out Spe
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/daw/logic"
  - "#topic/midi"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.590562
---

# Logic Pro: Using MIDI Environment to Filter Out Specific MIDI CC Inputs

1. Open the ***MIDI Environment Window*** by pressing `command+0`
    
    ![CleanShot 2024-06-20 at 09.31.08.png](CleanShot_2024-06-20_at_09.31.08.png)
    
2. Add a ***Physical Input*** module via the ***New*** dropdown menu.
    
    ![CleanShot 2024-06-20 at 09.32.09.png](CleanShot_2024-06-20_at_09.32.09.png)
    
3. Add a ***Sequencer Input*** module via the ***New*** dropdown menu. 
    
    ![CleanShot 2024-06-20 at 09.37.12.png](CleanShot_2024-06-20_at_09.37.12.png)
    
4. Add a ***Transform*** module via the ***New*** dropdown menu.
    
    ![CleanShot 2024-06-20 at 09.36.25.png](CleanShot_2024-06-20_at_09.36.25.png)
    
5. Disconnect all the the existing patch cables by clicking on each cable and pressing the `delete` key on your computer’s keyboard.
    
    ![CleanShot 2024-06-20 at 09.47.42.png](CleanShot_2024-06-20_at_09.47.42.png)
    
6. Connect the output triangle on the ***Physical Input*** module of the physical MIDI controller that you want to filter out specific MIDI messages from to the ***Transform*** module. In this example, I will connect my “Arturia KeyLab Essential 49 MLIDI In” to the ***Transform*** module.
7. Then connect the output of the ***Transform*** module to the ***Sequence Input*** module.
    
    ![CleanShot 2024-06-20 at 09.49.46.gif](CleanShot_2024-06-20_at_09.49.46.gif)
    
8. Now,  open the ***Transform*** module by `double-clicking` on it.
9. Adjust the ***Transform*** module to remove the unwanted CC message. For this example, I will remove all CC1 messages sent on all channels from my “Arturia KeyLab Essential 49 MIDI Port”.
    
    ![CleanShot 2024-06-20 at 09.54.33.png](CleanShot_2024-06-20_at_09.54.33.png)
    

> [!note]
> 

1. If you have any additional physical controllers that you do not want to filter MIDI data from, connect their outputs on the ***Physical Input***  module directly to the ***Sequencer Input*** module.
    
    ![CleanShot 2024-06-20 at 09.58.09.gif](CleanShot_2024-06-20_at_09.58.09.gif)