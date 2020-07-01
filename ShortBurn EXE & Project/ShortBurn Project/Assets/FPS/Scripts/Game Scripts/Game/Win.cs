using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class Win : MonoBehaviour
{

    public GameObject OpenDoor;
    public GameObject InteractableUI;

    public bool IsDoorActive;


    [Header("Scripts")]
    public SoundHandler soundHandler;
    void Start()
    {
        IsDoorActive = false;
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
                SceneManager.LoadScene("WinScene");
                Destroy(gameObject);
            }
        }
    }
}
