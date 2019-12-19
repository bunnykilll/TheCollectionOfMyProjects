using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors : MonoBehaviour
{
    public bool doorEnabled;

    [SerializeField] GameObject Doorr;
    [SerializeField] Animator Dooranim;

    void Start()
    {
        Dooranim = Doorr.GetComponent<Animator>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (doorEnabled == true)
        {
            if (other.gameObject.tag == "Player")
            {
                SlideDoor(true);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            SlideDoor(false);
        }
    }

    void SlideDoor(bool state)
    {
        Dooranim.SetBool("slide", state);
    }
}
