using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LSystem : MonoBehaviour
{
    public float Theta;

    public string NextGeneration;
    public string CurrentGeneration;

    public LineRenderer lr;

    public Stack<Vector3> vector3p;
    public Stack<Quaternion> vector3r;

    public GameObject StartingPoint;
    public GameObject Turtle;

    public Vector3 prevPos;

    void Start()
    {
        CurrentGeneration = "X";
        NextGeneration = "";
        prevPos = StartingPoint.transform.position;

        vector3p = new Stack<Vector3>();
        vector3r = new Stack<Quaternion>();
    }
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.A))
        {
            Generator();
        }
    }
    public void Generator()
    {
        NextGeneration = "";
        for (int i = 0; i < CurrentGeneration.Length; i++)
        {
            if (CurrentGeneration[i] == 'X')
            {
                NextGeneration += "F[+X]F[-X]+X";                                    //Fake//X[F+-F]F-F[X]    Real//F[+X][-X]FX 
            }
            else if (CurrentGeneration[i] == 'F')
            {
                NextGeneration += "FF";
            }
            else if (CurrentGeneration[i] == '[')
            {
                NextGeneration += "[";
            }
            else if (CurrentGeneration[i] == ']')
            {
                NextGeneration += "]";
            }
            else if (CurrentGeneration[i] == '-')
            {
                NextGeneration += "-";
            }
            else if (CurrentGeneration[i] == '+')
            {
                NextGeneration += "+";
            }
        }
        CurrentGeneration = NextGeneration;
        print(CurrentGeneration);
        DrawGeneration();
    }
    public void DrawGeneration()
    {
        for (int i = 0; i < CurrentGeneration.Length; i++)
        {
            if (CurrentGeneration[i] == 'X')
            {
                Turtle.transform.position = Turtle.transform.position + Turtle.transform.forward;
                DrawLine();
            }
            else if (CurrentGeneration[i] == 'F')
            {

                Turtle.transform.position = Turtle.transform.position + Turtle.transform.forward ;

                DrawLine();
            }
            else if (CurrentGeneration[i] == '[')
            {
                vector3p.Push(Turtle.transform.position);
                vector3r.Push(Turtle.transform.rotation);
                //positie + rotatie van turtle in stack(s) opslaan
            }
            else if (CurrentGeneration[i] == ']')
            {
                Turtle.transform.position = vector3p.Pop();                
                Turtle.transform.rotation = vector3r.Pop();
                //pop een positie en rotatie van de stack
            }
            else if (CurrentGeneration[i] == '-')
            {
                Turtle.transform.Rotate(0, -Theta, 0);
                //roteer naar links met theta graden
            }
            else if (CurrentGeneration[i] == '+')
            {
                Turtle.transform.Rotate(0, Theta, 0);
                //roteer naar rechts met theta graden
            }

            prevPos = Turtle.transform.position;
        }

        Turtle.transform.position = StartingPoint.transform.position;
        Turtle.transform.rotation = new Quaternion();
        prevPos = Turtle.transform.position;

    }

    public void DrawLine()
    {

        GameObject go = new GameObject();
        go.transform.parent = StartingPoint.transform;
        go.name = "Line";
        lr = go.AddComponent<LineRenderer>();

        lr.material = new Material(Shader.Find("Sprites/Default"));

        Gradient g = new Gradient();
        g.SetKeys(new GradientColorKey[] { new GradientColorKey(Color.green, 0f), new GradientColorKey(new Color(.8f, 1f, .3f), 1f) },
            new GradientAlphaKey[] { new GradientAlphaKey(1f, 0f), new GradientAlphaKey(1f,1f)} );
        lr.colorGradient = g;
        lr.startWidth = 0.5f;
        lr.SetPosition(0, prevPos);
        lr.SetPosition(1, Turtle.transform.position);
    }
}
