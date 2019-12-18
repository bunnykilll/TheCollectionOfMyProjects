using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using AaronQuickAssets.ExtraUtil;
using UnityEngine.UI;

[RequireComponent(typeof(BoxCollider2D))]
public class FighterController : MonoBehaviour
{
    public class Controls
    {
        #region Player 1
        public static char Player1Left = 'a';
        public static char Player1Right = 'd';
        public static char Player1Jump = 'w';
        public static char Player1Block = 's';
        public static char Player1Ability1 = 'q';
        public static char Player1Ability2 = 'e';
        #endregion

        #region Player 2
        public static char Player2Left = 'j';
        public static char Player2Right = 'l';
        public static char Player2Jump = 'i';
        public static char Player2Block = 'k';
        public static char Player2Ability1 = 'u';
        public static char Player2Ability2 = 'o';
        #endregion
    }

    protected Rigidbody2D rb;
    protected SpriteRenderer sr;

    public PlayerInputType inputType;

    public string fightername = "Fighter";

    public int hp = 100;
    protected GameObject healthbar;

    public bool grounded = false;

    [Range(.1f, 3333f)]
    public float movementSpeed = 0.2f;
    public float jumpStrength = 0.5f;

    protected Vector3 velocity;

    public float gravityStrength = 0.05f;
    public float maxGravity = 0.9f;

    protected float currentG = 0;

    public float stunTime = 0;

    protected bool customBehaviour = false;
    protected string behaviorID = "default";

    protected GameObject melee;

    protected Dictionary<string, customBehavior> behaviors = new Dictionary<string, customBehavior>();

    protected static GameObject endscreen;
    protected static Text endscreenText;

    public bool block = false;

    private Vector2 knockback = new Vector2(0,0);

    public GameObject hitParticle;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        sr = GetComponent<SpriteRenderer>();

        PlayerStart();

        if (inputType == PlayerInputType.Player1)
        {
            InputManager.AddListener(new char[] { Controls.Player1Left, Controls.Player1Right, Controls.Player1Jump, Controls.Player1Block, Controls.Player1Ability1, Controls.Player1Ability2 });
        }
        else if (inputType == PlayerInputType.Player2)
        {
            InputManager.AddListener(new char[] { Controls.Player2Left, Controls.Player2Right, Controls.Player2Jump, Controls.Player2Block, Controls.Player2Ability1, Controls.Player2Ability2 });
        }

        melee = transform.GetChild(0).gameObject;
        melee.SetActive(false);

        healthbar = GameObject.Find((inputType == PlayerInputType.Player1) ? "Left HP" : "Right HP");
    }

    void FixedUpdate()
    {
        if(healthbar != null)healthbar.transform.localScale = new Vector3((1.0f / 100.0f) * hp, healthbar.transform.localScale.y, 1);

        if(InputManager.GetKey((inputType == PlayerInputType.Player1) ? 's' : 'k'))
        {
            behaviorID = "block";
            block = true;
        }
        else if (behaviorID == "block")
        {
            behaviorID = "default";
            block = false;
        }

        if (behaviorID == "default")
        {
            movementBehavior();
            meleeBehavior();
        }
        else if(behaviorID == "block")
        {

        }
        else
        {
            behaviors[behaviorID].Invoke();
        }

        if(Mathf.Abs(transform.position.x) > 8.5f) transform.position = new Vector3(Mathf.Sign(transform.position.x) * 8.5f, transform.position.y, 0);
        
        //transform.position += velocity;

        if(rb.velocity.x != 0) transform.localScale = new Vector3(Mathf.Sign(rb.velocity.x), transform.localScale.y, 1);

        if(hp <= 0)
        {
            GameManager.Instance.endscreen.SetActive(true);
            GameManager.Instance.endscreenText.text = "Player " + ((inputType == PlayerInputType.Player1) ? "2" : "1") + " won!";
        }

        if(stunTime > 0)
            stunTime -= Time.deltaTime;

        PlayerUpdate();
    }

    private void OnCollisionEnter2D(Collision2D other)
    {
        print(other.transform.tag);

        switch(other.transform.tag)
        {
            case "Ground":
                grounded = true;
                break;
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        switch(other.tag)
        {
            case "Melee":
                hp -= (block) ? 1 : 4;
                Instantiate(hitParticle, new Vector3(transform.position.x, transform.position.y, -5), Quaternion.identity);
                break;

            case "SpecialAttack":
                AttackController attack = other.GetComponent<AttackController>();

                if(attack.caster != gameObject)
                    hp -= attack.damage;
                break;
        }
    }

    private void OnCollisionExit2D(Collision2D other)
    {
        if (other.transform.tag == "Ground")
        {
            grounded = false;
        }
    }

    #region MovementFunctions
    protected void movementBehavior(bool movement = true, bool jumping = true)
    {
        if(movement && stunTime <= 0) rb.velocity = (new Vector2(movementSpeed * ((InputManager.GetKey((inputType == PlayerInputType.Player1) ? 'a' : 'j') ? 0 : 1) -
                                                   (InputManager.GetKey((inputType == PlayerInputType.Player1) ? 'd' : 'l') ? 0 : 1)), rb.velocity.y));

        if(jumping && stunTime <= 0) rb.AddForce(new Vector2(0,(InputManager.GetKey((inputType == PlayerInputType.Player1) ? 'w' : 'i') && grounded) ? jumpStrength : 0));
    }

    protected void meleeBehavior()
    {
        if(InputManager.GetKeyDown((inputType == PlayerInputType.Player1) ? Controls.Player1Ability2 : Controls.Player2Ability1))
        {
            melee.SetActive(true);
        }
        else
        {
            melee.SetActive(false);
        }
    }
    #endregion

    #region Behavior Functions
    protected void CreateBehavior(string name, customBehavior behavior)
    {
        name = name.ToLower();
        
        if (name == "default")
        {
            print("NAME CAN NOT BE \"DEFAULT\"");
            return;
        }

        behaviors.Add(name, behavior);
    }
    protected void SetBehavior(string name)
    {
        name = name.ToLower();

        if (behaviors.ContainsKey(name) || name == "default")
        {
            behaviorID = name;
        }
    }

    protected delegate void customBehavior();
    #endregion

    protected void InstantiateAttack(GameObject obj, Vector2 spawnOffset)
    {
        GameObject instance = Instantiate(obj, transform.position + new Vector3(spawnOffset.x, spawnOffset.y), Quaternion.identity);

        AttackController attack = instance.GetComponent<AttackController>();
        attack.velocity *= (sr.flipX) ? -1 : 1;
        attack.caster = gameObject;
    }

    #region Virtual Functions
    public virtual void PlayerStart() { }
    public virtual void PlayerUpdate() { }
    public virtual void PlayerGameOver() { }
    public virtual void PlayerGameWon() { }
    #endregion
}

public enum PlayerInputType
{
    Player1 = 0,
    Player2
}
