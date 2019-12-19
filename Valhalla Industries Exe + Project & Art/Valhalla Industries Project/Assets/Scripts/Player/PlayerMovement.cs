﻿using UnityEngine;

public class PlayerMovement : MonoBehaviour
{

    public static PlayerMovement Instance { get; private set; }

    public float speed = 6f;            


        Vector3 movement;                   
       
        Rigidbody playerRigidbody;         

        int floorMask;                      
        float camRayLength = 200f;        


        void Awake ()
        {
            floorMask = LayerMask.GetMask ("Floor");
            playerRigidbody = GetComponent <Rigidbody> ();

            Instance = this;
        }

        void FixedUpdate ()
        {
           
            float h = Input.GetAxisRaw("Horizontal");
            float v = Input.GetAxisRaw("Vertical");

            // Move the player around the scene.
            Move (h, v);

            // Turn the player to face the mouse cursor.
            Turning ();

        }

        void Move (float h, float v)
        {
            Vector3 direction = new Vector3(Input.GetAxis("Horizontal"), 0f, (Input.GetAxis("Vertical")));
            direction.Normalize();
      
            if (direction.magnitude > .1f)
            {
                playerRigidbody.velocity = direction * speed;
            }
            else
            {
                playerRigidbody.velocity = Vector3.zero;
            }
    }

        void Turning ()
        {
            // Create a ray from the mouse cursor on screen in the direction of the camera.
            Ray camRay = Camera.main.ScreenPointToRay (Input.mousePosition);

            // Create a RaycastHit variable to store information about what was hit by the ray.
            RaycastHit floorHit;

            // Perform the raycast and if it hits something on the floor layer
            if(Physics.Raycast (camRay, out floorHit, camRayLength, floorMask))
            {
                // Create a vector from the player to the point on the floor the raycast from the mouse hit.
                Vector3 playerToMouse = floorHit.point - transform.position;

                // Ensure the vector is entirely along the floor plane.
                playerToMouse.y = 0f;

                // Create a quaternion rotation based on looking down the vector from the player to the mouse.
                Quaternion newRotatation = Quaternion.LookRotation (playerToMouse);

                // Set the player's rotation to this new rotation.
                playerRigidbody.MoveRotation (newRotatation);
            }
        }
}