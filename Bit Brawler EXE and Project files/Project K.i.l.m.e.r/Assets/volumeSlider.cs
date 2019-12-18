using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class volumeSlider : MonoBehaviour
{
    private Slider slider;

    void Start()
    {
        slider = GetComponent<Slider>();

        slider.value = PlayerPrefs.GetFloat("Volume");
    }

    void Update()
    {
        GlobalGame.instance.GetComponent<AudioSource>().volume = slider.value;

        PlayerPrefs.SetFloat("Volume", slider.value);
    }
}
