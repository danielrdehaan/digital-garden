---
title: Basic Audio Scripting in Unity with C#
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/game-audio/fmod"
  - "#topic/game-audio/unity"
  - "#technique/spatial-audio"
  - "#technique/scripting"
created: 2026-01-19T15:58:15-06:00
modified: 2026-02-18T08:22:04-06:00
canvas_page_url: basic-audio-scripting-in-unity-with-c-number
---

Welcome to the next step in your Unity development journey! This guide focuses on implementing audio in your Unity projects using C#. You'll learn how to add sound effects, background music, and control audio behaviors to enhance your game's experience.

---

## Table of Contents

---

## Prerequisites

Before diving into audio scripting, ensure you have:

- **Completed the Quick Start Guide**: Familiarity with basic Unity C# scripting.
- **Audio Files Ready**: Sound effects and music files (e.g., `.wav`, `.mp3`) to use in your project.

---

## Understanding Unity's Audio System

Unity's audio system revolves around two main components:

- **Audio Clips**: The actual sound files you import into Unity.
- **Audio Sources**: Components attached to GameObjects that play Audio Clips.

Additionally, **Audio Listeners** (usually attached to the Main Camera) act as the ears of the player, capturing the sounds in the scene.

### Key Components:

- **Audio Listener**: Captures and processes audio in the scene. Typically, there's only one per scene, attached to the Main Camera.
- **Audio Source**: Plays back audio clips. Multiple Audio Sources can exist in a scene for different sounds.

---

## Setting Up Audio Assets

1. **Importing Audio Files**:
    - In the **Project Window**, navigate to the **"Assets"** folder.
    - Right-click and select **Import New Asset...**.
    - Choose your audio files (e.g., `.wav`, `.mp3`) and click **Import**.
2. **Organizing Audio**:
    - Create a subfolder named **"Audio"** within the **"Assets"** folder to keep your audio files organized.

---

## Using Audio Sources and Audio Clips

### Adding an Audio Source

1. **Select a GameObject**:
    - Choose the GameObject you want to emit sound (e.g., Player, Enemy).
2. **Add Audio Source Component**:
    - In the **Inspector**, click **Add Component**.
    - Search for **"Audio Source"** and add it.
3. **Assign an Audio Clip**:
    - In the **Audio Source** component, assign an Audio Clip by dragging it into the **"Audio Clip"** field.

### Configuring Audio Source Properties

- **Play On Awake**: Automatically plays the audio when the scene starts.
- **Loop**: Repeats the audio clip continuously.
- **Volume**: Controls the loudness of the audio.
- **Pitch**: Alters the playback speed and pitch of the audio.

---

## Playing Audio on Events

To create dynamic audio experiences, you'll often want to play sounds in response to specific events, such as collisions, user input, or triggers.

### Example: Playing a Sound When the Player Jumps

1. **Set Up Audio Source**:
    - Ensure the player GameObject has an **Audio Source** component with the jump sound assigned.
2. **Create a Script**:
    
    ```csharp
    using UnityEngine;
    
    public class PlayerAudio : MonoBehaviour
    {
        public AudioClip jumpSound; // Assign in the Inspector
        private AudioSource audioSource;
    
        void Start()
        {
            audioSource = GetComponent<AudioSource>();
        }
    
        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                Jump();
            }
        }
    
        void Jump()
        {
            // Add jump logic here
    
            // Play jump sound
            audioSource.PlayOneShot(jumpSound);
        }
    }
    
    ```
    
3. **Assign the Script**:
    - Attach the `PlayerAudio` script to the player GameObject.
    - In the **Inspector**, assign the jump sound to the **Jump Sound** field.

---

## Controlling Audio Properties

### Adjusting Volume and Pitch via Script

You can dynamically control audio properties to create effects like power-ups or environmental changes.

```csharp
using UnityEngine;

public class AudioController : MonoBehaviour
{
    private AudioSource audioSource;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        // Example: Increase volume when pressing the up arrow
        if (Input.GetKey(KeyCode.UpArrow))
        {
            audioSource.volume += 0.1f * Time.deltaTime;
        }

        // Example: Decrease pitch when pressing the down arrow
        if (Input.GetKey(KeyCode.DownArrow))
        {
            audioSource.pitch -= 0.1f * Time.deltaTime;
        }
    }
}

```

---

## Managing Background Music

Background music enhances the atmosphere of your game. Here's how to set it up:

### Setting Up a Background Music Player

1. **Create an Empty GameObject**:
    - In the **Hierarchy**, right-click and select **Create Empty**.
    - Name it **"BackgroundMusic"**.
2. **Add Audio Source Component**:
    - With **BackgroundMusic** selected, add an **Audio Source** component.
    - Assign your music Audio Clip to the **Audio Clip** field.
    - Check **Loop** and **Play On Awake** to have the music play continuously.
3. **Creating a Music Manager Script** (Optional for Advanced Control):
    
    ```csharp
    using UnityEngine;
    
    public class MusicManager : MonoBehaviour
    {
        public static MusicManager instance;
        private AudioSource audioSource;
    
        void Awake()
        {
            if (instance == null)
            {
                instance = this;
                DontDestroyOnLoad(gameObject);
            }
            else
            {
                Destroy(gameObject);
            }
    
            audioSource = GetComponent<AudioSource>();
        }
    
        public void PlayMusic()
        {
            if (!audioSource.isPlaying)
            {
                audioSource.Play();
            }
        }
    
        public void StopMusic()
        {
            if (audioSource.isPlaying)
            {
                audioSource.Stop();
            }
        }
    }
    
    ```
    
4. **Assign the Script**:
    - Attach the `MusicManager` script to the **BackgroundMusic** GameObject.

---

## 3D Sound and Spatial Audio

Unity allows you to create immersive audio experiences by positioning sounds in 3D space.

### Configuring 3D Audio

1. **Select an Audio Source**:
    - Choose the GameObject with the Audio Source you want to make 3D.
2. **Adjust Spatial Settings**:
    - In the **Audio Source** component, set **Spatial Blend** to `1` (fully 3D).
    - Configure **Min Distance** and **Max Distance** to control how the sound attenuates over distance.

### Example: Footsteps Sound Attached to Player

1. **Attach Audio Source to Player**:
    - Ensure the player GameObject has an **Audio Source** with the footsteps sound.
2. **Configure for 3D Sound**:
    - Set **Spatial Blend** to `1` in the Audio Source.
    - Adjust **Min Distance** and **Max Distance** as needed.
3. **Play Footsteps While Moving**:
    
    ```csharp
    using UnityEngine;
    
    public class PlayerFootsteps : MonoBehaviour
    {
        public AudioClip footstepSound;
        private AudioSource audioSource;
        private bool isMoving = false;
    
        void Start()
        {
            audioSource = GetComponent<AudioSource>();
        }
    
        void Update()
        {
            // Example movement detection
            float moveHorizontal = Input.GetAxis("Horizontal");
            float moveVertical = Input.GetAxis("Vertical");
    
            if (moveHorizontal != 0 || moveVertical != 0)
            {
                if (!isMoving)
                {
                    isMoving = true;
                    audioSource.loop = true;
                    audioSource.clip = footstepSound;
                    audioSource.Play();
                }
            }
            else
            {
                if (isMoving)
                {
                    isMoving = false;
                    audioSource.Stop();
                }
            }
        }
    }
    
    ```
    

---

## Example Scripts

### 1. Playing a Sound on Collision

```csharp
using UnityEngine;

public class CollisionSound : MonoBehaviour
{
    public AudioClip collisionSound;
    private AudioSource audioSource;

    void Start()
    {
        audioSource = gameObject.AddComponent<AudioSource>();
        audioSource.clip = collisionSound;
    }

    void OnCollisionEnter(Collision collision)
    {
        audioSource.Play();
    }
}

```

**Steps**:

1. **Attach Script**: Add `CollisionSound` to the GameObject you want to emit sound upon collision.
2. **Assign Audio Clip**: In the **Inspector**, assign the desired collision sound to the **Collision Sound** field.

### 2. Playing a Sound on Button Click

```csharp
using UnityEngine;
using UnityEngine.UI;

public class ButtonSound : MonoBehaviour
{
    public Button yourButton;
    public AudioClip clickSound;
    private AudioSource audioSource;

    void Start()
    {
        audioSource = gameObject.AddComponent<AudioSource>();
        audioSource.clip = clickSound;
        yourButton.onClick.AddListener(PlayClickSound);
    }

    void PlayClickSound()
    {
        audioSource.Play();
    }
}

```

**Steps**:

1. **Create UI Button**: Add a Button to your Canvas.
2. **Attach Script**: Add `ButtonSound` to a suitable GameObject.
3. **Assign References**: In the **Inspector**, assign the Button to **Your Button** and the click sound to **Click Sound**.

### 3. Fading In and Out Music

```csharp
using UnityEngine;
using System.Collections;

public class MusicFader : MonoBehaviour
{
    private AudioSource audioSource;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        StartCoroutine(FadeIn(2.0f));
    }

    public IEnumerator FadeIn(float duration)
    {
        audioSource.volume = 0;
        audioSource.Play();

        while (audioSource.volume < 1.0f)
        {
            audioSource.volume += Time.deltaTime / duration;
            yield return null;
        }
    }

    public IEnumerator FadeOut(float duration)
    {
        while (audioSource.volume > 0)
        {
            audioSource.volume -= Time.deltaTime / duration;
            yield return null;
        }

        audioSource.Stop();
    }
}

```

**Steps**:

1. **Attach Script**: Add `MusicFader` to the GameObject with the Audio Source.
2. **Customize**: Call `FadeOut` when you need to stop the music gracefully.

---

## Debugging Audio Issues

### Common Problems and Solutions

1. **No Sound Playing**:
    - **Check Audio Source**: Ensure an Audio Source is attached and an Audio Clip is assigned.
    - **Volume Levels**: Verify that the volume is not set to `0` and the Audio Listener's volume is adequate.
    - **Muted Audio**: Ensure the Audio Source or GameObject is not muted.
2. **Audio Not Playing on Event**:
    - **Script Errors**: Check the Console for any script errors preventing execution.
    - **Event Triggers**: Confirm that the event (e.g., collision, input) is correctly detected in the script.
3. **Sound Too Quiet or Too Loud**:
    - **Audio Clip Volume**: Adjust the **Volume** in the Audio Source component.
    - **Audio Clip Quality**: Ensure the audio files are properly mixed and not inherently too quiet or loud.
4. **3D Sound Issues**:
    - **Spatial Blend**: Make sure it's set appropriately for 3D sounds.
    - **Listener Position**: Verify the Audio Listener is positioned correctly relative to the Audio Sources.

### Using Debug.Log for Audio Debugging

Insert `Debug.Log` statements in your scripts to verify that audio-related code is executing.

```csharp
void PlayJumpSound()
{
    Debug.Log("Playing jump sound.");
    audioSource.PlayOneShot(jumpSound);
}

```

---

## Next Steps

- **Explore Advanced Audio Features**:
    - **Audio Mixers**: Control multiple audio groups and apply effects.
    - **Audio Effects**: Add reverb, echo, and other effects to enhance sounds.
- **Learn About Audio Optimization**:
    - Manage memory usage by compressing audio files.
    - Use spatial audio for better performance in 3D environments.
- **Integrate Third-Party Audio Tools**:
    - Tools like **FMOD** or **Wwise** offer more advanced audio management options.
- **Practice by Adding Audio to Projects**:
    - Implement sounds in different scenarios to reinforce learning.
    - Experiment with varying audio properties to see their effects.
- **Consult Unity's Audio Documentation**:
    - The [Unity Audio Documentation](https://docs.unity3d.com/Manual/Audio.html) provides in-depth information and additional tutorials.

---

## Conclusion

Incorporating audio into your Unity projects significantly enhances the gaming experience, making it more immersive and engaging. By understanding and utilizing Unity's audio system, you can create dynamic soundscapes that respond to player actions and game events. Practice these basics, experiment with different audio setups, and continue exploring more advanced audio features to take your games to the next level.

Happy sound designing!