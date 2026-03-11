---
title: Pro Tools Session Prep
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/daw/logic"
  - "#topic/daw/cubase"
  - "#topic/daw/reaper"
  - "#topic/daw/pro-tools"
  - "#topic/midi"
created: 2026-01-19T15:58:16-06:00
modified: 2026-03-11T10:50:45-05:00
canvas_page_url: pro-tools-session-prep
---

### Approved PT Sessions [[2026-03-11 - Wednesday]] 
- [x] Ade Davis
- [x] Ariel Glassman
- [x] Frederique Le Duc-Moreau
- [x] Hei-man Crystal Yip
- [x] Henny Kim
- [x] Hugh Hawthorne
- [x] Ildar Kamalov
- [x] Jayln Lewis
- [x] Peace Lee
- [x] Riley Hodges
- [x] Samuel Garner
- [x] Sunny Youm
- [x] Yueqing Katie Li
# Exports from DAW Mock-up Session

- [ ]  All audio file exports should:
    - Start in measure one and are the same length;
    - Have a sample rate of 48000;
    - A bit depth of 24 Bits; and
    - Be of the file type “.WAV”
- [ ]  **Stereo Mix** (Rough Mix)
    - This should include both instruments that will be replaced during the recording session and any additional instruments/sounds that will not be replaced during the recording session.
    - This should sound as close as possible to what you want it to sound like the final product.
    - The file should be named: Your-Initials_Cue-Title_Rough-Mix_VersionNumber.WAV
        - e.g., “DRD_The-King_Rough-Mix_V002.WAV”
- [ ]  **Mix-Minus** - Everything that is not be recorded by live players in the session
    - If you have pre-records (instruments/sounds that will not be replaced with live instruments at the recording session), export a stereo mix without the instruments/sounds that will be replaced in the recording session.
    - Reduce the stereo width so that if the musicians only have one headphone side on they can still hear everything
    - Reduce the dynamic range (with volume faders NOT compressors) to make it easier to hear whats in the room (being recorded) over big impacts/etc. in the Mix Minus.
    - Sessions often require multiple version of this depending on what musicians are present for different parts of the session.
    - The file should be named: Your-Initials_Cue-Title_Mix-Minus_VersionNumber.WAV
        - e.g., “DRD_The-King_Mix-Minus_V002.WAV”
- [ ]  **Mock Up** - String Mix - (ONLY NEEDED FOR THE BUDAPEST SESSION)
    - Stereo mix of just the strings that will be replaced in this recording session.
- [ ]  **Multi-Track** (A.K.A. All individual Pre-Records) - (NOT NEEDED ON THE BUDAPEST SESSION)
    - If you have pre-records, export each as an individual audio file without any mixing or mastering effects applied.
    - Each file should be named: You-Initials_Cue-Title_Instrument-Name.WAV
        - e.g., “DRD_The-King_Low-Synth.WAV”
- [ ]  **Click**
    - Render a click track to be used as a backup in the event of issues during the recording session
    - Your click should
        - Be mono;
        - Start in measure one and continue through the last measure of music;
        - Follow all tempo/meter changes and provide proper subdivisions/groupings as needed; and
        - No accents (so there is no headphone bleed)
        - Use the standard UREI Click sound.
            
            [UREI Click 48k WAV.wav.zip](Digital%20Garden/Shared%20Knowledge/Attachments/Pro%20Tools%20Session%20Prep/UREI_Click_48k_WAV.wav.zip)
            
        - The file should be named: You-Initials_Cue-Title_Click.WAV
            - e.g., “DRD_The-King_Click.WAV”
        - Here are some guides that may be helpful in producing your click tracks:
            - [Logic Pro](Logic%20Pro%20Changing%20the%20Default%20Click%20Sound%202d9ab915a02c45da810e5abf76662a25.md)
            - [Cubase](Cubase%20Changing%20the%20Default%20Click%20Sound%2040be890a171f455a970ff6f4a1b3e6ed.md)
            - [Reaper](https://www.youtube.com/watch?v=buSuApphPj8&ab_channel=DanielDehaan)
            - Here is a short video showing why an “audio click” can be super helpful in a recording session:
                
                ![](https://youtu.be/wIfDXDd2YPQ)
                
- [ ]  MIDI File
    - This file will be used to import all your tempo and meter changes into your Pro Tools project, will be host all your audio files, and be used during the recording sessions
    - Export a standard MIDI file that begins in measure one and continues through the last measure of music.
    - Your MIDI file should include all tempo and meter changes, AND be aligned exactly with your score.
    - Your MIDI file should be named: Your-Intials_Cue-Title_TempoMap.mid
        - e.g. “DRD_The-King_TempoMap.mid”

# Pro Tools Session

1. Create a new Pro Tools Sessions
    - [ ]  Project Title: Your-Initials_Cue-Title
        - e.g., “DRD_The-King”
    - [ ]  File Type: BWF (.WAV)
    - [ ]  Sample Rate: 48 kHz
    - [ ]  Bit Depth: 24-Bit
    - [ ]  Interleaved ✅
2. Import your MIDI Tempo Map
    - [ ]  Check that all measure numbers, tempo, and meter changes match your score and mockup exactly.
3. After confirming that everything aligns, delete all the MIDI files and tracks (you only needed the MIDI file for importing the tempo and meter changes).
4. Import all session audio files.
    
	*Copying files while importing makes copies of the audio files within the project’s audio folder and will ensure that your Pro Tools project will have all the necessary files when opened during the recording session.*
	*Simply “adding” your audio files does not copy the files into the Pro Tools project, and you will be missing these files when you open your project at the recording session.*
    
5. Color and order each of your tracks as follows:
    - Click
        - Color = Yellow
    - Mix-Minus
        - Color = Blue
    - Rough Mix
        - Color = Green
    - Individual Pre-Records [Named Logically]
        - Color = Purple
6. Listen to each track and ensure everything sounds correct, is properly aligned to the tempo map, and matches the score exactly.
7. Mute all tracks except the Click and Mix-Minus tracks.
8. Save your Pro Tools project.
9. Ensure all your audio files are in your Pro Tools project’s “Audio” folder.
10. Upload your entire Pro Tools project to the designated folder on Sharepoint.
11. Download your Pro Tools project to another computer with Pro Tools and confirm that everything is open and plays correctly.