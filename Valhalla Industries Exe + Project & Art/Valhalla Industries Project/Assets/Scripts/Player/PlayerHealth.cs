using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public enum AciveWeapon
{
    NoWeapon = 0, 
    Glock,
    Revolver,
    Sniper,
    Famas
}


public class PlayerHealth : MonoBehaviour
{
    public AciveWeapon aciveWeapon;         //calls the weapon enum
    public List<KeyCardData> keycards;      

    public pieGraph piegraph;

    public StatisticsEndGame statisticsendgame;

    public GameObject statisticMenuUI;


    public static int TimesPlayed;

    public Image Health;
    public Image Shield;

    public Text ammotxt;

    public GameObject Glock;
    public GameObject Revolver;
    public GameObject Sniper;
    public GameObject Famas; 

    public Image damageImage;                                   // Reference to an image to flash on the screen on being hurt.
    public AudioClip deathClip;                                 // The audio clip to play when the player dies.
    public float flashSpeed = 5f;                               // The speed the damageImage will fade at.
    public Color flashColour = new Color(1f, 0f, 0f, 0.1f);     // The colour the damageImage is set to, to flash.

    bool godMode;

    AudioSource playerAudio;                                    // Reference to the AudioSource component.
    PlayerMovement playerMovement;

    [SerializeField] PlayerShooting GlockScript;
    [SerializeField] PlayerShooting RevolverScript;
    [SerializeField] PlayerShooting SniperScript;
    [SerializeField] PlayerShooting FamasScript;


    bool isDead;
    bool damaged;




    void Awake()
    {
        playerAudio = GetComponent<AudioSource>();
        playerMovement = GetComponent<PlayerMovement>();
    }
    private void Start()
    {
        Health.fillAmount = 1f;
        Shield.fillAmount = 0f;

        aciveWeapon = AciveWeapon.NoWeapon;

        statisticMenuUI.SetActive(false);
    }

    void Update()
    {
        // If the player has just been damaged
        if (damaged)
        {
            //set the colour of the damageImage to the flash colour.
            damageImage.color = flashColour;
        }
        else
        {
            //transition the colour back to clear.
            damageImage.color = Color.Lerp(damageImage.color, Color.clear, flashSpeed * Time.deltaTime);
        }
        damaged = false;

        //if (Input.GetKeyDown(KeyCode.X))
        //{
        //    Health.fillAmount -= 0.1f;
        //}

        if (Input.GetKeyDown(KeyCode.Alpha6))
        {
            godMode = false; 
        }


        //godmode

        if (Input.GetKeyDown(KeyCode.Alpha5))
        {
            godMode = true; 
        }

        //if (Input.GetKey(KeyCode.Space))
        //{
        //    pieChartStats();
        //}
    }

    //public void pieChartStats()
    //{
    //    Time.timeScale = 0f;
    //    piegraph.CalculatePieChart();
    //    print("Stats");
    //}

    void EquipWeapon()
    {
        if (aciveWeapon == AciveWeapon.NoWeapon)
        {
            Glock.SetActive(false);
            Revolver.SetActive(false);
            Famas.SetActive(false);
            Sniper.SetActive(false);
        }
        if (aciveWeapon == AciveWeapon.Glock)
        {
            Glock.SetActive(true);
            Revolver.SetActive(false);
            Famas.SetActive(false);
            Sniper.SetActive(false);
        }
        if (aciveWeapon == AciveWeapon.Revolver)
        {
            Glock.SetActive(false);
            Revolver.SetActive(true);
            Famas.SetActive(false);
            Sniper.SetActive(false);
        }
        if (aciveWeapon == AciveWeapon.Famas)
        {
            Glock.SetActive(false);
            Revolver.SetActive(false);
            Famas.SetActive(true);
            Sniper.SetActive(false);
        }
        if (aciveWeapon == AciveWeapon.Sniper)
        {
            Glock.SetActive(false);
            Revolver.SetActive(false);
            Famas.SetActive(false);
            Sniper.SetActive(true);
        }
    }

    public void TakeDamage(float amount)
    {
        if (godMode)
        {
            return;
        }

        // Set the damaged flag so the screen will flash.
        damaged = true;

        // Reduce the current health by the damage amount.
        Health.fillAmount -= amount;


        // If the player has lost all it's health
        if (Health.fillAmount <= 0)
        {
            //it should die.
            Death();

            Debug.Log("You are Death");

        }
    }

    private void Death()
    {
        MuziekManager.Instance.Play(deathClip);
        //piegraph.MakeGraph();
        //pieChartStats();
        statisticMenuUI.SetActive(true);
        print("PieChart scene loaded"); 
    }

    private void OnTriggerEnter(Collider other)
    {
        
        if (other.gameObject.CompareTag("Medkit"))
        {

            Health.fillAmount += 0.5f;
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);
        }

        if (other.gameObject.CompareTag("Shield"))
        {
            Shield.fillAmount += 1f;
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);

        }

        if (other.gameObject.CompareTag("Ammo"))
        {
            GlockScript.extraAmmo += 30;
            RevolverScript.extraAmmo += 30;
            SniperScript.extraAmmo += 30;
            FamasScript.extraAmmo += 30;
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);
        }


        if (other.gameObject.CompareTag("EnemyBullet"))
        {
            if (other.GetComponent<EnemyBullet>())
            {
                if (other.GetComponent<EnemyBullet>().Owner != null)
                    other.GetComponent<EnemyBullet>().Owner.Attack(this);
            }


            Destroy(other.gameObject);
        }

       
        if (other.gameObject.CompareTag("GlockPickUp"))
        {
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);
            


            aciveWeapon = AciveWeapon.Glock;
            EquipWeapon(); 


        }
        if (other.gameObject.CompareTag("RevolverPickUp"))
        {
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);

            aciveWeapon = AciveWeapon.Revolver;
            EquipWeapon();


        }
        if (other.gameObject.CompareTag("FamasPickUp"))
        {
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);

            aciveWeapon = AciveWeapon.Famas;
            EquipWeapon();


        }
        if (other.gameObject.CompareTag("SniperPickUp"))
        {
            other.gameObject.SetActive(false);
            Destroy(other.gameObject);

            aciveWeapon = AciveWeapon.Sniper;
            EquipWeapon();
        }

        Keycard keycard = other.GetComponent<Keycard>();
        if (keycard != null)
        {
            if (!keycards.Contains(keycard.KeycardData))
            {
                keycards.Add(keycard.KeycardData);
            }
            Destroy(other.gameObject);
        }

        Gate doorScript = other.GetComponent<Gate>();
        if (doorScript != null)
        {
            doorScript.PlayerEnteredTrigger(keycards);
        }
    }

    
}
