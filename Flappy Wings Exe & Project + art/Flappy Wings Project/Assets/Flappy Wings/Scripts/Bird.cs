using UnityEngine;
using System.Collections;

public class Bird : MonoBehaviour 
{
	public float upForce;					//Upward force
	private bool isDead = false;			//Has The Player Hit A Wall? 
				
	private Rigidbody2D rb2d;				

	void Start()
	{
		

		
		rb2d = GetComponent<Rigidbody2D>();
	}

	void Update()
	{
		
		if (isDead == false) 
		{
			
			if (Input.GetKeyDown(KeyCode.Space)) 
			{
                rb2d.velocity = Vector2.zero;
				rb2d.AddForce(new Vector2(0, upForce));
			}
		}
	}

	void OnCollisionEnter2D(Collision2D other)
	{
		rb2d.velocity = Vector2.zero;
		isDead = true;

		GameControl.instance.BirdDied ();
	}
}
