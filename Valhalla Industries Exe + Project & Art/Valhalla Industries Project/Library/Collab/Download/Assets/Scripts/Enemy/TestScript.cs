using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class TestScript : MonoBehaviour
{
    public Transform[] patrolPoints;
    public float moveSpeed;
    private int currentPoint;
    private GameObject Player;
    private bool Patrolling = true;
    private NavMeshAgent navComp;
    public float patrolRange;

    void Start()
    {
        currentPoint = 0;
        Player = GameObject.FindGameObjectWithTag("Player");
        navComp = this.GetComponent<NavMeshAgent>();
        //    transform.position = patrolPoints [0].position;
    }

    void Update()
    {

        float range = Vector3.Distance(transform.position, Player.transform.position);
        if (range <= patrolRange)
        {
            Patrolling = false;
        }
        else if (range >= 20)
        {
            Patrolling = true;
        }
        if (Patrolling)
        {
            navComp.enabled = false;
            transform.LookAt(patrolPoints[currentPoint].transform.position);
            transform.position = Vector3.MoveTowards(transform.position, patrolPoints[currentPoint].position, moveSpeed * Time.deltaTime);
            if (transform.position == patrolPoints[currentPoint].position)
            {
                currentPoint++;
            }
            if (currentPoint >= patrolPoints.Length)
            {
                currentPoint = 0;
            }
        }
        else if (Patrolling == false)
        {
            //transform.position = Vector3.MoveTowards (transform.position, currentPlayer.transform.position, moveSpeed * Time.deltaTime);
            navComp.enabled = true;
            navComp.SetDestination(Player.transform.position);

        }
    }

}

