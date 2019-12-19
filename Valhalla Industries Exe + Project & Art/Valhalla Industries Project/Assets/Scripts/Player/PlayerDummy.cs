using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDummy : MonoBehaviour
{
    public static PlayerDummy Instance { get; private set; }

    private void Awake()
    {
        Instance = this;
    }
}
