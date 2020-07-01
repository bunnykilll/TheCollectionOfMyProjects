using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GPUgate : MonoBehaviour
{
    public GameObject DoorA;

    private void OnTriggerEnter(Collider collider)
    {
        if(collider.gameObject.name == "Player" && Variables.GPUcount > 0)
        {
            Variables.GPUcount--;
            Destroy(obj: DoorA);
        }
    }
}
