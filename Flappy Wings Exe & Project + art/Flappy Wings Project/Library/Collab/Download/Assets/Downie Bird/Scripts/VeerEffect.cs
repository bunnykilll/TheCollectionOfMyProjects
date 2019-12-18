using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleLauncher : MonoBehaviour 
{

    public ParticleSystem ParticleEffect;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            ParticleEffect.Emit(2);
        }
	}

    public void ToggleVeren()
    {
      
    }
}
