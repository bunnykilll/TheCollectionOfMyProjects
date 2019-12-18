using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mouse : MonoBehaviour {

	void Start () {
		Cursor.visible = false;
	}

	void Update () {
        Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);

        transform.position = Vector3.Lerp(transform.position, new Vector3(mousePos.x, mousePos.y, -3), 0.9f);
	}
}
