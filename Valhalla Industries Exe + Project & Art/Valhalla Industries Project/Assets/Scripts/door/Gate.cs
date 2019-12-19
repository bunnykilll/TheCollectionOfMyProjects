using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gate : MonoBehaviour
{
    [SerializeField] GameObject GateObject;
    [SerializeField] Animator GateAnim;
    [SerializeField] KeyCardData acceptedKeycard;

    void Start()
    {
        GateAnim = GateObject.GetComponent<Animator>();
    }

    public void PlayerEnteredTrigger(List<KeyCardData> keycards)
    {
        if (keycards.Contains(acceptedKeycard))
        {
            SlideDoor(true);
        }
    }

    public void PlayerExitedTrigger()
    {
        SlideDoor(false);
    }

    void SlideDoor(bool state)
    {
        GateAnim.SetBool("slide", state); 
    }




























    void Update()
    {
        
    }
}
