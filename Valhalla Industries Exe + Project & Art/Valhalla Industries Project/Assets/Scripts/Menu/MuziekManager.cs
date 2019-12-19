using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MuziekManager : MonoBehaviour
{
    public static MuziekManager Instance { get; private set; }


    public AudioSource MusicSource;
    public AudioSource EffectsSource;

    public AudioClip Music;



    public void Awake()
    {
        if(Instance == null)
        {
            Instance = this;
            PlayMusic(Music);
        }
        else if(Instance != this)
        {
            Destroy(gameObject);
        }

        DontDestroyOnLoad(gameObject);

    }

    [RuntimeInitializeOnLoadMethod(UnityEngine.RuntimeInitializeLoadType.AfterSceneLoad)]
    public static void RuntimeInitializeLoadType()
    {
        Instantiate(Resources.Load<MuziekManager>("MuziekManager"));
    }

    public void Play(AudioClip clip)
    {
        EffectsSource.clip = clip;
        EffectsSource.Play();
    }

    public void PlayMusic(AudioClip music)
    {
        MusicSource.clip = music;
        MusicSource.Play();
    }

    public void SetMusicVolume(float volume)
    {
        MusicSource.volume = volume;
    }

    public float GetMusicVolume()
    {
        return MusicSource.volume;
    }
}
