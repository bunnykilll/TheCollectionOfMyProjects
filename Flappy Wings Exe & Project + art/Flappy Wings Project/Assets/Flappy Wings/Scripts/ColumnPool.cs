using UnityEngine;
using System.Collections;

public class ColumnPool : MonoBehaviour 
{
	public GameObject columnPrefab;
    
    public int columnPoolSize = 5;

    public float spawnRate = 1f;

    public float columnMin = 2f;

    public float columnMax = 6f;	


	private GameObject[] columns;									
	private int currentColumn = 0;

    private Vector2 objectPoolPosition = new Vector2 (-10,-10);		
	private float spawnXPosition = 15f;

	private float timeSinceLastSpawned;


	void Start()
	{
		timeSinceLastSpawned = 0f;
		
		columns = new GameObject[columnPoolSize];

		for(int i = 0; i < columnPoolSize; i++)
		{
			
			columns[i] = (GameObject)Instantiate(columnPrefab, objectPoolPosition, Quaternion.identity);
		}
	}


	
	void Update()
	{
		timeSinceLastSpawned += Time.deltaTime;

		if (GameControl.instance.gameOver == false && timeSinceLastSpawned >= spawnRate) 
		{	
			timeSinceLastSpawned = 0f;

			//Set a random y position for the column
			float spawnYPosition = Random.Range(columnMin, columnMax);

			//then set the current column to that position.
			columns[currentColumn].transform.position = new Vector2(spawnXPosition, spawnYPosition);
			currentColumn ++;

			if (currentColumn >= columnPoolSize) 
			{
				currentColumn = 0;
			}
		}
	}
}