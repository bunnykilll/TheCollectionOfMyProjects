using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fighter_Tyrone : FighterController
{

    public GameObject onGroundFX;
    public float groundpoundCooldown = 2.0f;
    private float groundpoundTime;

    public GameObject projectile;
    public float projectileCooldown = 4.0f;
    private float projectileTime;

    public override void PlayerStart()
    {
        CreateBehavior("ground", groundPoundBehavior);

        groundpoundTime = groundpoundCooldown + 1.0f;
        projectileTime = projectileTime + 1.0f;
    }

    public override void PlayerUpdate()
    {
        if (InputManager.GetKey((inputType == PlayerInputType.Player1) ? Controls.Player1Ability1 : Controls.Player2Ability2) && !grounded && transform.position.y > 0 && behaviorID == "default" && groundpoundTime >= groundpoundCooldown)
        {
            groundpoundTime = 0;

            rb.velocity = new Vector2();
            SetBehavior("ground");
        }
        else if(InputManager.GetKey((inputType == PlayerInputType.Player1) ? Controls.Player1Ability1 : Controls.Player2Ability2) && behaviorID == "default" && projectileTime >= projectileCooldown)
        {
            //InstantiateAttack(projectile, new Vector2(0,0));
        }

        if(groundpoundTime < groundpoundCooldown)
            groundpoundTime += Time.deltaTime;

        if (projectileTime < projectileCooldown)
            projectileTime += Time.deltaTime;
    }

    void groundPoundBehavior()
    {
        rb.AddForce(new Vector2(0, -600));

        if(grounded)
        {
            InstantiateAttack(onGroundFX, new Vector2(0, -2.5f));
            stunTime = 1;
            SetBehavior("default");
        }
    }
}
