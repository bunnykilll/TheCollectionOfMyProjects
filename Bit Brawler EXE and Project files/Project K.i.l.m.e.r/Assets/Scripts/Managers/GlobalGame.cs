using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalGame : MonoBehaviour
{
    public static GlobalGame instance;
    private void Awake()
    {
        if(instance != null)
        {
            Destroy(gameObject);
            return;
        }

        instance = this;

        DontDestroyOnLoad(gameObject);
    }

    public GameObject player1, player2;

    void Start()
    {
        GetComponent<AudioSource>().volume = PlayerPrefs.GetFloat("Volume");
    }

    void Update()
    {
        
    }

    void SelectPlayer(GameObject player)
    {
        if(player1 == null)
        {
            player1 = player;
        }
        else
        {
            player2 = player;
        }
    }
}
