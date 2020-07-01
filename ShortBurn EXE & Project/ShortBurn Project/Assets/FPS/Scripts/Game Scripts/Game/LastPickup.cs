using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LastPickup : MonoBehaviour
{
    public GameObject Door;
    public GameObject DoorCell2;
    public GameObject DoorCell21;
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.name == "Player")
        {
            print("Item picked up");
            Destroy(gameObject);
            Destroy(obj: Door);
            Destroy(obj: DoorCell2);
            Destroy(obj: DoorCell21);
        }
    }
}
