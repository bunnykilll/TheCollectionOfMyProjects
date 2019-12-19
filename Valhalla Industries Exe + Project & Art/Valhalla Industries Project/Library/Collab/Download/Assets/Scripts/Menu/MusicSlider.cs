﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MusicSlider : MonoBehaviour
{
    [SerializeField] private Slider slider;
    // Start is called before the first frame update
    void Start()
    {
        slider.value = MuziekManager.Instance.Music.volume;
    }

    // Update is called once per frame
    void Update()
    {
        MuziekManager.Instance.Music.volume = slider.value;
    }
}