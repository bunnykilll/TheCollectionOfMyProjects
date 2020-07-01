using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InteractableKeyLock : MonoBehaviour
{
    //[Header("Animator")]
    //private Animator _animator;

    [Header("Doors")]
    public GameObject OpenDoor1;
    public GameObject OpenDoor2;

    [Header("KeyLock")]
    public GameObject OpenKeylock;

    [Header("UI")]
    public GameObject InteractableUI;
    public GameObject Crosshair;

    [Header("Canvas")]
    public GameObject KeylockCanvas;

    [Header("Bool")]
    public bool IsKeylockActive;

    void Start()
    {
        KeylockCanvas.SetActive(false);
        IsKeylockActive = false;
        //_animator = GetComponent<Animator>();

    }
    void Update()
    {

        if (IsKeylockActive == true )
        {
            if (Input.GetKeyDown(KeyCode.E))
            {
                SetKeylockActivation(!KeylockCanvas.activeSelf);
                Crosshair.SetActive(false);
                InteractableUI.SetActive(false);
                //Destroy(gameObject);
            }
            else if (Input.GetKeyDown(KeyCode.Q))
            {
                ClosePauseMenu();
                Crosshair.SetActive(true);
            }
        }
       
    }
    public void ClosePauseMenu()
    {
        SetKeylockActivation(false);
    }
    void SetKeylockActivation(bool active)
    {
        KeylockCanvas.SetActive(active);

        if (KeylockCanvas.activeSelf)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
            Time.timeScale = 0f;
            EventSystem.current.SetSelectedGameObject(null);
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            Time.timeScale = 1f;
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            InteractableUI.SetActive(true);
            IsKeylockActive = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            InteractableUI.SetActive(false);
            IsKeylockActive = false;
        }
    }
}
