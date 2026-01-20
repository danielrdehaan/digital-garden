---
title: UVI Falcon
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/synthesis/software"
created: 2026-01-19T15:58:16-06:00
modified: 2026-01-19T20:57:51.629046
---

# UVI Falcon

# Basic Multi-Sample Instrument

![](https://youtu.be/h9-BF26sxus)

# UVI Scripting

[UVIScript: UVI Script](https://www.uvi.net/uviscript/)

## Example Script

```lua
makePerformanceView()
setBackgroundColour("white")
setHeight(600)
setBackground("Images/DRD_Tongue-Drum_Background_Image.jpeg")

reverbKnob = Knob("Reverb",0.5,0.0,1.0,false)
reverbKnob.size = {60,60}
reverbKnob.position = {550,400}
reverbKnob:setStripImage("Images/White-Knob_60x60_55.png",55)

attackAmp = Knob("Attack",1,0.0,10.0,false)
attackAmp.size = {60,60}
attackAmp.position = {15,15}
attackAmp:setStripImage("Images/White-Knob_60x60_55.png",55)

decayAmp = Knob("Decay",0.25,0.0,10.0,false)
decayAmp.size = {60,60}
decayAmp.position = {90,15}
decayAmp:setStripImage("Images/White-Knob_60x60_55.png",55)

sustainAmp = Knob("Sustain",1.0,0.0,1.0,false)
sustainAmp.size = {60,60}
sustainAmp.position = {165,15}
sustainAmp:setStripImage("Images/White-Knob_60x60_55.png",55)

releaseAmp = Knob("Release",0.75,0.0,10.0,false)
releaseAmp.size = {60,60}
releaseAmp.position = {240,15}
releaseAmp:setStripImage("Images/White-Knob_60x60_55.png",55)

reverbKnob.changed = function(self)
	Program.inserts[1]:setParameter("Mix", self.value)
	Program.inserts[2]:setParameter("Mix", self.value)
end

attackAmp.changed = function(self)
	for i = 13,1,-1 
	do 
   		Program.layers[1].keygroups[i].modulations["Amp. Env"]:setParameter("AttackTime",self.value)
	end
end

decayAmp.changed = function(self)
	for i = 13,1,-1 
	do 
   		Program.layers[1].keygroups[i].modulations["Amp. Env"]:setParameter("DecayTime",self.value)
	end
end

sustainAmp.changed = function(self)
	for i = 13,1,-1 
	do 
   		Program.layers[1].keygroups[i].modulations["Amp. Env"]:setParameter("SustainLevel",self.value)
	end
end

releaseAmp.changed = function(self)
	for i = 13,1,-1 
	do 
   		Program.layers[1].keygroups[i].modulations["Amp. Env"]:setParameter("ReleaseTime",self.value)
	end
end
```