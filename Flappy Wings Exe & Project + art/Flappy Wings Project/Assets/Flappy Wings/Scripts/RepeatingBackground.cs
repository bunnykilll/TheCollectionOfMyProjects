using UnityEngine;
using System.Collections;

public class RepeatingBackground : MonoBehaviour 
{
	
	private BoxCollider2D groundCollider;		
	private float GroundXLength;		

	private void Awake ()
	{

		groundCollider = GetComponent<BoxCollider2D> ();

		GroundXLength = groundCollider.size.x;
	}

	
	private void Update()
	{
		
		if (transform.position.x < -GroundXLength)
		{
			RepositionBackground ();
		}
	}
	private void RepositionBackground()
	{
		
		Vector2 groundOffSet = new Vector2(GroundXLength * 2f, 0);
		transform.position = (Vector2) transform.position + groundOffSet;
	}
}