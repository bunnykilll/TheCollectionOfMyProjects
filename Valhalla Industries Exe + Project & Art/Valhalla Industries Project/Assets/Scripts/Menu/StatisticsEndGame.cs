using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class StatisticsEndGame : MonoBehaviour
{
   // public GameObject EndGameMenuUI;
    
    public pieGraph piegraph;
    public PlayerHealth player;
    public Text accuracy;

    public Text timesYouPlayed;  
    //public Text DiedBy; 
    
    private void Start()
    {
        //EndGameMenuUI.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.CompareTag("Player"))
        {
            //player.pieChartStats();
            //piegraph.MakeGraph();
            //NextLevel();
            EndGame();
            //Stats();
        }
    }

    public void Stats()
    {
        //accuracy.text = "Accuracy " + Mathf.Round(piegraph.accuracy *100f).ToString() + "%";
        //timesYouPlayed.text = "Times Played " + PlayerHealth.TimesPlayed.ToString();
        //DiedBy.text = "Died By " + (Enemyname).ToString();

    }
    public void Update()
    {
       //if(Input.GetKey(KeyCode.Space))
       // {
       //     player.pieChartStats(); 
       // }
    }

    public void EndGame()
    {
        SceneManager.LoadScene("EndGame");
    }

    public void NextLevel()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene("SecondLevel");
        
    }
    public void LoadMenu()
    {
        Debug.Log("Loading menu...");
        SceneManager.LoadScene("Menu");
    }
}
