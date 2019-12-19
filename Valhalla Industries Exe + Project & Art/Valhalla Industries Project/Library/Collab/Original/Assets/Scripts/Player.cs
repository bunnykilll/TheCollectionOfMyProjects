using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    private bool movementDisable = false;
    private float movementDisableTimer = 0.5f;
    private float movementDisableTime;
    private float boostDuration = 0;
    private float boostCooldown = 60f;
    private float maxSpeed = 12f;
    private float speed = 15f;
    private float currentSpeedx;
    private bool isBoostReady = true;
    private bool contact = false;
    [SerializeField] private bool isBoosting = false;
    [SerializeField] private KeyCode boost;
    [SerializeField] private KeyCode up;
    [SerializeField] private KeyCode down;
    [SerializeField] private KeyCode right;
    [SerializeField] private KeyCode left;

    public int points = 0; 

    private Rigidbody rb;
    Vector3 velocity;
    [SerializeField] Camera camera;

    private void Start()
    {
        
        rb = GetComponent<Rigidbody>();
        movementDisableTime = movementDisableTimer;
        isBoostReady = true;
    }
    private void Awake()
    {
        
    }
    void Update()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3 (moveHorizontal, 0.0f, moveVertical);

        currentSpeedx = rb.velocity.x;

        Vector3 camF = camera.transform.forward;
        Vector3 camR = camera.transform.right;

        camF.y = 0;
        camR.y = 0;

        camF = camF.normalized;
        camR = camR.normalized;

        if (movementDisableTime > movementDisableTimer)
        {
            Vector2 input = Vector2.zero;

            if (Input.GetKey(left))
            {
                input.x -= 1;
                if (Input.GetKey(boost))
                {
                    input.x -= 2;
                }
            }

            if (Input.GetKey(right))
            {
                input.x += 1;
                if (Input.GetKey(boost))
                {
                    input.x += 2;
                }
            }

            if (Input.GetKey(down))
            {
                input.y -= 1;
                if (Input.GetKey(boost))
                {
                    input.y -= 2;
                }
            }

            if (Input.GetKey(up))
            {
                input.y += 1;
                if (Input.GetKey(boost))
                {
                    input.y += 2;
                }
            }

            rb.AddForce((camF * input.y + camR * input.x) * speed);
            
            if (Input.GetKey(boost))
            {
                isBoosting = true;
                boostDuration++;
                if (boostDuration >= 40)
                {
                    isBoostReady = false;
                }
                if (isBoosting == true && boostDuration <= 60)
                {
                    maxSpeed = 15f;
                    
                }
                else
                {
                    maxSpeed = 10f;
                   
                }
            }
            if (Input.GetKeyUp(boost))
            {
                
                isBoosting = false;
            }
            if (isBoostReady == false && isBoosting == false)
            {
                boostCooldown = boostCooldown - 1;
                if (boostCooldown <= -60)
                {
                    isBoostReady = true;
                    boostDuration = 0;
                    boostCooldown = 0;
                }
            }
        }
        if (rb.velocity.magnitude > maxSpeed)
        {
            rb.velocity = rb.velocity.normalized * maxSpeed;
        }
        else
        {
            movementDisableTime += Time.deltaTime;
        }
        velocity = rb.velocity;
    }

    public Vector3 GetVelocity()
    {
        return velocity;
    }

    private void OnCollisionEnter(Collision collision)
    {
        Player player = collision.collider.GetComponent<Player>();
        if (player != null)
        {
            movementDisableTime = 0;
            boostDuration = 0;

            Vector3 velocityP2 = player.GetVelocity();

            if(velocity.magnitude > velocityP2.magnitude)
            {
                rb.velocity = new Vector3(velocityP2.x * 1.5f, velocityP2.y * 1.5f, velocityP2.z * 1.5f);
            }
            else
            {
                rb.velocity = new Vector3(velocityP2.x / 1.5f, velocityP2.y / 1.5f, velocityP2.z / 1.5f);
            }
        }
    }

    

}

