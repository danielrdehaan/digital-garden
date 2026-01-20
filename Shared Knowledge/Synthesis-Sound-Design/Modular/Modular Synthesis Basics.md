---
title: Modular Synthesis Basics
type: knowledge
status: active
tags:
  - "#type/one-sheet"
  - "#topic/synthesis/modular"
  - "#topic/synthesis/software"
  - "#topic/synthesis/concepts"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.602868
---

# Modular Synthesis: Basics

# Common Modular Formats:

## Rack Units:

A ‘U’ which is 1.75 inches (44.45 millimeters) high.

## 3U: Eurorack

---

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled.png)

**Module Height:**

- 128.5 mm / 5.06”

**Module Width:**

- Measured in HP (Horizontal Pitch). 1HP = 5.08 mm / 0.2”

**Typical Voltage Levels:** 

- ±5 V for audio (and some control) sources
- 0-10 V for control sources

 **Power:**

- ±12 V and + 5 V

**Connector Types:**

- 3.5 mm TS cables/jacks

**Origin:**

- Dieter Doepfer

## 4U: Serge

---

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled%201.png)

**Module Height:**

- 177.8 mm / 7”

**Module Widths:**

- 1” / 25.4 mm increments

**Typical Voltage Levels:**

- ±2.5 V for audio
- 0-5 V for control sources

**Power:**

- ±12 V

**Connector Types:**

- 4 mm banna jacks/cables

**Origin:**

- Serge Tcherepnin

## 4U: Buchla

---

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled%202.png)

**Module Height:**

- 177.8 mm

**Module Widths:**

- Measured in units (U)
- 1 unit = 107.95 mm / 4.25”

**Typical Voltage Levels:**

- ±1.75 V for audio
- 0-10 V for control sources

**Power:**

- ±15 V, ±12 V, ±5 V

**Connector Types:**

- 4 mm banana jacks for CV
- Tini-Jax for audio

**Origin:**

- Don Buchla

## MU/5U: Moog and Synthesizers.com

---

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled%203.png)

**Module Height:**

- 222.25 mm / 8.75”

**Module Widths:**

- 1,2,4, or 8 units wide
- 1 unit = 55.98 mm / 2.13”

**Typical Voltage Levels:**

- ±5 V

Power:

- ±15 V, +5 V

**Connector Types:**

- 1/4” TS jacks (audio and control sources)

**Origin:**

- Robert Moog

# Basic Concepts of Modular Synthesis

---

## Everything is a voltage

Everything in a modular synthesizer is either a fluctuating or steady voltage. This means anything can be anything and any point at any time.

## Audio Signals

Typically voltages that are changing faster than 20 times per second. And usually something that is meant to be heard, but doesn’t have to be...

## Control Voltages

A stream of voltages that changes at a slower rate (less than 20 times per second) if it is changing at all.

## 1V/Oct

Most frequency, or pitch-related parameters within a modular synthesizer follow the 1 volt per octave standard. That means if an oscillator, for example, that is tuned to a frequency of 100 Hz receives...

- 0 voltes at its 1V/Oct input = 100 Hz
- 1 volt at its 1V/Oct input = 200 Hz
- -1 volt at its 1V/Oct input = 50 Hz
- 0.5 volts at it 1v/Oct input = 150 Hz

## Timing

The tempo, rhythm, or other time-related events are often controlled with types of control voltages known as a *gate* or a *trigger* signal.

### Triggers:

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled%204.png)

- A *trigger* signal is a short pulse that jumps almost instantly from 0 volts, up to 5 volts, and back to 0 volts.
- A *trigger* signal is great for controlling the tempo/rate of some process

### Gates:

![Untitled](Digital%20Garden/Shared%20Knowledge/Attachments/Modular%20Synthesis%20Basics/Untitled%205.png)

- A *gate* signal is similar to a *trigger* signal, but unlike a *trigger* signal, a *gate* signal can remain at 5 volts for any period of time
- *Gate* signals are idea for controlling how long something last (e.g. how long a note is held for)
-