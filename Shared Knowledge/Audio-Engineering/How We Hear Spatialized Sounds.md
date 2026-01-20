---
title: How We Hear Spatialized Sounds
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/daw/logic"
  - "#technique/spatial-audio"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.557078
---

# How We Hear Spatialized Sounds

- Table of Contents

---

# Introduction

---

[Please forgive this thumbnail image for this video. The video features the use of a pellet rifle to retrieve a stuck drone aircraft from a tree.](https://youtu.be/Oai7HUqncAA)

Please forgive this thumbnail image for this video. The video features the use of a pellet rifle to retrieve a stuck drone aircraft from a tree.

When considering what techniques are available for positioning a sound in space, it is essential first to understand how humans can perceive a sound’s location in three dimensions with only two ears. While most of the spatialization techniques that have developed from replicating human spatial audio perception remain similar across audio delivery systems (e.g., stereo vs. surround, speakers vs. headphones), there are unique difficulties, as well as some compelling benefits and future potentials, of each system and the audio file formats associated with them. As a result, a discussion of possible delivery systems and their related file formats will help a creator make choices and troubleshoot any issues that may arise when spatializing audio within each format. Finally, with the proliferation of powerful personal electronic devices that are making immersive, but more importantly, interactive virtual environments (e.g., YouTube/Facebook 360, augmented reality, virtual Reality) more widely accessible, replicating or modeling the ways a sound interacts with its surroundings is becoming more and more vital to giving the listener a more realistic sense of auditory presence.

# Spatial Perception

---

Identifying a sound’s spatial location requires listening for different cues in each of the four sonic dimensions: lateral, front/back, elevation, and distance. In each of these dimensions, a sound's component frequencies or qualities will affect how, or if, localization is possible.

## Lateral Perception

A listener can reliably identify the lateral location of a sound by perceiving differences in amplitude and timing between each ear.

### Amplitude

Generally, when a sound is louder in one ear than the other, the listener will perceive the sound as being on whichever side is louder. The bigger the differences in amplitude (*interaural intensity differences*, IID), the more to one side or the other it will appear to be. However, sounds below ~800 hertz (Hz) become increasingly difficult to discern IID because of the size of their wavelength relative to the listener's head. In this range, *interaural time differences* may help.

### Timing

Human ears are, on average, 21.5 centimeters apart. Sound travels through air at approximately 343,000 centimeters per second, resulting in small timing differences in the range of 0 to ~625 microseconds, depending on a sound's location. These differences are called interaural time differences, or ITD, and two aspects of ITD help a listener locate a sound: onset/arrival, and, more subtly, phase relationship.

### Onset Timing

A sound that originates from one side will arrive at the nearest ear first before arriving at the other. The greater the ITD of the sound’s arrival, the more it will appear to be to one side or the other. If a sound has no clear onset quality, listening for interaural phase differences can aid in locating the sound.

### Interaural Phase Relationships

From 0 to ~80 hertz, the wavelengths are too large in relationship to most heads, and both IID or interaural phase differences are too minuscule to be detected, giving the sensation of an omnidirectional sound.

For frequencies from around 80 to ~800 Hz, IID is too challenging to identify, but phase differences can be detected and relied upon for localization.

There is a sweet spot from ~800 to ~1600 Hz where both IID and ITD are useful for sound localization but sounds above this range have too small wavelengths, completing more than half a cycle within 21.5 cm. While interaural phase differences can still be detected, they can no longer be used to locate a sound accurately. Much like the illusion of a forward rotating wheel appearing to rotate backward when captured on film, the interaural phase relationship of a sound above ~1600 Hz can be deceptive as to its origin direction.

The wavelength of frequencies that exceed ~1600 Hz becomes small enough to be obfuscated by the average human head. If a sound contains a frequency above ~1600 Hz, subtle high-frequency attenuation will be audible at the ear opposite from the sound origin. This phenomenon is known as *head shadowing.* Listening for head shadowing can help with localization.

## Front/Back and Elevation

If a listener cannot alter the axis relationship of their ears to a sound, they may not rely upon IID or ITD for determining if a sound is in front of, behind, above, or below them. Instead, they must listen for spectral modifications caused by their head, neck, torso, and pinnae (outer ear). While the lateral perceptions of a sound are already somewhat person-specific—where the distance between the listener’s ears determines the frequency crossovers between the different lateral localization modes—the way bodies spectrally modify sounds depending upon their spatial relationship to the sound is person- and even clothing -specific. The individual nature of how sound localization works becomes a significant hurdle for delivering 360° audio environments that accurately translate to each listener.

### Direction Selective Filters

Similar to head shadowing, the shape of a listener’s head, neck, torso, and pinnae filter the sound differently depending upon its relative location. For example, consider a sound that is directly behind a listener. The sound will arrive at both ears simultaneously, eliminating the use of both IID and ITD, but because the listener’s ears are angled slightly forward, some higher frequencies will be filtered out (reflected off the backs of the ears). The sound that is received by the listener's ears will have a different spectral characteristic than if that same sound source originated from in front of the listener.

### Head-Related Transfer Functions

A person's Direction Selective Filters are captured in an anechoic chamber as Head-Related Impulse Responses (HIRR). This process involves placing small microphones in each of the listener's ears, and recording either white noise pulses or full-spectrum sine tone sweeps for a higher signal-to-noise ratio (SNR) at as many points as possible in a one-meter sphere surrounding the listener. An HRIR records how the listener’s body alters any frequency arriving from any of those recorded locations. A captured HRIR can then be applied to any sound as a Head-Related Transfer Function (HRTF) to deceive a listener into believing the sound is coming from some location as the applied HRTF.

### Head Motion

Head motion is one final localization strategy. A listener can rotate their head to align their ears along any axis and turn any challenging perceptual axis into a lateral localization problem.

## Distance

Detecting the distance to a sound is relatively simple, but as will be seen later, accurately recreating the sensation of distance in synthetic audio environments can be the key to successfully immersing the listener. Perceiving a sound's distance requires listening beyond IID, ITD, and HRTFs to cues given to us by the sound’s environmental interactions.

### Loudness

For sound sources that are familiar—a car engine, a musical instrument, or someone speaking—one way to determine its distance with relative accuracy is by comparing previous experiences with similar sounds against the sound’s current perceived volume. With strange sounds, listening for relative volume changes over time can reveal if the sound is, at the very least, moving closer or further away. Listening to other environmental cues can help determine its distance if the sound is not moving.

### Initial Time Delay

If the environment has sonically-reflective surfaces, a sound's approximate distance can be discerned by comparing the arrival time of the direct sound against the arrival of the first reflections of that sound off the surrounding surfaces. The longer the time between the direct sound and the reflected sound, the closer the sound is perceived to be. This method is not an option in open environments that are void of any nearby reflective surfaces.

### The Ratio of Direct Sound to Reverberation

The late reflections or diffusion of a sound within a reverberant space will eventually overpower the direct component of a sound when it gets too far away from the listener. A similar result may also occur if a wall or large object occludes the direct path from the sound to the listener.

### Motion Parallax

How quickly a sound can shift perceptually from the left or right side can indicate how far away a sound is. Something very close will quickly transfer from one side to the other, while a sound further away will take longer.

### High-Frequency Attenuation

Higher frequencies tend to be reflected and more easily absorbed by objects, or the medium (air) through which they are traveling, so as a sound gets further away, its higher frequency content will decrease in amplitude more rapidly than its lower frequency components. The effect is very subtle and usually not audible until the sound is hundreds, if not thousands, of feet away, but this is one final sonic distance cue.

## Audio Delivery Systems

Before looking at spatializing a sound in artificial environments, a brief pause should be taken to consider the systems currently available for audio delivery. Each system has its own set of benefits and limitations.

### Personal Delivery Systems

For a growing portion of the population, the most common way to consume music is through a personal listening system, like over-ear headphones or earbuds. Personal listening systems are currently the ideal means for experiencing spatial audio environments. Typically, personal listening systems allow for better acoustic isolation from the external world, simplified implementation of head-tracking, avoidance of the many issues that may arise when applying HRTFs for sound localization, keeping the listener in the “sweet spot,” and maximum – to name a few.

Personal delivery systems come in a variety of forms.

### Closed-Back Headphones

Closed-back headphones can offer great acoustic isolation and generally better low-frequency response but at the potential cost of long-term comfort and accurate sound reproduction due to internal resonance and pinnae deformations. Closed-back headphones can either be on-ear or over-ear. Over-ear closed-back headphones offer superior acoustic isolation and comfort, but on-ear closed-back headphones are more portable and affordable.

### Open-Back Headphones

Open-back headphones can be more comfortable over extended listening sessions and deliver a more natural-sounding spatial representation at the cost of less acoustic isolation from the external world. Almost all open-back headphones are designed to fit over the listener’s ears.

### Earbuds

As the cheapest and most accessible personal listening solution, earbuds also tend to offer the lowest audio fidelity, least acoustic isolation, and poorest bass response. Excellent low-frequency response is not necessarily relevant to audio spatialization, but can significantly raise the level of immersion or sense of presence the listener experiences.

### In-Ear Monitors

In-Ear Monitors create the best situation for delivering high-quality spatialized audio experiences. They usually offer excellent frequency responses across the full range of human hearing and a high degree of acoustic isolation from the outside world. They also bypass any spectral modification from the listener’s pinnae. However, they also bypass the ear canal, preventing the proper reception of HRTFs.

## External Delivery Systems

Historically thought of as providing a bettering listening experience, current consumers are trending away from traditional hi-fi home stereo systems and towards more portable wireless solutions. However, traditional and contemporary wireless home stereo systems are inferior to personal systems delivering spatial audio. Discussing these systems and their specific spatialization techniques is still important, but their limitations make them impractical for use in widely distributed interactive and immersive audio environments.

Today, probably the most used external delivery systems are the speakers built-in to our personal-electronic devices (e.g., mobile phones, laptops, hand-held game consoles). These speakers typically have very narrow frequency response ranges and little, if any, separation. Some listeners may use Bluetooth/wireless speakers that offer broader frequency responses but deliver poor channel separation and add audio/visual synchronization issues. While there are undoubtedly spatial translation issues when using personal delivery systems, many more issues can arise when using speakers: poor isolation, no head-tracking, narrow “sweet spots,” and room effects.

Two final and significant limitations of delivering spatial audio with external delivery systems are accessibility and portability. An ideal speaker setup would require two speakers to the front left and front right of the listener for delivering lateral stereo audio and two to the rear left and rear right for front/back stereo audio.

Only two dimensions of audio are possible with four speakers. To complete the third dimension, another set of four speakers above the listener, and another set of four speakers below the listener, and the ability to suspend the listener in the exact center of all twelve of these speakers is needed. Moreover, this list does not even account for the additional equipment and cabling required to power and run this system. The cost, ongoing maintenance, and expertise required to properly install, calibrate, and operate such a system dramatically limit the availability and portability of an external system capable of delivering compelling spatial audio experiences.

Negatives aside, using external speaker systems for delivering spatial audio experiences makes group experiences and real spatialization possible. Such systems can also simplify the computations and processing required to create complex spatial effects.

### Standard-Speaker Configurations

Many configurations are possible, but there are several standard surround-sound speaker setups. Each configuration will commonly have a subwoofer and a center channel added. The subwoofer is used to extend the frequency range and can be positioned in various locations because of the omnidirectional behavior of low frequencies. The center channel is usually reserved for dialog and placed directly in front of the listener in line with the front two speakers.

### Stereo

Two speakers are positioned with the listener in an equilateral triangle and at ear level.

### Quadraphonic

A front stereo pair and a rear stereo pair of speakers. There are a variety of ways to arrange four speakers. Most computer/academic music positions the speakers in a perfect square, with the listener at the very center and ear level.

### 5.1 Surround Sound

Commercial or home theaters typically expand on the quadraphonic setup by adding a center speaker in front of the listener and a subwoofer. The front speakers are then repositioned to be at ear level with a 20-30˚ angle toward the listener, and the rear speakers are placed nearly alongside and slightly above ear level with a 90-110˚ orientation, respectively.

### Octaphonic

Implied by the name, octaphonic arrangements use eight equally spaced speakers at ear level in either a circle or a square with the listener at the center. Two conventional channel ordering is commonly used: Stereo pairs equally spaced from the front to the rear, or a clockwise ring numbered sequentially starting directly in front of the listener.

### Further Channel Expansion

Larger commercial movie theaters and specialized music venues/research facilities often expand upon these standard speaker arrangements by adding speakers along the horizontal and vertical planes.

Adding along the horizontal plane can increase lateral localization accuracy and expand the “sweet spot,” positioning more listeners in the ideal listening zone. Adding speakers above and below the audience allows for the vertical placement of sounds and can substantially add to the audience’s sensation of envelopment in the sonic environment.

## Distribution Formats

In addition to knowing the delivery system, knowing the audio delivery format can also dictate which spatialization techniques will be available and most effective. The following are some of the often-heard terms about audio file formats, and their significance in delivering spatialized audio.

### Compressed vs. Uncompressed

Digital audio file types fall into two major categories: compressed and uncompressed. Most portable electronic devices default to compressed audio files because they require less storage space than uncompressed. Both compressed and uncompressed audio files can deliver spatial audio, but some compressed audio formats can introduce sonic degradation that may alter or confuse spatial effects.

The two primary uncompressed audio files are Waveform Audio File Format (.WAV) and Audio Interchange File Format (.AIFF).

### Lossless

Lossless compression algorithms decrease the amount of storage a file requires without removing or losing any information.

As an example, we could take this series of numbers:

00000000 11111111 000 111 00 11 0 1

Which could be expressed more efficiently as:

80 81 30 31 20 21 10 11

Compressing an audio file without losing any of the original data is a little bit more complicated than the aforementioned example, but hopefully, it provides the general concept of how lossless compression can work.

Some common lossless audio file formats are:

*Free Lossless Audio Codec* (FLAC) uses a linear prediction method for compressing files by 40% to 70%.

*Apple Lossless Audio Codec* (ALAC), which is commonly stored within a MPEG 4 Audio container file (M4A), also uses a linear prediction method capable of reducing files by as much as 60% of their original size.

### Lossy

Lossy compression can be a significant concern even for non-spatialized audio because file sizes are reduced by removing information from the file.

The Motion Picture Experts Group Layer-3 (MP3) file was conceived when exchanging and storing large amounts of data was still costly. The developers of the mp3 discovered they could reduce an audio file’s size by removing information that was considered less perceptually relevant. As has been seen, however, accurate delivery and localization of spatial audio depends on the faithful reproduction of the entire audio signal.  Removing or altering the audio in any way can distort or confuse the listener’s ability to locate the sound. Some common lossy audio file formats are:

Motion Picture Experts Group Layer-3 Audio (MP3)

Advanced Audio Coding (AAC)

### File Container Formats

Arising in the early 2000s, the OGG file is a free and accessible example of a flexible file container format that can carry a range of both lossless and lossy audio file formats along with video files. Several other container formats are QuickTime’s .MOV, the Motion Picture Experts Group (MPEG) file stream, and the Audio Video Interleave (AVI) file.

While file container formats can offer many conveniences for developers and audio professionals, they can be risky to work with because it can be difficult to determine which file formats they can contain.

### Discrete vs. Matrixed

Surround audio delivers the information to each output channel as either a discrete or matrixed data stream. For a discrete channel, the preferred and more precise of the two, all the audio information streaming to an output channel is unique and independent of all the others. A matrixed channel, on the other hand, borrows portions of another channel’s stream of audio information to create a faux surround experience.

### Ambisonics

Ambisonic audio has been around since its development in the 1970s by the British National Development Corporation and is perhaps the most useful, and yet misunderstood audio format for efficiently capturing, creating, and distributing surround audio experiences. For most of its lifetime, Ambisonic audio has only been used by academics and audiophiles. However, with the recent arrival of more portable, visually immersive, and interactive digital environments, Ambisonic audio is finally finding large-scale commercial applications.

Ambisonic Orders

Ambisonic audio ranks its spatial accuracy in terms of order. The greater the order of Ambisonics, the higher the spatial resolution and the more audio channels are required to capture and store all the spatial information. Imagining an array of microphones with different pickup patterns, capturing the sound at a single point from different directions, is the best way to explain how Ambisonic audio works and what differentiates its orders.

### Zeroth-Order

Ambisonics would be the equivalent of listening to a room with an omnidirectional microphone – all sounds are heard without spatial information.

### First-Order (FOA)

Ambisonics requires four channels of audio, referred to as W, X, Y, and Z. Continuing with the imagined array of microphones, First-Order Ambisonics maintains the omnidirectional microphone (W) but adds three bidirectional microphones oriented along the three-dimensional axes: left/right, front/back, and up/down.

### Second-Order (SOA)

Ambisonics requires nine audio channels (WXYZRSTUV) and adds five additional bidirectional microphones to the imagined array, each oriented along an evenly distributed axis.

### Third-Order (TOA)

Ambisonics requires 16 audio channels (WXYZRSTUVK LMNOPQ) and adds another seven bidirectional microphones.

### Higher-Orders (HOA)

Higher-Order Ambisonics (HOA) is possible but is currently uncommon because of the required channels. As an example, Sixth-Order Ambisonics would require 49 channels of audio.

### Ambisonic Formats

Ambisonic audio has several different formats. Each format references the different states of Ambisonic audio from capture to playback. Rarely are any of these formats discussed except A- and B-Format.

### A-Format

The direct signal is captured by an Ambisonic microphone.

### B-Format

The encoded audio signal is stored as a multichannel-audio file ready for decoding/playback. Usually refers to First-Order (4-channel) files but can also be used to describe higher orders.

### C-Format (Consumer Format)

A proposed format in the early days of Ambisonic audio that strove to make the playback of Ambisonic audio possible on home stereos. It was not widely adopted and is rarely used today.

### D-Format

An Ambisonic audio stream decoded for any delivery system/configuration.

### G-Format (Geoffrey’s Format)

Named by its inventor Geoffrey Barton, it was another attempt at driving the commercial adoption of Ambisonics by creating a default decoded format for 5.1 home theater setups.

### Additional Formats

In addition to the lettered formats listed above, several conventions exist which define channel organization. FuMa (Furse-Malham) organizes the channels as WXYZ and follows the MaxN normalization standard for all channels except W, which is reduced by 3dB. AmbiX, on the other hand, uses SN3D normalization and follows the ACN channel ordering (Hodges, Ambisonic Software, 2018).

Ambisonics formats may adopt new conventions as higher orders become more practical, so monitoring how each new convention organizes the channels will be essential.

### Pros and Cons of Ambisonics

There are positives and negatives to working with Ambisonic audio. The greatest strength of Ambisonic audio is undoubtedly the separation of its two primary states: encoded and decoded. With this separation, Ambisonic audio can take an audio source of any format (mono, stereo, quadraphonic, A-Format) and encode it to any order of Ambisonics. The encoded sound source can then be decoded to any given delivery system (stereo, headphones, quadraphonic, 5.1), and the spatial information will be preserved at a relatively high level of accuracy.

Ambisonic audio is also much more efficient at storing and delivering multichannel audio with fewer channels than would be required by a discrete multichannel format. For example, First-Order Ambisonics only requires four channels to deliver six directions of spatial information, which could be decoded to any number of speakers.

A final selling point of Ambisonic audio is that the format is free of patents, and there are many free tools for capturing, manipulating, encoding, and decoding Ambisonic audio available for all major operating systems.

Ambisonic audio is not without its weaknesses. One major shortcoming is that Ambisonic audio—despite a recent reinvigoration with the increased distribution of AR, VR, and 360 Videos—has not been widely adopted by audio professionals, likely because it is conceptually difficult to understand, and its perceptual results can be difficult to judge.

Sonically it is also not perfect for delivering spatial audio: the “sweet spot” is tiny, spatial confusion commonly occurs, the audio can be heavily colored from comb-filtering when played over speakers, and setting up an ideal delivery system can be extremely challenging even for experienced engineers.

### Binaural Audio

A final format that is essential to making spatial audio easily consumable by a large audience using readily accessible delivery systems is *binaural audio*. The term mostly refers to a recording technique that mounts microphones either in a dummy’s or an actual human’s ears—similar to the recording technique used to measure and capture HRIRs. This arrangement perfectly positions microphones to capture sounds imprinted with the IIDs, ITDs, and other spectral modifications (HRTFs) resulting from a subject’s body, head, and ears. Then on playback, the consumer will have an aural experience similar to that heard at the original.

Because the crosstalk (sound emitted by one speaker, which is then received by both ears) that would occur when playing binaural audio over speakers would distort the binaural reproduction, binaural audio can only be accurately played back using a personal-delivery system. Binaural audio makes an ideal partner to Ambisonics for the mass delivery of immersive and interactive audio experiences to individual consumers. The creators of the audio experience can encode all the spatial audio as a B-format Ambisonic audio file. Then the consumer’s playback system (a cellphone and cheap earbuds) can decode and render a binaural realization of the spatial audio in real-time as determined by any interaction their playback system may afford them.

## Spatialization Techniques

Audio spatialized for one delivery system will not translate accurately to another delivery system because of their different acoustic environments. Additionally, each environment must account for the listener's movements differently.

### External Delivery Systems

From the perspective of spatialization techniques and processes, external delivery systems are the easiest to use. To make a sound appear to come from a specific location, place a speaker at that location and play the sound through that speaker.

### Phantom Image

When working with a fixed speaker arrangement (e.g., quadraphonic), a sound can be made to appear to come from a location precisely between two speakers by reducing the sound’s volume by about 3.0 dB and playing it back from both speakers simultaneously. The listener will hear the sum of both speakers’ outputs and will perceive the sound at its original volume and as if it is coming from a phantom source in the center of the two speakers. Using gradation of this technique enables a sound to be positioned anywhere between two speakers.

The problem with employing more sophisticated spatialization techniques like "phantom image" is that proper reception of the spatial audio relies on the listener remaining in the center, or “sweet spot,” used to deliver that technique.

### Wave Field Synthesis

There is one method for speaker-based sound spatialization that does not require the listener to stay within the “sweet spot.” Rather than using psychoacoustic tricks, Wavefield Synthesis (WFS) relies upon a massive array of equally spaced full-range speakers to physically create the desired sound field. While WFS can create a much more realistic spatial sound environment, the number of speakers required makes it an extraordinarily impractical technique that will likely never see any successful consumer-level applications.

### Size/Width

Balancing a sound across more than two speakers will make the sound appear to occupy more physical space. Subtle spectral alteration to the sound as it plays through each speaker can enhance this effect, but taking it too far can lead to localization confusion.

### Head shadowing, IID, and ITD

The beautiful thing about working with external delivery systems is that they handle all the person-specific spectral modifications required for sound localization. However, playing with a sound's timing and frequency differences as it simultaneously transmits from different speakers can create more intriguing and immersive sonic environments at the cost of confused localization.

### Personal Delivery Systems

Creating a realistic spatial audio environment inside of personal delivery systems requires additional work because it lacks the luxury of an acoustic environment for the necessary physical interactions to provide localization cues. For example, if a listener is wearing headphones and only the left headphone emits a sound, the listener will undoubtedly be able to identify that their left ear only hears the sound. It will, however, sound unnatural because they will not hear any portion of that sound with their right ear as they would if the same audio file was played back over speakers.

Of course, for creative purposes, this problem could be exploited. Considering what we know about the omnidirectional behavior of low frequencies, receiving completely different low-frequency content in each ear can be very unnerving and anxiety-inducing for most listeners. Cutting the low-frequency content entirely from one ear may disrupt a listener’s equilibrium and induce nausea.

The interaural differences that we listen to for clues to a sound’s lateral location can be easily created using audio tools bundled with most Digital Audio Workstations (DAWs). They will be discussed below in isolation, but combining two or more of these processes can result in a more dramatic spatial effect.

### Creating Interaural Intensity Differences

Most DAWs provide the user with either a balance or pan control in every audio track’s mixer section. While these may appear to have the same effect on the surface, there are some critical differences.

On a mono audio source, balance and pan both produce the same results and can be used to set the amplitude distribution of a sound across two output (stereo) channels. On a stereo audio source, however, balance adjusts the independent level of the left and right channels of the audio source. If the source audio has different information on the left and the right channels, adjusting the balance control to either extreme will cause the loss of information in the negated channel. On the other hand, a stereo pan control allows for the independent amplitude distribution of a sound between two output channels. In this case, no stereo information is lost when setting the pan control to either extreme. Panning has the added benefit of being able to control the stereo width. Setting both the left and the right pan controls to the same value will result in folding the stereo information down to mono and placing it at that location within the stereo field.

Due to the aural separation of personal listening systems, applying only minor changes to amplitude preserves a more natural spatial sensation.

### Creating Interaural Time Differences

Most DAWs come bundled with a variety of delay effects. However, only a few come with audio effects capable of delaying a sound within the same timescales as ITDs (< ~625 µs). For example, Logic Pro X includes the “Sample Delay” audio effect that enables the user to independently set the delay time for the left and right channels by any number of samples.

If the sample rate of a Logic Pro X project is 48,000 samples per second, then one sample is equal to approximately two microseconds, and thirty samples of delay are equal to approximately 625 microseconds. This audio effect could be used to suggest a lateral location by adjusting either the left or the right delay to ≤ 30 samples.

### Head shadowing

Applying a highshelf filter and attenuating frequencies above ~1600 Hz on either the left or the right side to will result in an the illusion of head shadowing.

### Front, Back, and Elevation

Without tracking the listener’s head movement and allowing them to reorient their ears to check for front/back or elevation cues, the other dimension of spatial audio can be extremely difficult to accurately and universally mimic using the tools included in most DAWs.

In recent years, however, many freely available Ambisonic software plug-ins have been released that simplify the process of applying generic HRTFs and rendering the resulting spectral modification as a binaural audio file. Until there is a way for users to capture their HRIRs, using these specialized tools will not guarantee the accurate sound localization by all listeners.

### Distance

Distance is quickly and commonly replicated using any DAW’s reverb effect. Start by either selecting or designing the type of space to locate a sound within (cathedral, bathroom, or hallway). Then adjust the reverb effect’s pre-delay and dry/wet parameters, as well as the overall level of the resulting sound.

- To achieve a sound that appears to be close in a very reverberant space, increase the pre-delay time and decrease the wet level.
- To achieve a sound that appears further away, decrease the predelay time, increase the wet level, and decrease the dry level.
- To create a more realistic sense of distance, calculating the reverb (the acoustic interaction between a sound and space) should result from the actual space the listener and sounds are within.

## Environment Modeling

**Something that is crucial to delivering an immersive and realistic aural experience is placing both the sounds and the audience in an acoustically responsive environment.

Now that computers, gaming consoles, mobile devices, and other content delivery systems have become powerful enough to handle the computational requirements of real-time acoustic-environment modeling, the consumer demand for more realistic audio experiences has begun to grow. Many new tools have become available that make it easier for content creators to deploy these environmental modeling techniques and meet the demand. Modeling a three-dimensional acoustic environment boils down to three main components: direct sound, indirect sound, and occlusions.

### Direct Sound

*Direct sound* is the sound heard without any transformations or modification applied to it by the space or surrounding objects. The direct sound carries with it the original sound plus all the information needed to detect its direction of arrival. All other iterations of a sound – the slap-back of a snare drum in a small club, an echo from deep within a canyon, the indecipherable roar that fills an excited stadium – is the indirect sound.

### Indirect Sound

**There are two parts to *indirect sound*: early reflections, and diffusion. Both of these elements are derived from the geometry and material composition of the space and the objects which inhabit it.

The size and shape of the room will determine, first, how long it will take the sound emitted from an internal location to reach each surface, and, second, with what trajectories the sound will reflect off each surface. Then, depending on the construction materials of each surface, the sound will be absorbed and spectrally altered to varying degrees. The harder the material, the more reflective the surface will be. The softer and more porous the material, the more high-frequency absorption occurs.

### Early Reflections

Early reflections can be replicated by first measuring the distance of all the potential paths from a sound source’s location to the listener’s ears that encounter only one reflection point. Second, by applying to each reflection both the spectral modification that the reflective surface imposes on it and all the necessary alteration to perceive from what direction the reflection is arriving. Finally, delay each reflection by the time it would take for the sound to travel the distance of its path and mix them all with the original (direct) sound.

The human ear is extremely sensitive to early reflections, and they play a considerable part in spatial awareness. Because of this, when a device’s computational resources are in high demand by other processes, most of the available processing can be focused on calculating and rendering early reflections and less on a sound’s spatial diffusion.

### Diffusion

Depending on the material construction of the room, the sound will likely continue to reflect around the environment until its energy has either dissipated or completely diffused. Any space's complex diffusion network could be recreated using an infinite set of delays and filters. However, because diffusion is less critical to spatial awareness, two more generalized processes for fabricating a sound’s spatial diffusion can work just as well: convolution or algorithmic reverb.

### Convolution Reverb

Using a similar process to capturing HRTFs, convolution reverb begins with capturing an impulse response (IR) of a space by recording the results of either a short burst of white noise (all frequency at equal amplitudes) or a full-spectrum sine tone sweep. This recording can then be analyzed for how all the produced frequencies respond in the space over time. This IR can then be used to digitally simulate the resonance of any audio source produced within the captured space by multiplying (convolving) each sample of the audio source with each sample of the IR.  Typically both *time* and *frequency domain* convolution methods are used to render the most detailed and realistic responses. The combination of these two methods require a lot more processing power in contrast to algorithmic reverb techniques, but this level of detail makes convolution reverb particularly well suited to simulating outdoor spaces.

### Algorithmic Reverb

Algorithmic reverb, on the other hand, is more computationally efficient, but at the cost of realism. There are various methods for creating an algorithmic reverb, each with its unique characteristics and set of capabilities. Typically, these algorithms involve a network of delays for simulating the early reflections followed by a series of *allpass filters* which feed into a parallel bank of *feedback comb filters* that mix to form the reverb’s diffusion. This popular algorithm was developed by Manfred Schroeder and Ben Logan in the early 1960s and is at the heart of most algorithmic reverb effects.

### Occlusion and Obstruction

Acoustic occlusion occurs any time the path between a listener and a sound source is completely blocked. Acoustic obstruction is caused by smaller objects that do not completely block the sound from the listener but are substantial enough to cause spectral modifications to the sound. The most significant difference between occlusion and obstruction is that an object that occludes a sound also occludes the reverberance of that sound, whereas an object that obstructs a sound alters only the direct component of the sound. In most real-world situations, the interaction between a sound source and the surrounding environment will be much more complicated, and any object between the listener and a sound will cause occlusion and obstruction to varying degrees.

If, for example, a listener is standing in a large office space with a pillar very close on their right-hand side and a radio playing about 20’ in front of them, the pillar will not obstruct the direct sound or the early reflections/diffusion from their left. It will, however, almost wholly occlude all the reflections/diffusion of the sound on their right side. It will also provide some fascinating reflections of both the direct and reflected sound.

Even if the listener and all the sound sources remain stationary, acoustic environment modeling involves monitoring and calculating many factors.  Rendering the environment in real time becomes hugely complex if the listener and the sounds are moving. However, when done well this can be the difference between a listener losing themselves in the sonic world or hearing it as a rudimentary attempt at reality.

Along with the renewed interest in virtual reality, acoustic environment modeling is undergoing rapid research and development which has already yielded a wide variety of new tools and techniques. So rather than going into how to implement an acoustic modeling system, the reader is recommended to research what new tools are available and read their respective manuals.