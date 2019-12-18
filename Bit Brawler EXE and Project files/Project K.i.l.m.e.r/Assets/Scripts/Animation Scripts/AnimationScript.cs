using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(FighterController))]
public class AnimationScript : MonoBehaviour
{
    public Animator anim;
    private Rigidbody2D rb;
    private FighterController fc;

    
    void Start()
    {
        anim = GetComponent<Animator>();
        rb = GetComponent<Rigidbody2D>();
        fc = GetComponent<FighterController>();
    }



    void Update()
    {
        anim.SetFloat("velocity.x", Mathf.Abs(rb.velocity.x));
        anim.SetFloat("velocity.y", rb.velocity.y);

        if (InputManager.GetKeyDown((fc.inputType == PlayerInputType.Player1) ? 'e' : 'u'))
        {
            anim.SetTrigger("Punch");
        }
        else
        {
            //anim.SetTrigger("NotPunch"); 
        }

        anim.SetBool("Blocking", fc.block);
    }
}
