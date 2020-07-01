using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyDoorOpen : MonoBehaviour
{
    public GameObject DoorB;
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.name == "Player")
        {
            Destroy(obj: DoorB);
        }
    }
}
