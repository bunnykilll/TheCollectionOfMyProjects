using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableDoors : MonoBehaviour
{

    //private Animator _animator;
    public GameObject OpenDoor1;
    public GameObject OpenDoor2;
    public GameObject InteractableUI;

    public bool IsDoorActive;


    [Header("Scripts")]
    public SoundHandler soundHandler;
    void Start()
    {
        IsDoorActive = false;
        //_animator = GetComponent<Animator>();
        soundHandler.GetComponent<SoundHandler>();

    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            InteractableUI.SetActive(true);
            IsDoorActive = true;

        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            InteractableUI.SetActive(false);
            IsDoorActive = false;
        }
    }
    

    void Update()
    {
        if(IsDoorActive == true)
        {
            if (Input.GetKeyDown(KeyCode.E))
            {
                soundHandler.SHAudioSource.PlayOneShot(soundHandler.DoorOpend);
                InteractableUI.SetActive(false);
                OpenDoor1.SetActive(false);
                OpenDoor2.SetActive(false);
                Destroy(gameObject);
            }
        }
    }
}
