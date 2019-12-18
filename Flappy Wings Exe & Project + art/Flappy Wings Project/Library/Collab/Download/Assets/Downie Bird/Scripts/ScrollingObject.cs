using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollingObject : MonoBehaviour 
{
	private Rigidbody2D rb2d;


	void Start () 
	{
		
		rb2d = GetComponent<Rigidbody2D>();

		
		rb2d.velocity = new Vector2 (GameControl.instance.scrollSpeed, 0);
	}

	void Update()
	{
        //If the game is over, stop scrolling.

        if (GameControl.instance.gameOver == true)
        {
            rb2d.velocity = Vector2.zero;
        }
    }
}
