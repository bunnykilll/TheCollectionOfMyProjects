using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOfLife : MonoBehaviour
{

    bool[,] Read, Write, Buffer1, Buffer2;

    public GameObject[,] Grid;

     public int GridSize;

    int y; 
    int x;
    int Yoffset;
    int Xoffset; 

    int amountNeighbours = 0;

    [SerializeField] GameObject CellPrefab;

    bool runSimulation = false;

    public void Start()
    {
        Grid = new GameObject[GridSize, GridSize];

        Buffer1 = new bool[GridSize, GridSize];
        Buffer2 = new bool[GridSize, GridSize];

        Read = Buffer1;
        Write = Buffer2;

        InstantiateGrid();

    }

    public void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            runSimulation = !runSimulation;
            InstantiateGrid(); 

        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            runSimulation = !runSimulation;
        }

        if(runSimulation == false)
        {
            return;
        }

        for (y = 0; y < Read.GetLength(0); y++)
        {
            for ( x = 0; x < Read.GetLength(1); x++)
            {
                amountNeighbours = 0; 
                for ( Yoffset = -1; Yoffset <= 1; Yoffset++)
                {
                    for (Xoffset = -1; Xoffset <= 1; Xoffset++)
                    {
                        if (y + Yoffset >= 0 && y + Yoffset < Read.GetLength(0))
                        {
                            if (x + Xoffset >= 0 && x + Xoffset < Read.GetLength(1))
                            {
                                if (Xoffset == 0 && Yoffset == 0)
                                {
                                    continue;
                                }
                                if (Read[y + Yoffset, x + Xoffset] == true)
                                {
                                    amountNeighbours ++; 
                                }
                            }
                        }
                    }
                }

                if (amountNeighbours == 3)
                {
                    Write[y, x] = true;
                }
                else if (amountNeighbours == 2)
                {
                    Write[y, x] = Read[y, x];
                }
                else
                {
                    if (y >= Read.GetLength(0) || x >= Read.GetLength(1))
                    {
                        print("iep");
                    }

                    Write[y, x] = false;
                }
            }
        }
        if (Read == Buffer1)
        {
            Read = Buffer2;
            Write = Buffer1;
        }
        else
        {
            Read = Buffer1;
            Write = Buffer2; 
        }

        DrawGrid();
    }

    public void InstantiateGrid()
    {
        for (y = 0; y < Grid.GetLength(0); y++)
        {
            for (x = 0; x < Grid.GetLength(1); x++)
            {
                
                if(Grid[y,x] == null)
                {
                    Grid[y, x] = Instantiate<GameObject>(CellPrefab);
                    Grid[y, x].transform.position = new Vector3(y, x, 0f);
                }

                Read[y, x] = ( Random.Range(0, 2) == 0 ) ? false : true ;

            }
        }


        DrawGrid();
    }

    public void DrawGrid()
    {
        for (y = 0; y < Read.GetLength(0); y++)
        {
            for (x = 0; x < Read.GetLength(1); x++)
            {
                if (Read[y, x] == true)
                {
                    Grid[y, x].SetActive(true);
                }
                else
                {
                    Grid[y, x].SetActive(false);
                }
            }
        }
    }
}
