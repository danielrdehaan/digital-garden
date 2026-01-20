---
title: Unreal Engine - Game Audio Tips - GameSoundCon 202
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/game-audio/unreal"
  - "#technique/spatial-audio"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.632595
---

# Unreal Engine - Game Audio Tips - GameSoundCon 2022

![](https://cdn2.unrealengine.com/gamesoundcon-share-1200x630-799b4de51916.jpg)

![](https://cdn2.unrealengine.com/gamesoundcon-header-1920x1080-2091a48203f5.jpg?resize=1&w=1920)

December 7, 2022

[Dolby Atmos](https://www.unrealengine.com/en-US/feed?tags=dolby-atmos)

[Fortnite](https://www.unrealengine.com/en-US/feed?tags=fortnite)

[Games](https://www.unrealengine.com/en-US/feed?tags=games)

[MetaSounds](https://www.unrealengine.com/en-US/feed?tags=metasounds)

[Microsoft Project Acoustics](https://www.unrealengine.com/en-US/feed?tags=microsoft-project-acoustics)

[News](https://www.unrealengine.com/en-US/feed?tags=news)

[Solar Ash Kingdom](https://www.unrealengine.com/en-US/feed?tags=solar-ash-kingdom)

[GameSoundCon](https://www.gamesoundcon.com/) just wrapped up, and there are some pretty cool things happening in audio land. Yes, you’d expect such a feeling when you go to the largest audio/sound design show for games, but it’s true.

We’ve collected a host of presentations—from the show and other places—as well as some big news for anyone that works in and around this part of the industry. Check them out below.

### **What’s happening with Unreal Engine Audio?**

At Unreal Fest, we held a State of the Union on the [UE Audio engine](https://docs.unrealengine.com/4.27/WorkingWithAudio/) and how its supporting immersive player experiences, from latest updates to where things are going. Have a look.
 

[https://www.youtube-nocookie.com/embed/h_mjrqCuPZ8?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=1&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/h_mjrqCuPZ8?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=1&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### **How about Microsoft and Dolby Atmos’ latest UE projects?**

Yes, Microsoft and Dolby were also at GameSoundCon, showcasing some new tech that will make life pretty great for UE audio designers.
 

### Dolby Atmos in Unreal Engine

Alistair Hirst, Dolby Sr. Game Developer Relations Manager not only gave attendees an overview on what Dolby Atmos brings to games, but shared an in-depth report on how his team implemented spatial audio into Unreal Engine 5’s [Lyra Sample Game](https://docs.unrealengine.com/5.0/lyra-sample-game-in-unreal-engine/).
 

[https://www.youtube-nocookie.com/embed/KMiGFsT5WyU?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=2&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/KMiGFsT5WyU?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=2&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Introducing Microsoft Project Acoustics

[Microsoft Project Acoustics](https://www.unrealengine.com/marketplace/product/project-acoustics-for-unreal-audio) is a next-gen, physics-based acoustical modeling and wave propagation plugin that analyzes game geometry and material properties to build realistic wave simulations of sound diffraction, occlusion, and reverberation for dynamic sounds.

Recently, Epic and Microsoft collaborated on a direct plugin integration for UE5—now free via the Unreal Marketplace. If you want a walkthrough, check out this talk. You’ll see how it integrates with Lyra and hear about its high-level capabilities, including the utilization of a new UE Audio source-data interface.

[https://www.youtube-nocookie.com/embed/MAMz9dSHU04?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=3&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/MAMz9dSHU04?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=3&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### **But what about game projects?**

Glad you asked! There were a ton of great game-centric talks at the show. Let’s get into some now..
 

### Unreal Engine Audio Systems in *Fortnite*

*Fortnite* Audio Technical Director Seth Weedin hosted a deep dive into how content and gameplay audio are integrated in *Fortnite*. This included a discussion of how Unreal Audio features influenced a variety of systems and a demonstration/walkthrough of the Rave Cave—a recent audio system that utilized audio bus routing and spatial submixing.
 

[https://www.youtube-nocookie.com/embed/MGcZM4luz5g?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=4&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/MGcZM4luz5g?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=4&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Generating 12 Hours of Endless Chill Music in *Fortnite*

In this presentation, Epic Technical Sound Designer, Adam Block showed how [Quartz](https://docs.unrealengine.com/4.27/WorkingWithAudio/Quartz/)—Unreal Engine's sub-system—helped the *Fortnite* team quickly create 12 hours of custom music. He then explains how they synced it with FX and lighting at a massive scale.
 

[https://www.youtube-nocookie.com/embed/zcnJPa6M9oM?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=5&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/zcnJPa6M9oM?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=5&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Bringing Music to the *Mix Universe*

Chris Zuko recently created a game that allows people to “create, share, and play each other’s musical compositions” in a visually compelling way. He called it [Mix Universe](https://store.steampowered.com/app/1654810/Mix_Universe/) and used UE Audio to do it. In this talk, he takes us through the process, explaining all the while how he was able to open up audio manipulation to people who have no previous experience in the subject. Well done!
 

[https://www.youtube-nocookie.com/embed/gQMOmpM2Y-o?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=6&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/gQMOmpM2Y-o?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=6&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Modular Audio Systems in *Solar Ash Kingdom*

If modular audio is your forte, check out this presentation from the [Solar Ash Kingdom](https://store.epicgames.com/p/solar-ash) team. You’ll learn how they used the modular system in UE to create both intelligent, reactive audio and amazing music during a super-compressed development timeline.
 

[https://www.youtube-nocookie.com/embed/RFPZVPV2TbM?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=7&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/RFPZVPV2TbM?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=7&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### **More technical game projects**

We can do that, too! Read on.
 

### MetaSounds for Beginners

It’s time for a quick tour of MetaSounds for beginners who have no experience with procedural audio. Watch to see some practical examples of how to build MetaSounds graphs with a limited set of source assets, and use post processing effects to control what a user will experience.
 

[https://www.youtube-nocookie.com/embed/l6ew3hTDa8g?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=8&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/l6ew3hTDa8g?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=8&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### SoundScape for *City Sample*

[City Sample](https://docs.unrealengine.com/5.0/city-sample-project-unreal-engine-demonstration/) took procedural content generation to a new level, based on its massive use of moving cars and MetaHumans. But in order to make the city come to life, we had to build a system called SoundScape, which could procedurally generate audio using a dynamic data algorithm. In this talk, you’ll learn how it worked, and ultimately, what we learned in the process.
 

[https://www.youtube-nocookie.com/embed/99uP2WuU2Jo?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=9&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/99uP2WuU2Jo?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=9&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Weapon Sound Design with Unreal Engine Audio

Sweejtech Technical Audio Director, Gustav Rathsman takes us through how you design realistic weapon sound systems in MetaSounds. He’ll also explore how Lyra and UE Audio can be used to procedurally customize a large range of weapons.
 

[https://www.youtube-nocookie.com/embed/LRlWd_m7q6U?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=10&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/LRlWd_m7q6U?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=10&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### MetaSounds Menagerie

Next, let’s fast walk through a bunch of compelling MetaSounds demos by Stefan Evrard. Find out why the Director of realtime at Mondlicht Studios thinks MetaSounds is such a creative sound environment for audio-visual pieces.
 

[https://www.youtube-nocookie.com/embed/zLNhCCqjx8Q?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=11&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/zLNhCCqjx8Q?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=11&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

### Utilizing Unreal Engine Editor Tools to Aid in Audio Design and Implementation

In this presentation, Technical Audio Designer Mitchell Lucas shows us how to use some of UE’s editor tools in unexpected ways. From visualizing audio information in real-time to custom asset actions that can speed up more repetitive tasks, see which editor features benefit a variety of game audio processes.
 

[https://www.youtube-nocookie.com/embed/P-eukhO4wx4?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=12&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1](https://www.youtube-nocookie.com/embed/P-eukhO4wx4?autoplay=0&rel=0&fs=1&enablejsapi=1&widgetid=12&mute=0&origin=https%3A%2F%2Fwww.unrealengine.com&enablejsapi=1)

Get Unreal Engine today!

Get the world’s most open and advanced creation tool.
With every feature and full source code access included, Unreal Engine comes fully loaded out of the box.

[GET STARTED NOW](https://www.unrealengine.com/en-US/download)