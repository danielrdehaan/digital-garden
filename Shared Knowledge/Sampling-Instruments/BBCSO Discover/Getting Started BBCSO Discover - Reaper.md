---
title: Getting Started BBCSO Discover - Reaper
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/daw/reaper"
  - "#topic/sampling/orchestral"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.550657
---

# Getting Started: BBCSO Discover - Reaper

> [!note]
> 

> [!note]
> 

- Table of Contents

# Overview:

While Reaper tends to be a little bit more of the tinkering musician's DAW, often a little bit of tinkering yields some pretty hefty workflow enhancement. In this case, taking a little bit of time to configure a few extensions turns Reaper into an awesome DAW for creating orchestral music.

![Screen Shot 2021-10-13 at 7.16.27 PM.png](Screen_Shot_2021-10-13_at_7.16.27_PM.png)

# Installation & Configuration:

## Reaper

First make sure that you have installed [the latest version of Reaper](http://reaper.fm/download.php). 

> [!note]
> 

## SWS Extension

The SWS Extension is a set of user-created add-ons that extended and enhance the functionality of Reaper.

### Installation

1. Quit Reaper.
2. [Download](https://www.sws-extension.org/) the correct version of the SWS Extension for your operating system.
3. Open the downloaded content and follow the included installation instructions.
4. Restart Reaper.

> [!note]
> You can approve each file by right-clicking on it and selecting "Open." You then will see a pop-up notification asking if you would really like to open this file, click "Open" or "Yes."

## ReaPack

ReaPack is a package manager for Reaper extension. It can be used to discover, install, and update  Reaper resources including ReaScripts, JS effects, extensions, themes, language packs, templates, web interfaces, and more.

### Installation

1. Quit Reaper.
2. [Download](https://reapack.com/) the correct version of ReaPack for your operating system.
3. From the `Menu Bar` in  `Reaper click Options > Show REAPER resource path in explorer/finder`
4. Then move the downloaded file into the `User Plugins` folder.
    
    > [!note]
> You can approve the file by right-clicking on it and selecting "Open." You then will see a pop-up notification asking if you would really like to open this file, click "Open" or "Yes."
    
5. Restart Reaper.
6. After restarting Reaper, you should see a window confirming that you have successfully installed ReaPack.

## JS_ReaScriptAPI Extension

With the ReaPack Package Manger freshly installed, it can now be used to install the js_ReaScriptAPI extension. This extension works as a facilitator/connector for some of the more advanced functionality of the Reaticulate Extension which will be installed next. More information about this Reaper Extension can be found on the project's forum thread: [https://forum.cockos.com/showthread.php?t=212174](https://forum.cockos.com/showthread.php?t=212174) 

### Installation

1. From Reaper's `Menu Bar`, navigate to `Extension > ReaPack > Browse Packages.`
    
    ![Screen Shot 2021-10-13 at 5.45.21 PM.png](Screen_Shot_2021-10-13_at_5.45.21_PM.png)
    
2. Then Filter for "reascriptapi"
3. Right click on the `js_ReaScriptAPI: API functions for ReaScripts` and choose `Install`.
4. Then click the `Apply` button in the bottom right corner of the `Browse Packages` window.
5. You may now close, the `Browse Packages` window and restart Reaper

## Reaticulate

Reaticulate provides a virtual instrument articulation management system for Reaper. More information about this Reaper Extension can be found on the project's website: [https://reaticulate.com/](https://reaticulate.com/)

### Installation

1. In Reaper's `Menu Bar` navigate to `Extensions > ReaPack > Import Repository`
2. In the Import Repositories window that appears, paste in this URL and click "OK": `https://reaticulate.com/release.xml`
    
    ![Screen Shot 2021-10-13 at 5.57.16 PM.png](Screen_Shot_2021-10-13_at_5.57.16_PM.png)
    
3. Back in Reaper's `Menu Bar`, navigate to `Extension > ReaPack > Browse Packages` and filter for "Reaticulate"
    
    ![Screen Shot 2021-10-13 at 6.00.18 PM.png](Screen_Shot_2021-10-13_at_6.00.18_PM.png)
    
4. Once found, right-click on the `Reaticulate: an articulation management system for Reaper` package and choose `Install`.
5. Then click the `Apply` button in the bottom right corner of the `Browse Packages` window.
6. You may now close, the `Browse Packages` window and restart Reaper

### Reaticulate Setup

Before we can begin to use Reaticulate to control all the articulations included in each of the BBCSO Discover instruments, we'll need to edit Reaticulates preferences file.

1. Begin by open the main Reaticulate window via Reaper's `Actions List` found in Reaper's `Menubar > Actions > Show Actions List...`
2. Filter the Actions List for "Reaticulate_Main" 
    
    ![Screen Shot 2021-10-13 at 6.31.05 PM.png](Screen_Shot_2021-10-13_at_6.31.05_PM.png)
    
3. Select the `Script: Reaticulate_Main.lua` action and click the `Run/close` button near the bottom right corner of the `Actions Lists` window. 
    
    > [!note]
> 
    
4. Open Reaticulate's preference file by clicking pencil icon near the top right corner of the `Reaticulate` window and selecting "Edit in TextEdit" 
    
    ![Screen Shot 2021-10-13 at 7.02.22 PM.png](Screen_Shot_2021-10-13_at_7.02.22_PM.png)
    
5. Finally, paste the following text into the `Reaticulate.reabank` file. Then save and close it.
    
    ```java
    // -----------------------------------------------------------------------------------------------
    // Spitfire BBCSO Discover Strings ---------------------------------------------------------------
    // -----------------------------------------------------------------------------------------------
    
    //! colors=default=#222222
    //! colors=legato=#F29559
    //! colors=legato-light=#F194B4
    //! colors=legato-dark=#F194B4
    //! colors=long=#467599
    //! colors=long-light=#F194B4
    //! colors=long-dark=#9381FF
    //! colors=short=#84DCC6
    //! colors=short-light=#F29559
    //! colors=short-dark=#84DCC6
    //! colors=textured=#9381FF
    //! colors=fx=#D81159
    
    //! g="Spitfire/BBCSO Discover Orchestra/Strings" n="BBCSO Discover - Violins 1"
    //! m="Keyswitches"
    Bank 65 1 - "BBCSO Discover Orchestra Violins 1"
    //! c=myColor i=legato o=note:0
    1 Legato
    //! c=long i=note-whole o=note:1
    2 Long
    //! c=short i=spiccato o=note:4
    3 Spiccato
    //! c=short-light i=pizz o=note:6
    4 Pizzicato
    //! c=textured i=tremolo o=note:8
    5 Tremolo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Strings" n="BBCSO Discover - Violins 2"
    //! m="Keyswitches"
    Bank 65 2 - "BBCSO Discover Orchestra Violins 2"
    //! c=long i=note-whole o=note:0
    1 Long
    //! c=short i=spiccato o=note:1
    2 Spiccato
    //! c=short-light i=pizz o=note:2
    3 Pizzicato
    //! c=textured i=tremolo o=note:3
    4 Tremolo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Strings" n="BBCSO Discover - Violas"
    //! m="Keyswitches"
    Bank 65 3 - "BBCSO Discover Orchestra Violas"
    //! c=long i=note-whole o=note:0
    1 Long
    //! c=short i=spiccato o=note:1
    2 Spiccato
    //! c=short-light i=pizz o=note:2
    3 Pizzicato
    //! c=textured i=tremolo o=note:3
    4 Tremolo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Strings" n="BBCSO Discover - Celli"
    //! m="Keyswitches"
    Bank 65 4 - "BBCSO Discover Orchestra Celli"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=spiccato o=note:1
    2 Spiccato
    //! c= default i=pizz o=note:2
    3 Pizzicato
    //! c= default i=tremolo o=note:3
    4 Tremolo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Strings" n="BBCSO Discover - Basses"
    //! m="Keyswitches"
    Bank 65 4 - "BBCSO Discover Orchestra Basses"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=spiccato o=note:1
    2 Spiccato
    //! c= default i=pizz o=note:2
    3 Pizzicato
    
    // -----------------------------------------------------------------------------------------------
    // Spitfire BBCSO Discover Winds -----------------------------------------------------------------
    // -----------------------------------------------------------------------------------------------
    
    //! g="Spitfire/BBCSO Discover Orchestra/Winds" n="BBCSO Discover - Piccolo"
    //! m="Keyswitches"
    Bank 65 5 - "BBCSO Discover Orchestra Piccolo"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Winds" n="BBCSO Discover - Flutes a3"
    //! m="Keyswitches"
    Bank 65 6 - "BBCSO Discover Orchestra Flutes a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Winds" n="BBCSO Discover - Oboes a3"
    //! m="Keyswitches"
    Bank 65 7 - "BBCSO Discover Orchestra Oboes a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Winds" n="BBCSO Discover - Clarinets a3"
    //! m="Keyswitches"
    Bank 65 8 - "BBCSO Discover Orchestra Clarinets a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Winds" n="BBCSO Discover - Bassoon a3"
    //! m="Keyswitches"
    Bank 65 9 - "BBCSO Discover Orchestra Bassoon a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    // -----------------------------------------------------------------------------------------------
    // Spitfire BBCSO Discover Brass -----------------------------------------------------------------
    // -----------------------------------------------------------------------------------------------
    
    //! g="Spitfire/BBCSO Discover Orchestra/Brass" n="BBCSO Discover - Horns a4"
    //! m="Keyswitches"
    Bank 65 10 - "BBCSO Discover Orchestra Horns a4"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Brass" n="BBCSO Discover - Trumpets a3"
    //! m="Keyswitches"
    Bank 65 11 - "BBCSO Discover Orchestra Trumpets a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Brass" n="BBCSO Discover - Tenor Trombones a3"
    //! m="Keyswitches"
    Bank 65 12 - "BBCSO Discover Orchestra Tenor Trombones a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Brass" n="BBCSO Discover - Bass Trombones a3"
    //! m="Keyswitches"
    Bank 65 13 - "BBCSO Discover Orchestra Bass Trombones a3"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    
    //! g="Spitfire/BBCSO Discover Orchestra/Brass" n="BBCSO Discover - Tuba"
    //! m="Keyswitches"
    Bank 65 14 - "BBCSO Discover Orchestra Tuba"
    //! c=default i=note-whole o=note:0
    1 Long
    //! c= default i=staccato o=note:1
    2 Staccatissimo
    ```
    

> [!note]
> 

# Reaper Template

Breathe a sigh of relief, the hard work is over and we are nearly ready to start making some sweet sweet orchestral music. Last, but not least we need to download and open the Reaper Project Template which organizes all the BBCSO Discover instrument into easily manageable groups with two dedicated reverb tracks per group.

![Screen Shot 2021-10-13 at 7.16.27 PM.png](Screen_Shot_2021-10-13_at_7.16.27_PM.png)

Here is the Reaper Project Template:

[TEMPLATE - BBCSCO Discover-V002.RPP.zip](TEMPLATE_-_BBCSCO_Discover-V002.RPP.zip)