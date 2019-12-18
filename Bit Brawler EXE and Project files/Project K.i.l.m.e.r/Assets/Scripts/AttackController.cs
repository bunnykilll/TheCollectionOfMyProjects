using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider2D))]
public class AttackController : MonoBehaviour
{

    public int damage = 10;

    public bool singleTrigger = true;
    public Vector2 velocity;
    [HideInInspector] public bool isTriggered = false;
    [HideInInspector] public GameObject caster;

    void Start()
    {
        
    }

    void Update()
    {
        transform.position += new Vector3(velocity.x, velocity.y);
    }
}
