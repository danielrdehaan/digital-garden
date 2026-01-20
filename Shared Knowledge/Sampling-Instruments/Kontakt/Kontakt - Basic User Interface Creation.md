---
title: Kontakt - Basic User Interface Creation
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/sampling/kontakt"
  - "#technique/scripting"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.563436
---

# Kontakt - Basic User Interface Creation

> [!note]
> - View

# Instrument Resource Folder

If you plan on using custom images for the background, instrument icon, or controls, your Kontakt instrument will need to have a “Resource Folder” that contains all the images you plan on using. 

### Creating a Instrument Resource Folder

1. First, Save your instrument within a folder that will contain everything your instruments needs (the instrument “.nki” file, the samples, and, soon, all the additional Kontakt resource files and folders).

![Screen Shot 2022-03-14 at 12.44.36 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.44.36_PM.png)

> [!note]
> 

1. Next, then open the *Instrument Options* window.

![Screen Shot 2022-03-14 at 12.42.23 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.42.23_PM.png)

1. Near the lower right corner of the “Instrument” tab, click the “Create” button to create a Resource Container folder for your instrument. Save the Resource Container with the same name you saved your instrument, or if this is for a library of instruments, the name of your library.

![Screen Shot 2022-03-14 at 12.50.30 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.50.30_PM.png)

1. Click “Yes”, when Kontakt says, “No resource folder structure found. Would you like to create one?”

![Screen Shot 2022-03-14 at 12.52.12 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.52.12_PM.png)

1. Kontakt will then give you a report, showing everything that is currently contained inside the new resource folder (which is nothing). We’ll add a few things in a moment. So you can just click “OK” for now.

![Screen Shot 2022-03-14 at 12.52.46 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.52.46_PM.png)

1. Take a moment to review the contents of your instruments folder. It should look similar to the image below.

![Screen Shot 2022-03-14 at 12.55.11 PM.png](Digital%20Garden/Shared%20Knowledge/Attachments/Kontakt%20-%20Recreating%20Manther/Screen_Shot_2022-03-14_at_12.55.11_PM.png)

# Performance View

## Creating a Performance View

Each custom GUI starts by creating a what Kontakt calls a “Performance View” within the `on init` callback with the line `make_perfview`.

```xml
on init
	{Create a Performance View for this Script}
	make_perfview
end on
```

## Setting the Size of the Performance View

The size of the performance view can be set within the `on init` callback using the following two lines.

- Height in pixels: `set_ui_height_px(pixel height)`
- Width in pixels: `set_ui_width_px(pixel width)`
    
    ```xml
    on init
    	{Create a Performance View for this Script}
    	make_perfview
    
    	{Set the height and width of the performance view in pixels}
    	set_ui_height_px(205)
    	set_ui_width_px(633)
    end on
    ```
    

## Kontakt’s Units of Measurement

Kontakt can use two different units to set the size and placement of GUI objects or parameters: pixels or grid units.

For example, the height of the performance view can either be set to a specific number of pixels using the `set_ui_height_px` or it can be set to a specific amount of grid units using `set_ui_height`.

If a command ends in `px` it is using pixels. If it does not end in `px` it is using grid units.

A Kontakt performance view can be a maximum of 6 grid units wide and 16 grid units tall.

> [!note]
> 

# Adding a Custom Background

You can set the background image of a performance view by…

1. First creating and adding a custom PNG file to the `/Resources/Pictures/` folder. The PNG file should be the same width as the instrument’s performance view and the same height plus 70 pixels (to fill the area behind the instrument header).
2. Use the following line of code within the script’s `on init` callback to assign a custom PNG as the wallpaper image.
    
    ```html
    set_control_par_str($INST_WALLPAPER_ID,$CONTROL_PAR_PICTURE,"DRD_Manther_Main_Background")
    ```
    

> [!note]
> ⚠️ Unlike GUI controls, which can be dynamically assigned to custom images, each script’s performance view can only use one image file as its background and it can only be set within the `on init` callback. However, you can use an image that is taller than the performance view’s height and adjust its vertical offset using `set_skin_offset(<offset-in-px>)` 
> Here is a simple example:
> 
> [Kontakt - Basic GUI Example.zip](Kontakt_-_Basic_GUI_Example.zip)

# Adding a Custom Instrument Icon

---

To give your instrument a custom icon…

![Screen Shot 2022-03-14 at 1.14.02 PM.png](e91e4668-c649-4d0c-8061-303198609e57.png)

1. Create a custom PNG file that is 72 pixel tall by 72 pixels wide.
2. Add the custom PNG to the `/Resources/Pictures/` folder along with a plain `.txt` file with the exact same name as the custom PNG file. The `.txt` file should contain the following information including an empty line at the bottom.
    
    ```
    Has Alpha Channel: yes
    Number of Animations: 0
    Horizontal Animation: no
    Vertical Resizable: no
    Horizontal Resizable: no
    Fixed Top: 0
    Fixed Bottom: 0
    Fixed Left: 0
    Fixed Right: 0
    
    ```
    
3. Within your instrument’s script add the following line of code to the `on init` callback.
    
    ```html
    set_control_par_str($INST_ICON_ID,$CONTROL_PAR_PICTURE,"Name of PNG")
    ```
    

# UI Button

`ui_button` [KSP Reference Manual Link](https://www.native-instruments.com/ni-tech-manuals/ksp-manual/en/user-interface-widgets#ui_button)

---

## Creating a Button

```
declare ui_button $button
```

## Setting the Display Text

Only used if you are not assigned the button to a custom PNG

```
set_text($button, "I am a button!")
```

## Text Alignment

The text of displayed on a default button can be aligned left `0` , centered `1` , or right `2` using the following line of code.

```
set_control_par($button_id, $CONTROL_PAR_TEXT_ALIGNMENT, 1)
```

## Font Type

The font type can be set to any of the 25 fonts included in Kontakt.

![CleanShot 2024-04-01 at 21.40.41.png](CleanShot_2024-04-01_at_21.40.41.png)

```
set_control_par($button_id, $CONTROL_PAR_FONT_TYPE, 0)
```

Additionally the specific font used for each of the responsive states of the button can be set using the following:

- On: `$CONTROL_PAR_FONT_TYPE_ON`
- Off pressed:`$CONTROL_PAR_FONT_TYPE_OFF_PRESSED`
- On pressed: `$CONTROL_PAR_FONT_TYPE_ON_PRESSED`
- Off hover: `$CONTROL_PAR_FONT_TYPE_OFF_HOVER`
- On hover: `$CONTROL_PAR_FONT_TYPE_ON_HOVER`

## Setting the Width

Only used if you are not assigning the button to a custom PNG. If you assign a button to a custom PNG it will automatically adjust to fit.

```
set_control_par($button_id, $CONTROL_PAR_WIDTH, 120)
```

## Setting the Height

Only used if you are not assigning the button to a custom PNG. If you assign a button to a custom PNG it will automatically adjust to fit.

```
set_control_par($button_id, $CONTROL_PAR_WIDTH, 120)
```

## Custom PNG

Button’s can be assigned to a custom PNG image that contains six vertically aligned animation states.

![Button.png](Button.png)

The plain `.txt` files that accompanies the custom PNG files in the `/Resources/Pictures/` folder should be named the same as the custom PNG file and have the following information including an empty line at the bottom.

```
Has Alpha Channel: yes
Number of Animations: 6
Horizontal Animation: no
Vertical Resizable: no
Horizontal Resizable: no
Fixed Top: 0
Fixed Bottom: 0
Fixed Left: 0
Fixed Right: 0

```

# Creating a Custom Slide

`ui_slider` [KSP Reference Manual Link](https://www.native-instruments.com/ni-tech-manuals/ksp-manual/en/user-interface-widgets#ui_slider)

---

## Creating a Slider

```
declare ui_slider $<variable-name> (<min>, <max>)
```

## Assigning a Custom PNG

```
set_control_par_str($<slider id number>, $CONTROL_PAR_PICTURE, "<PNG Name>")
```

You can get the id number of a control using the `get_ui_id($<control>)` . Often times it is more efficient to store the id number in a variable. Then you can just use the variable whenever you need the id of a specific control.

```
on init
	make_perf_view
	
	declare ui_slider $my_slider (0, 1000000) {create the slider}
	declare $my_slider_id := get_ui_id($my_slider) {store its id as a named variable}
	set_control_par_str($<slider id number>, $CONTROL_PAR_PICTURE, "White-Knob") {use the named variable to assign the slider to a custom PNG}
end on
```

# Positioning Controls on the GUI

---