using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBullet : MonoBehaviour
{

    private int bulletspeed;
    public EnemyBehaviour Owner;

    //public Rigidbody rb; 

    private float LifeInSeconds;

    void Start()
    {
        LifeInSeconds = 1.5f;

        bulletspeed = 20;

        //rb = GetComponent<Rigidbody>();

        Destroy(gameObject, LifeInSeconds);
    }


    void FixedUpdate()
    {
        //rb.MovePosition(transform.position + transform.forward * Time.deltaTime);

        transform.Translate(new Vector3(0, 0, 1) * bulletspeed * Time.deltaTime);

    }





}
