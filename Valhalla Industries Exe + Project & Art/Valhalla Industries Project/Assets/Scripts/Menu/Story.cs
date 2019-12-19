using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Story : MonoBehaviour
{
    public GameObject Image_a;
    public GameObject Image_b;
    public GameObject Image_c;
    public GameObject Image_d;
    public GameObject Image_e;
    public GameObject Image_f;


    void Start()
    {

        Image_a.SetActive(true);
        Image_b.SetActive(false);
        Image_c.SetActive(false);
        Image_d.SetActive(false);
        Image_e.SetActive(false);
        Image_f.SetActive(false);
    }

    
    public void Im_a()
    {
        Image_a.SetActive(true);
        Image_b.SetActive(false);
        Image_c.SetActive(false);
        Image_d.SetActive(false);
        Image_e.SetActive(false);
        Image_f.SetActive(false);
        //geen idee of dit werkt 
    }
    public void Im_b()
    {
        Image_a.SetActive(false);
        Image_b.SetActive(true);
        Image_c.SetActive(false);
        Image_d.SetActive(false);
        Image_e.SetActive(false);
        Image_f.SetActive(false);

    }
    public void Im_c()
    {
        Image_a.SetActive(false);
        Image_b.SetActive(false);
        Image_c.SetActive(true);
        Image_d.SetActive(false);
        Image_e.SetActive(false);
        Image_f.SetActive(false);
    }
    public void Im_d()
    {
        Image_a.SetActive(false);
        Image_b.SetActive(false);
        Image_c.SetActive(false);
        Image_d.SetActive(true);
        Image_e.SetActive(false);
        Image_f.SetActive(false);
    }
    public void Im_e()
    {
        Image_a.SetActive(false);
        Image_b.SetActive(false);
        Image_c.SetActive(false);
        Image_d.SetActive(false);
        Image_e.SetActive(true);
        Image_f.SetActive(false);
    }
    public void Im_f()
    {
        Image_a.SetActive(false);
        Image_b.SetActive(false);
        Image_c.SetActive(false);
        Image_d.SetActive(false);
        Image_e.SetActive(false);
        Image_f.SetActive(true);
    }
}
