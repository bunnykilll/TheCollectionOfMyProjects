using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GPUpickup : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.name == "Player")
        {
            Variables.GPUcount += 2;
            Destroy (gameObject);
        }
    }
}
