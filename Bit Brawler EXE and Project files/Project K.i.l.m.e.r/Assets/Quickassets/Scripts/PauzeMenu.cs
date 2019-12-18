using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauzeMenu : MonoBehaviour {

    public KeyCode pauzeKey;

    private Canvas canvas;

	void Start () {
        canvas = GetComponent<Canvas>();

        canvas.enabled = false;
	}
	
	void Update () {
		if(Input.GetKeyDown(pauzeKey)) canvas.enabled = !canvas.enabled;

        if(canvas.enabled)
        {
            Time.timeScale = 0;
        }
        else
        {
            Time.timeScale = 1;
        }
    }
}
