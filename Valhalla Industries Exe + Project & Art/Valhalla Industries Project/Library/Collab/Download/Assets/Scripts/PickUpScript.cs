using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpScript : MonoBehaviour
{

    private void Awake()
    {

    }

    public void Update()
    {
        transform.Rotate(0, 90 * Time.deltaTime, 0);
    }

   }
