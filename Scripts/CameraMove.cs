using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMove : MonoBehaviour
{
    public float moveSpeed; 
   
    void Update()
    {
        if (Input.GetKey(KeyCode.UpArrow))
            transform.position += Vector3.forward * moveSpeed * Time.deltaTime;
        else if (Input.GetKey(KeyCode.DownArrow))
            transform.position += Vector3.back * moveSpeed * Time.deltaTime;
        else if (Input.GetKey(KeyCode.RightArrow))
            transform.position += Vector3.up * moveSpeed * Time.deltaTime;
        else if (Input.GetKey(KeyCode.LeftArrow))
            transform.position += Vector3.down * moveSpeed * Time.deltaTime;

        if(Input.GetKey(KeyCode.Escape))
        {
            Application.Quit();
        }

    }
}
