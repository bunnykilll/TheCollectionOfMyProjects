using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MuziekManager : MonoBehaviour
{
    public AudioSource Music;

    public static MuziekManager Instance { get; private set; }

    public void Awake()
    {
        Instance = this;
        DontDestroyOnLoad(transform.gameObject);

    }

    [RuntimeInitializeOnLoadMethod(UnityEngine.RuntimeInitializeLoadType.AfterSceneLoad)]
    public static void RuntimeInitializeLoadType()
    {
        Instantiate(Resources.Load("MuziekManager"));
    }
}
