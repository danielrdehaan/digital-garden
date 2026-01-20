---
title: The Basics of Sound, Audio, and Digital Audio (V2)
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/daw/reaper"
  - "#technique/quantization"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.621359
---

# The Basics of Sound, Audio, and Digital Audio (V2)

# The Basics of Sounds, Audio, and Digital Audio

*Revised by Daniel Dehaan, September 16, 2024* 

> [!note]
> <img src="https://www.notion.so/icons/bookmark_gray.svg" alt="https://www.notion.so/icons/bookmark_gray.svg" width="40px" />
> 
> - **Table of Contents:**

## What is Sound?

> We experience sound as a physical force in the real world (the space our bodies occupy).
> 

When an object moves, it pushes on the surrounding air molecules. Which, in turn, push against their surrounding air molecules. This outward moving force creates a wave of higher air pressure that emanates throughout the surrounding space. Once that initial wave of higher air pressure passes, the air molecules stretch back toward their starting position, resulting in a wave of low air pressure. If the sounding object continues to vibrate, the air will be filled with alternating waves of high and low air pressure.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/Sound-Waves-Animated.gif)

> 💡 To put it more simply, sound is a vibration through a medium.
> 

## Frequency & Amplitude

We can describe a sound by how quickly the air pressure changes from high to low (`Frequency`) and how significant the changes in air pressure are (`Amplitude`).

### Frequency (Pitch)

The `frequency` of a sound is determined by how many times it cycles between high and low air pressure within one second. It is typically measured in `Hertz` (`Hz`), with one Hz being equivalent to one cycle per second. The frequency of a sound wave is what we perceive as its `pitch`. In other words, a sound wave with a high frequency will be heard as a high-pitched sound, while a sound wave with a low frequency will be heard as a low-pitched sound.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/sound-frequency-925x1024.jpg)

> 💡 The human ear typically hears frequencies ranging from 20 Hz to around 20,000 Hz (or 20 kHz). As we age, we tend to experience a decreased sensitivity to higher frequencies.
> 

### Amplitude (Volume)

`Amplitude` is a measurement of the difference between the positive/maximum (high) air pressure and the negative/minimum (low) air pressure. The greater the difference, the higher the amplitude. The higher the amplitude, the louder a sound is perceived to be.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/amp_Strength.jpg)

## Measuring Amplitude (Decibels)

**Decibels are a Unit of Comparison.**

`Decibels` (`dB`) is the unit we use to compare the loudness of a sound against another. The `dB` scale is relative, which means it measures how much louder or quieter one sound is compared to another. For this reason, `0 dB` doesn't mean there's no sound; it's just a reference point.

### The Decibel Scale is Logarithmic

Our ears don’t hear volume changes in a linear way, so the `dB` scale is logarithmic to match. That means each step up is actually 10 times more powerful! For example, a sound at `30 dB` is ten times louder than a sound at `20 dB`, and a sound at `40 dB` is a hundred times louder than a sound at `20 dB`.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/HHF-Noise-Level-Chart-01.png)

## Phase

`Phase` describes where a repeating sound wave is at a specific moment in time in relationship to its movement from positive to negative air pressure. Often, this is described using degrees where `0º` means that it is at the start of its cycle, `180º` it is halfway through, and `360º` indicating that it is at the end of its cycle (which would be the same as `0º`).

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/Phase-Degrees_HxZqZmh.width-2360.jpg)

### Importance of Phase

Phase becomes really important when two or more sounds, or recordings, are combined together. For example, if two identical sound waves are `90º` out of phase, the resulting sound would be half as loud as the original.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/what-is-phase-alignment.jpg)

> 💡 Look at the second example in the image above, where the two waves are 180º out of phase with each other, and see if you can understand why this would result in perfect silence.
> 

## How do our ears work?

> Our ears work a lot like microphones, they translate perceived changes in air pressure to electrical signals.
> 

The outer part of our ears is called the `pinna`, and it is responsible for funneling most of the vibration around us into the `ear canal` and toward the `eardrum`. The `eardrum` is a thin, cone-shaped membrane that moves in response to the captured air pressure changes and relays those vibrations to three bones in the middle ear: the hammer (`malleus`), anvil (`incus`), and stirrup (`stapes`). These bones amplify the vibrations before they reach the `cochlea`, a snail-shaped structure filled with fluid, in the inner ear. Vibration causes the fluid inside the `cochlea` to ripple, and the motion is detected by hair-like cells, called `stereocilia`. These signals are passed through the `auditory nerve` to the brain, which interprets them as sound.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/EarPathway.gif)

> 💡 Our ears are also responsible for helping us stay balanced, which might have something to do with why we like to move our bodies in rhythm with the sounds we hear.
> 

### Common Hearing Issues

- **Tinnitus**: Ringing or buzzing in the ears.
- **Hearing Loss**: Can be caused by exposure to loud sounds, aging, or infections.
- **Preventive Measures**: Use ear protection, avoid prolonged exposure to loud sounds, and have regular hearing check-ups.

## Sound vs. Audio

While "sound" and "audio" are often used interchangeably, they do have slightly different meanings in a technical context.

### Sound

Refers to the mechanical waves of pressure and displacement, propagated through a medium (most commonly air) that our ears perceive. It is a physical event, involving variations in air pressure that our ears translate into different pitches, loudness levels, and tones.

### Audio

Refers to the recording, reproduction, or processing of sound, usually in a manner that humans can perceive. "Audio" is more closely associated with the technology and techniques used to capture, manipulate, and playback sound.

## Audio Cables

Audio cables can be categorized into two major groups, `balanced` and `unbalanced`, each consisting of common types used in various audio applications. Typical uses often depend on the environment (professional or consumer), the distance, and noise conditions.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/qgbf8tez57.jpg)

### Unbalanced Audio Cables

The most common types of unbalanced cables are:

1. **RCA Cables**: Often used for connecting consumer audio and video equipment like DVD players, TVs, and stereo receivers. They're also used with several professional audio devices.
2. **TS (Tip-Sleeve) Cables**: Typically used with instruments, such as connecting a guitar to an amplifier. They come in both 1/4" and 1/8" sizes, with the smaller size often used for headphones in consumer equipment.

Unbalanced cables contain two conductors: a signal and a ground. While they are more susceptible to interference and noise, especially over longer runs, their simplicity and cost-effectiveness make them common in consumer-level devices.

> 💡 The ground connection in an unbalanced audio cable provides a reference point for the signal and helps minimize interference and hum.
> 

### Balanced Audio Cables

The most common types of balanced cables are:

1. **XLR Cables**: Commonly used in professional audio applications, including microphones, mixers, and high-quality speakers. They're designed for long-distance runs and noisy environments due to their noise-cancellation properties.
2. **TRS (Tip-Ring-Sleeve) Cables**: Used in various contexts, such as connecting balanced equipment, sending stereo signals, or used as headphone cables in high-end equipment. The 1/4" TRS cables are often used for mixer and interface outputs, while the 1/8" TRS cables are often found in professional-grade headphones.

Balanced cables contain three conductors: a positive signal, a negative signal, and a ground. They offer the advantage of noise and interference rejection, making them more suitable for professional audio applications and environments with potential interference.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/Balanced-Unbalanced-Connections.jpg)

> ⚠️ Can I connect an unbalanced cable to a balanced cable?
> 
> - Yes, you can connect an unbalanced cable to a balanced input or output, but there are some things to consider:
>     1. When connecting an unbalanced cable to a balanced input, the wiring typically connects the signal wire of the unbalanced cable to the positive input of the balanced connection, and the ground wire to the negative and ground inputs.
>     2. If you connect an unbalanced output to a balanced input, you lose the noise-cancelling benefits of a balanced connection.
>     3. There are adapters and active boxes (like DI boxes) that can convert an unbalanced signal to a balanced one.
>     4. Be careful when connecting a balanced output to an unbalanced input, as it can sometimes result in lower signal level or potential distortion.

## Microphone Types

A microphone transforms acoustic energy, or sound waves, into electrical signals through a transducer, allowing the sound to be amplified, recorded, or transmitted.

### Dynamic Microphones

Used in live sound situations due to their durability. They work by using a magnet and a diaphragm to create an electrical signal in response to sound wave motion. Dynamic microphones do not typically require phantom power.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/shure-sm58-dynamic-vocalist-microphone.jpg)

### Condenser Microphones

Known for their sensitivity and accuracy in recording studios. They work by fluctuating electrical capacitance between two plates, where one acts as a diaphragm in response to sound waves. These microphones do require phantom power for their operation.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/condenser_microphones.png)

### Ribbon Microphones

Primarily used in studio settings to capture delicate sound. They work by passing a thin metal ribbon in a magnetic field, which induces an electrical current proportional to the sound waves hitting it. Traditional ribbon mics do not require phantom power and can potentially damage some models, but some modern ribbon mics are designed to use phantom power safely.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/mnm_Top_11_Best_Active_Ribbon_Microphones_On_The_Market_large_2.jpg)

### Lavalier Microphones

Small microphones used in broadcasting, theatre, and presentations. They work on the same principles as dynamic or condenser mics (depending on their design) but are miniaturized for discrete use. The need for phantom power depends on the type — condenser lavalier mics require phantom power, but dynamic ones do not. Wired lavalier mics often use a battery-powered belt pack.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/mnm_7_Best_LavalierLapel_Microphones_In_2020_Wired__Wireless_large.jpg)

> ⚡ Phantom power is a method used to supply operating voltage to certain types of audio equipment, like condenser microphones. It's called "phantom" because it's transmitted directly over the balanced audio signal lines, thus being virtually "invisible" or "phantom.” The most common form of phantom power is +48V.
> 

## Polar Pickup Patterns

A microphone's polar pickup pattern, also known as its directional pattern, represents its sensitivity to incoming sound waves from different directions. Some common types include:

- **Omnidirectional**: Picks up sound equally from all directions.
- **Cardioid**: Picks up most sound from the front and rejects sound from the back.
- **Bidirectional or figure-eight**: Picks up sound equally from the front and back but rejects sound from the sides.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/typical-microphone-polar-patterns.png)

> 💡 The appropriate pattern is chosen based on the recording situation and the specific audio that needs to be captured.
> 

## Frequency Response Charts

A frequency response chart for microphones and other audio equipment visually demonstrates how a particular device responds to different frequencies of the audio spectrum. It portrays the device's sensitivity or output across a range of frequencies, typically shown as a graph with frequency on the horizontal axis and output level on the vertical. This chart is crucial because it illustrates the tonal characteristics of the equipment: some frequencies may be accentuated (boosted), while others may be attenuated (reduced), contributing to the overall 'sound' of the device.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/raw-frequency-response-l-graph.png)

> 💡 Frequency response charts can be used to compare and choose microphones and other audio equipment based on their performance across the audible frequency range.
> 

## Mic Preamps

A microphone preamplifier, often known as a 'mic preamp,’ plays a crucial role in audio recording and reinforcement. Its primary function is to amplify the typically weak electrical signal generated by the microphone to a level strong enough for further processing, recording, or broadcasting. By boosting the signal, a preamp ensures that the nuances and details of the original sound are faithfully captured, minimizing the noise and distortion that can be introduced during the amplification process.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/preamp-main.jpg)

> 💲 Most audio interfaces include at least several built-in microphone preamps.
> 

## Analog vs. Digital

The terms "analog" and "digital" describe two methods of representing audio signals:

### Analog

Analog representation involves a continuous signal that mirrors the original sound wave. It's the method used in vinyl records and cassette tapes. Theoretically, it can capture the exact audio waveform, but in practice, it's more prone to degradation and noise.

### Digital

Digital representation involves capturing the audio signal by taking a series of measurements (sampled data) at distinct time intervals and then expressing each measurement as a binary number. Digital audio, used in CDs, MP3s, and other modern formats, is more resistant to noise and degradation, can be copied indefinitely without loss, and can be more easily edited and manipulated with software.

## Audio Interfaces

An audio interface is a key piece of equipment in digital audio production. It essentially acts as a bridge between your computer and the external audio equipment, such as microphones, studio monitor speakers, and musical instruments. Audio interfaces convert the analog signals from these devices into digital data for your computer to process.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/ScarletteInterface.jpg)

The interface can also do the reverse, converting digital audio data from your computer into an analog signal that can be played through speakers or headphones. It provides you with inputs for your microphones or instruments, outputs for speakers or headphones, and often includes a microphone preamplifier to boost the typically weak microphone signals.

## Analog-to-Digital Conversion (ADC)

Converting an analog audio signal into a digital format is known as Analog-to-Digital Conversion (ADC). The ADC process mainly involves two critical steps: sampling and quantization.

### Sampling

In this step, the continuous audio signal is measured at regular intervals, resulting in a series of snapshots or "samples.” The rate at which the samples are taken is called the `sampling rate`. A common sampling rate in audio recording is 44.1 kHz, which means 44,100 samples are taken per second. The Nyquist-Shannon sampling theorem dictates that the sampling rate should be at least twice the highest frequency you want to record to represent the signal accurately.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/sample_rate.png)

### Quantization

After sampling, each sample is converted or "quantized" into a digital format, usually a binary number. The bit depth determines the resolution of each sample - the higher the bit depth, the more accurately the sample represents the original analog signal at that point in time. Common bit depths in audio recording are 16-bit and 24-bit.

![](Digital%20Garden/Shared%20Knowledge/Attachments/The%20Basics%20of%20Sound,%20Audio,%20and%20Digital%20Audio%20(V2)/Bit_Depth.jpeg)

Once the audio signal has been sampled and quantized, the resulting digital data can be stored, manipulated, or played back by a digital audio system.

## Additional Resources

- [YouTube Playlist on Sound and Audio Basics](https://youtube.com/playlist?list=PLbqhA-NKGP6B6V_AiS-jbvSzdd7nbwwCw&si=Ccizxltx8Urjkeod)
- Reaper Project:
    
    [Audio File Format Comparison.zip](Audio_File_Format_Comparison.zip)