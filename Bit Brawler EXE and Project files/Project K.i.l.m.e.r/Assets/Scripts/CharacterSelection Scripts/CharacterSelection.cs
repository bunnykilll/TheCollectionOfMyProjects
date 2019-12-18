using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CharacterSelection : MonoBehaviour
{
    
    public void SetCharacter(GameObject prefab)
    {
        if(GlobalGame.instance.player1 == null)
        {
            GlobalGame.instance.player1 = prefab;
        }
        else
        {
            GlobalGame.instance.player2 = prefab;

            SceneManager.LoadScene(2);
        }
    }
}
