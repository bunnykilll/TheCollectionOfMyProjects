using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{
	// Color of the gizmo
	public Color gizmoColor;

	// Spawn types
	public enum SpawnTypes
	{
		Normal,
		Once,
		Wave,
		TimedWave
	}
	// The different Enemy levels
	public enum EnemyLevels
	{
		Easy,
		Medium,
		Hard,
		Boss
	}

	[Header("Enemy Level")]
	// Enemy level to be spawnedEnemy
	public EnemyLevels enemyLevel = EnemyLevels.Easy;

	[Header("Enemies")]
	public GameObject EasyEnemy;
	public GameObject MediumEnemy;
	public GameObject HardEnemy;
	public GameObject BossEnemy;
	private Dictionary<EnemyLevels, GameObject> Enemies = new Dictionary<EnemyLevels, GameObject>(4);

	// Different Spawn states and ways of doing them
	[Header("SpawnType")]
	public SpawnTypes spawnType;

	// Enemies and how many have been created and how many are to be created
	[Header("Number Of Enemies")]
	public int totalEnemy;
	public int numEnemy;
	public int spawnedEnemy;

	[Header("Waves")]
	// timed wave controls
	public float waveTimer;
	//Wave controls
	public int totalWaves;

	[Header("Spawn")]
	//set this true if u want it to spawn instantly or turn it off if u want it to work with a trigger
	public bool Spawn = true;

	[Header("Sounds")]
	public AudioSource SpawnerAudioSource;
	public AudioClip Spawned;

	private bool waveSpawn = false;
	private int numWaves;
	private float timeTillWave;
	// End of Different Spawn states and ways of doing them
	void Awake()
	{
		SpawnerAudioSource = GetComponent<AudioSource>();
	}
	void Start()
	{
		Enemies.Add(EnemyLevels.Easy, EasyEnemy);
		Enemies.Add(EnemyLevels.Boss, BossEnemy);
		Enemies.Add(EnemyLevels.Medium, MediumEnemy);
		Enemies.Add(EnemyLevels.Hard, HardEnemy);

	}
	// Draws a cube to show where the spawn point is.
	void OnDrawGizmos()
	{
		Gizmos.color = gizmoColor;
		Gizmos.DrawCube(transform.position, new Vector3(0.5f, 0.5f, 0.5f));
	}
	void Update()
	{
		if (Spawn)
		{
			//Spawns enemies everytime one dies
			if (spawnType == SpawnTypes.Normal)
			{
				//checks to see if the number of spawned enemies is less than the max num of enemies
				if (numEnemy < totalEnemy)
				{
					//spawns an enemy
					spawnEnemy();
				}
			}

			// Spawns enemies only once
			if (spawnType == SpawnTypes.Once)
			{
				// checks to see if the overall spawned num of enemies is more or equal to the total to be spawned
				if (spawnedEnemy >= totalEnemy)
				{
					//sets the spawner to false
					Spawn = false;
				}
				else
				{
					// spawns an enemy
					spawnEnemy();
				}
			}

			//spawns enemies in waves, so once all are dead, spawns more
			else if (spawnType == SpawnTypes.Wave)
			{
				if (numWaves < totalWaves + 1)
				{
					if (waveSpawn)
					{
						//spawns an enemy
						spawnEnemy();
					}
					if (numEnemy == 0)
					{
						// enables the wave spawner
						waveSpawn = true;
						//increase the number of waves
						numWaves++;
					}
					if (numEnemy == totalEnemy)
					{
						// disables the wave spawner
						waveSpawn = false;
					}
				}
			}

			// Spawns enemies in waves but based on time.
			else if (spawnType == SpawnTypes.TimedWave)
			{
				// checks if the number of waves is bigger than the total waves
				if (numWaves <= totalWaves)
				{
					// Increases the timer to allow the timed waves to work
					timeTillWave += Time.deltaTime;
					if (waveSpawn)
					{
						//spawns an enemy
						spawnEnemy();
					}
					// checks if the time is equal to the time required for a new wave
					if (timeTillWave >= waveTimer)
					{
						// enables the wave spawner
						waveSpawn = true;
						// sets the time back to zero
						timeTillWave = 0.0f;
						// increases the number of waves
						numWaves++;
						// A hack to get it to spawn the same number of enemies regardless of how many have been killed
						numEnemy = 0;
					}
					if (numEnemy <= totalEnemy)
					{
						// diables the wave spawner
						waveSpawn = false;
					}
				}
				else
				{
					Spawn = false;
				}
			}
		}
	}
	
	// spawns an enemy based on the enemy level that you selected
	private void spawnEnemy()
	{
		GameObject enemy = Instantiate(Enemies[enemyLevel], gameObject.transform.position, Quaternion.identity);
		enemy.GetComponent<EnemyController>().enemySpawner = this;
		// Increase the total number of enemies spawned and the number of spawned enemies
		numEnemy++;
		spawnedEnemy++;
		if (Spawned)
		{
			SpawnerAudioSource.PlayOneShot(Spawned);
		}
	}
	// Call this function from the enemy when it "dies" to remove an enemy count
	public void killEnemy()
	{
			numEnemy--;
	}
	public void enableSpawner()
	{
		Spawn = true;

	}
	public void disableSpawner()
	{
		Spawn = false;

	}
	// returns the Time Till the Next Wave, for a interface, ect.
	public float TimeTillWave
	{
		get
		{
			return timeTillWave;
		}
	}
	// Enable the spawner, useful for trigger events because you don't know the spawner's ID.
	public void enableTrigger()
	{
		Spawn = true;
	}
	public void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{
			enableTrigger();
		}
	}
}
