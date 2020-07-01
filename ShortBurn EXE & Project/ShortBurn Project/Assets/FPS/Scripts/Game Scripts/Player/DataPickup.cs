using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DataPickup : MonoBehaviour
{
    public GameObject Door;
    public GameObject Door2;
    public GameObject UIText;

    // Start is called before the first frame update
    void Start()
    {
        UIText.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.name == "Player")
        {
            Destroy(obj: Door);
            Destroy(obj: Door2);
            UIText.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        UIText.SetActive(false);
        Destroy(gameObject);
    }
}
