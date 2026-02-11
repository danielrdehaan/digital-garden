---
canvas_title: "Week 03: Introduction to FMOD"
canvas_sync: true
canvas_publish: true
canvas_type: page
created: 2026-01-21T14:34:43-06:00
modified: 2026-02-10T22:42:48-06:00
canvas_page_url: week-03-introduction-to-fmod
---
A 3D survival shooter game (based on Unity's official tutorial) with **all audio removed**.

The game features a player fighting waves of enemies (ZomBear, ZomBunny, Hellephant) with raycast-based shooting, health management, and scoring. Everything works — it's just silent.

## Requirements

- **GitHub Desktop** ([desktop.github.com](https://desktop.github.com/))
- **Unity 6** version **6000.3.7f1** (must match exactly)

## Getting Started

### 1. Fork the Repository

1. Go to [github.com/danielrdehaan/unity-survival-shooter](https://github.com/danielrdehaan/unity-survival-shooter)
2. Click the **Fork** button in the top-right corner
3. Select your own GitHub account as the destination
4. This creates your own copy of the project that you can modify freely

### 2. Clone Your Fork with GitHub Desktop

1. On your fork's GitHub page, click the green **Code** button
2. Select **Open with GitHub Desktop**
3. In GitHub Desktop, choose where to save the project on your computer and click **Clone**

### 3. Install Unity 6000.3.7f1

1. Open **Unity Hub**
2. Go to **Installs** and check if version **6000.3.7f1** is listed
3. If not, click **Install Editor**, find **6000.3.7f1** under Unity 6 releases, and install it
4. If you cannot find the exact version in the Hub, use the [Unity Archive](https://unity.com/releases/editor/archive) to locate the install link for **6000.3.7f1**

> **Important:** You must use this exact version. Opening the project with a different version may cause import errors or unexpected behavior.

### 4. Open the Project

1. In Unity Hub, click **Open** (or **Add project from disk**)
2. Navigate to the cloned `unity-survival-shooter` folder and select it
3. Make sure Unity Hub selects editor version **6000.3.7f1** for this project
4. Wait for the project to import (first open may take a few minutes)

### 5. Open the Game Scene

1. In the Project window, navigate to `Assets/_CompletedAssets/Scenes/`
2. Double-click **Complete-Game** to open it
3. Press **Play** to verify the game runs (you should see enemies spawning, shooting works — just no sound)

### 6. Create an Event List

1. Play the game using your spreadsheet tool of choice, and create a list of what needs sounds/music in the game