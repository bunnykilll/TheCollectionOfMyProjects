using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AmmoText : MonoBehaviour
{
    [SerializeField] PlayerHealth Player;

    [SerializeField] PlayerShooting Glock;
    [SerializeField] PlayerShooting Revolver;
    [SerializeField] PlayerShooting Sniper;
    [SerializeField] PlayerShooting Famas;

    Text ammotxt;

    [SerializeField] GameObject Text; 


    private void Start()
    {
      ammotxt = Text.GetComponent<Text>();
    }


    void Update()
    {
        if (Player.aciveWeapon == AciveWeapon.NoWeapon)
        {
            ammotxt.text = "";
        }
        else if (Player.aciveWeapon == AciveWeapon.Glock)
        {
            ammotxt.text = "Ammo: " + Glock.ammoClip + "/" + Glock.extraAmmo.ToString();
        }
        else if (Player.aciveWeapon == AciveWeapon.Revolver)
        {
            ammotxt.text = "Ammo: " + Revolver.ammoClip + "/" + Revolver.extraAmmo.ToString();
        }
        else if (Player.aciveWeapon == AciveWeapon.Sniper)
        {
            ammotxt.text = "Ammo: " + Sniper.ammoClip + "/" + Sniper.extraAmmo.ToString();
        }
        else if (Player.aciveWeapon == AciveWeapon.Famas)
        {
            ammotxt.text = "Ammo: " + Famas.ammoClip + "/" + Famas.extraAmmo.ToString();
        }
    }
}
