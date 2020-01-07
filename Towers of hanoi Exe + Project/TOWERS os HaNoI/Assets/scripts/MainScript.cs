using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainScript : MonoBehaviour
{

    Vector2 SelectedPosition;
    Vector2 BlockPosition;


    [SerializeField] private GameObject[] Blocks;
    [SerializeField] private GameObject[] Poles;

    private GameObject selectedDisc;

    public GameObject Tower3;

    public GameObject WinScreen;


   public void Start()
    {
        SelectedPosition = Camera.main.transform.TransformPoint(new Vector3(0, 2, -1f));
        BlockPosition = Camera.main.transform.TransformPoint(new Vector3(-10, 0, -1f));

        for (int i = 0; i < Blocks.Length; i++)
        {
            Poles[0].GetComponent<Pole>().AddDisc(Blocks[i]);
        }
       
    }

    private void Update()
    {
        if (Tower3.GetComponent<Pole>().Blocks.Count == 5)
        {
            WinScreen.SetActive(true);
        }

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Application.Quit();
        }
    }

    public void SetSelectedDisc(GameObject go)
    {
        selectedDisc = go;
        selectedDisc.transform.position = transform.position;
    }

    public GameObject GetSelectedDisc()
    {
        return selectedDisc;
    }

    public void EmptySelectedDisc()
    {
        selectedDisc = null;
        CheckForGameOver();
    }
    
    public void CheckForGameOver()
    {
        
    }

}
