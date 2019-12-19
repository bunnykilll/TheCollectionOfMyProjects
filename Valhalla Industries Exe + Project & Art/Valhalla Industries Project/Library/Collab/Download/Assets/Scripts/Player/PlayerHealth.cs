using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

namespace CompleteProject
{
    public class PlayerHealth : MonoBehaviour
    {
        public Slider Health;  
        public Slider Shield; 
        public Image damageImage;                                   // Reference to an image to flash on the screen on being hurt.
        public AudioClip deathClip;                                 // The audio clip to play when the player dies.
        public float flashSpeed = 5f;                               // The speed the damageImage will fade at.
        public Color flashColour = new Color(1f, 0f, 0f, 0.1f);     // The colour the damageImage is set to, to flash.


        
        AudioSource playerAudio;                                    // Reference to the AudioSource component.
        PlayerMovement playerMovement;                              
        PlayerShooting playerShooting;                              
        bool isDead;                                                
        bool damaged;



       
        void Awake ()
        {
            playerAudio = GetComponent <AudioSource> ();
            playerMovement = GetComponent <PlayerMovement> ();
            playerShooting = GetComponentInChildren <PlayerShooting> ();

          
            
        }
        private void Start()
        {
            Health.value = 1f;
            Shield.value = 0f; 
        }

        void Update ()
        {
            // If the player has just been damaged
            if(damaged)
            {
                //set the colour of the damageImage to the flash colour.
                damageImage.color = flashColour;
            }
            else
            {
                //transition the colour back to clear.
                damageImage.color = Color.Lerp (damageImage.color, Color.clear, flashSpeed * Time.deltaTime);
            }
            damaged = false;

            if (Input.GetKeyDown(KeyCode.X))
            {
                
                Health.value -= 0.6f; 
            }
        }

       
        public void TakeDamage (float amount)
        {
            // Set the damaged flag so the screen will flash.
            damaged = true;

            // Reduce the current health by the damage amount.
           Health.value -= amount;

            // Play the OOF sound effect.
            playerAudio.Play ();

            // If the player has lost all it's health
            if(Health.value <= 0 && !isDead)
            {
                //it should die.
                Death ();
               
            }
        }


        void Death ()
        {
            // Set the death flag so this function won't be called again.
            isDead = true;

            // Turn off any remaining shooting effects.
            playerShooting.DisableEffects ();

            //// Tell the animator that the player is dead.
            //anim.SetTrigger ("Die");

            // Set the audiosource to play the death clip and play it (this will stop the hurt sound from playing).
            playerAudio.clip = deathClip;
            playerAudio.Play ();

            // Turn off the movement and shooting scripts.
            playerMovement.enabled = false;
            playerShooting.enabled = false;

            Debug.Log("You died man.. pepehands :D");
        }


        public void RestartLevel ()
        {
            // Reload the level that is currently loaded.
            SceneManager.LoadScene (0);
        }

        private void OnTriggerEnter(Collider other)
        {
            if(other.gameObject.CompareTag("Medkit"))
            {
                
                Health.value += 0.3f;
                Destroy(other.gameObject);
            }

            if (other.gameObject.CompareTag("Shield"))
            {
                Shield.value += 0.5f;
                Destroy(other.gameObject);
                
            }


        }
    }
}