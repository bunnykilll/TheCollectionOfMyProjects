using UnityEngine;



public class EnemyHealth : MonoBehaviour
{
    public int startingHealth = 100;
    public int currentHealth;

    public AudioClip deathClip;

    AudioSource enemyAudio;
    CapsuleCollider capsuleCollider;

    bool isDead;

    void Awake()
    {

        capsuleCollider = GetComponent<CapsuleCollider>();

        // Setting the current health when the enemy first spawns.
        currentHealth = startingHealth;
    }


    void Update()
    {

    }


    public void TakeDamage(int amount, Vector3 hitPoint)
    {

        if (isDead)
        {
            return;
        }



        // Reduce the current health by the amount of damage sustained.
        currentHealth -= amount;

        // If the current health is less than or equal to zero
        if (currentHealth <= 0)
        {

            Death();
        }
    }


    public void Death()
    {
        // The enemy is dead.
        isDead = true;
        Destroy(gameObject);

        // Turn the collider into a trigger so shots can pass through it.
        capsuleCollider.isTrigger = true;

        // Change the audio clip of the audio source to the death clip and play it (this will stop the hurt clip playing).
     
        //GetComponent<AudioSource>().clip = deathClip;
        //GetComponent<AudioSource>().Play();

        MuziekManager.Instance.Play(deathClip);

        Debug.Log("DeathClip");

    }
}
