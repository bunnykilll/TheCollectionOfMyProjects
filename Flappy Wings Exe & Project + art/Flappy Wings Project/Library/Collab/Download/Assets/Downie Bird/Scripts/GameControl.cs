using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameControl : MonoBehaviour 
{
	public static GameControl instance;			
	public Text scoreText;						
	public GameObject gameOvertext;				

	private int score = 0;						
	public bool gameOver = false;				
	public float scrollSpeed = 10f;


	void Awake()
	{
		
		if (instance == null)

			instance = this;

		else if(instance != this)

			Destroy (gameObject);
	}

	void Update()
	{

		if (gameOver && Input.anyKey) //GetKeyDown(KeyCode.Space)
        {

			SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
		}
	}

	public void BirdScored()
	{

		if (gameOver)	
			return;

		score++;

		scoreText.text = "Score: " + score.ToString();
	}

	public void BirdDied()
	{
		gameOvertext.SetActive (true);
		gameOver = true;
	}
}
