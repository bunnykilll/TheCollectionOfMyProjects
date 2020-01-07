using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public class Disc : MonoBehaviour
{

    private Vector3 size;


    public void Awake()
    {
        size = transform.lossyScale;

    }

    public Vector3 GetSize()
    {
        return size;
    }

    private void OnMouseUp()
    {
        //transform.position = SelectedPosition;
    }



}


