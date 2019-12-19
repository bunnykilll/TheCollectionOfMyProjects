using UnityEngine;

 public class PlayerShooting : MonoBehaviour
 {
     public int damagePerShot = 20;                  // The damage inflicted by each bullet.
     public float timeBetweenBullets = 1.2f;        // The time between each shot.
     public float range = 100f;                      // The distance the gun can fire.


     float timer;                                    // A timer to determine when to fire.

     Ray shootRay = new Ray();                       // A ray from the gun end forwards.
     RaycastHit shootHit;                            // A raycast hit to get information about what was hit.
     int EnemyMask;                              
     ParticleSystem gunParticles;                    // Reference to the particle system.
     LineRenderer gunLine;                           // Reference to the line renderer.
     AudioSource gunAudio;                           // Reference to the audio source.

     Light gunLight;                                 // Reference to the light component.
                                                     //public Light faceLight;						    

     float effectsDisplayTime = 0.2f;                // The proportion of the timeBetweenBullets that the effects will display for.

     public int ammoClip;
     public int extraAmmo; 
     public float reloadTime = 1.5f;


     private void Start()
     {
         ammoClip = 10;
         extraAmmo = 30; 
     }
     void Awake ()
     {
        
         EnemyMask = LayerMask.GetMask ("Enemy");

        
         gunParticles = GetComponent<ParticleSystem> ();
         gunLine = GetComponent<LineRenderer>();
         gunAudio = GetComponent<AudioSource> ();
         gunLight = GetComponent<Light>();

     }


     void Update()
     {
         // Add the time since Update was last called to the timer.
         timer += Time.deltaTime;

       
        // If the Fire1 button is being press and it's time to fire...
        if (Input.GetButton("Fire1") && timer >= timeBetweenBullets && Time.timeScale != 0)
         {
             // ... shoot the gun.
             if(ammoClip > 0)
             {
                 Shoot();
                 ammoClip -= 1;
             }
         }

        if (Input.GetKeyDown(KeyCode.R))
        {
            
            if (ammoClip > 0)
            {
                extraAmmo += ammoClip;
                ammoClip = 0;
            }
            if (extraAmmo <= 10)
            {
                ammoClip += extraAmmo;
                extraAmmo -= extraAmmo;
            }
            if (extraAmmo >= 10)
            {
                ammoClip = 10;
                extraAmmo -= 10;
            }
            Debug.Log("Reloaded now ");
        }

        // If the timer has exceeded the proportion of timeBetweenBullets that the effects should be displayed for...
        if (timer >= timeBetweenBullets * effectsDisplayTime)
         {
             //disable the effects.
             DisableEffects();
         }

         

     }

   public void DisableEffects ()
   {
       // Disable the line renderer and the light.
       gunLine.enabled = false;
       //faceLight.enabled = false;
       gunLight.enabled = false;
   }


      void Shoot ()
      {
          // Reset the timer.
          timer = 0f;

          // Play the gun shot audioclip.
          gunAudio.Play ();

          // Enable the lights.
          gunLight.enabled = true;
          //faceLight.enabled = true;

          // Stop the particles from playing if they were, then start the particles.
          gunParticles.Stop ();
          gunParticles.Play ();

          // Enable the line renderer and set it's first position to be the end of the gun.
          gunLine.enabled = true;
          gunLine.SetPosition(0, transform.position);

          // Set the shootRay so that it starts at the end of the gun and points forward from the barrel.
          shootRay.origin = transform.position;
          shootRay.direction = transform.forward;

          // Perform the raycast against gameobjects on the Enemy layer and if it hits something
          if(Physics.Raycast (shootRay, out shootHit, range, EnemyMask))
          {
              // Try and find an EnemyHealth script on the gameobject hit.
              EnemyHealth enemyHealth = shootHit.collider.GetComponent <EnemyHealth> ();

              enemyHealth.TakeDamage(damagePerShot, shootHit.point);

            //// If the EnemyHealth component exist
            //if (enemyHealth != null)
            //  {
            //      //the enemy should take damage.
                 
            //     Debug.Log("fuck you");

            //  }

              // Set the second position of the line renderer to the point the raycast hit.
              gunLine.SetPosition(1, shootHit.point);
          }
          // If the raycast didn't hit anything on the shootable layer
          else
          {
              //set the second position of the line renderer to the fullest extent of the gun's range.
              gunLine.SetPosition(1, shootRay.origin + shootRay.direction * range);
          }
      }
  }
