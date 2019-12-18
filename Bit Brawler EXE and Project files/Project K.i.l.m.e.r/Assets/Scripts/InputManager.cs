using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputManager : MonoBehaviour
{
    private static InputManager Instance;

    private bool[] keydown = new bool[255];
    private bool[] keyup = new bool[255];
    private bool[] keys = new bool[255];

    public List<char> Listeners = new List<char>();

    void Awake()
    {
        if (Instance != null)
        {
            Destroy(this);
            return;
        }

        Instance = this;
    }

    void Update()
    {
        keydown = new bool[255];
        keyup = new bool[255];

        for (int i = 0; i < Listeners.Count; i++)
        {
            if(Input.GetKeyDown(Listeners[i].ToString()))
            {
                keys[Listeners[i]] = true;

                keydown[Listeners[i]] = true;
            }
        }

        for (int i = 0; i < Listeners.Count; i++)
        {
            if (Input.GetKeyUp(Listeners[i].ToString()))
            {
                keys[Listeners[i]] = false;

                keyup[Listeners[i]] = true;
            }
        }
    }

    public static void AddListener(char key)
    {
        if (!Instance.Listeners.Contains((key)))
        {
            Instance.Listeners.Add(key);
        }
    }

    public static void AddListener(char[] key)
    {
        for (int i = 0; i < key.Length; i++)
        {
            if (!Instance.Listeners.Contains((key[i])))
            {
                Instance.Listeners.Add(key[i]);
            }
        }
    }

    public static bool GetKeyDown(char key)
    {
        return (Instance != null) ? Instance.keydown[key] : false;
    }

    public static bool GetKey(char key)
    {
        return (Instance != null) ? Instance.keys[key] : false;
    }

    public static bool GetKeyUp(char key)
    {
        return (Instance != null) ? Instance.keyup[key] : false;
    }
}
