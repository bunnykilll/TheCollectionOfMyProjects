using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;



public class Pole : MonoBehaviour
{
    private MainScript game;
    public Stack<GameObject> Blocks; 
    private Vector3 size;

    void Awake()
    {
        game = FindObjectOfType<MainScript>();

        Blocks = new Stack<GameObject>();

        size = transform.lossyScale;
    }

    public void AddDisc(GameObject Go)
    {
        Blocks.Push(Go);
        StackDisc(Go);
    }

    private void StackDisc(GameObject go)
    {

        float poleheight = GetSize().y;
        float discheight = go.GetComponent<Disc>().GetSize().y;


        float newy = transform.position.y - (poleheight * 0.5f) + ((Blocks.Count * discheight) - (discheight * 0.5f));
        go.transform.position = new Vector3(transform.position.x, newy, go.transform.position.z);
    }



    public Vector3 GetSize()
    {
        return size;
    }

    private void OnMouseUp()
    {
        if(game.GetSelectedDisc() == null)
        {
            if(Blocks.Count > 0)
            {
                game.SetSelectedDisc( Blocks.Pop() );
            }
        }
        else
        {
            if (Blocks.Count > 0)
            {
                if (game.GetSelectedDisc().GetComponent<Disc>().GetSize().x > Blocks.Peek().GetComponent<Disc>().GetSize().x)
                {
                    return;
                }
            }
            AddDisc(game.GetSelectedDisc());
            game.EmptySelectedDisc();
        }
        
    }

}
