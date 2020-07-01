using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyPatrol : MonoBehaviour
{
    //patrol for enemy
    public List<Transform> patrolPoint = new List<Transform>();
    private Transform targetPatrolPoint;
    private int targetPatrolPointIndex = 0;
    private float minDistance = 0.1f;
    private int lastPatrolPointIndex;

    private float movementSpeed = 5.0f;

    void Start()
    {
        //enemy for patrol
        lastPatrolPointIndex = patrolPoint.Count - 1;
        targetPatrolPoint = patrolPoint[targetPatrolPointIndex];
    }

    void Update()
    {
        //enemy patrol
        float movementStep = movementSpeed * Time.deltaTime;

        float distance = Vector3.Distance(transform.position, targetPatrolPoint.position);
        CheckDistanceToPatrolPoint(distance);

        transform.position = Vector3.MoveTowards(transform.position, targetPatrolPoint.position, movementStep);
    }

    void CheckDistanceToPatrolPoint(float currentDistance)
    {
        if (currentDistance <= minDistance)
        {
            targetPatrolPointIndex++;
            UpdateTargetPatrolPoint();
        }
    }

    void UpdateTargetPatrolPoint()
    {
        if(targetPatrolPointIndex > lastPatrolPointIndex)
        {
            targetPatrolPointIndex = 0;
        }

        targetPatrolPoint = patrolPoint[targetPatrolPointIndex];
    }
}
