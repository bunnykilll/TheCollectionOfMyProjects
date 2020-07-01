using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundHandler : MonoBehaviour
{
    [Header("Sounds")]
    public AudioSource SHAudioSource;
    public AudioClip CorrectCode;
    public AudioClip Buttonpress;
    public AudioClip FailedCode;
   public AudioClip DoorOpend;

    void Awake()
    {
        SHAudioSource = GetComponent<AudioSource>();

    }
}
