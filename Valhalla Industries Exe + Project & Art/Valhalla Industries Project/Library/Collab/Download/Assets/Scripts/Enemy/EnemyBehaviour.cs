using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public enum EnemyState
{
    Idle, Moving, Attacking
}
public class EnemyBehaviour : MonoBehaviour
{
    [Header("Stats")]
    [SerializeField] private float sightDistance;
    [SerializeField] private float fieldOfView;
    [SerializeField] private LayerMask visionLayerMask;
    [Header("Navigation")]
    [SerializeField] private Vector3[] waypoints;

    private NavMeshAgent navMeshAgent;
    private EnemyState enemyState;
    private int waypoint;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
    }
    private void OnDrawGizmosSelected()
    {
        for (int i = 0; i < waypoints.Length; i++)
        {
            Gizmos.color = Color.red;
            Gizmos.DrawSphere(waypoints[i], .25f);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (enemyState == EnemyState.Idle)
        {
            navMeshAgent.SetDestination(waypoints[waypoint]);
            navMeshAgent.isStopped = false;
            enemyState = EnemyState.Moving;
            
        }
        if (enemyState == EnemyState.Moving)
        {
            if (navMeshAgent.remainingDistance < .1f)
            {
                enemyState = EnemyState.Idle;
                waypoint++;
                if (waypoint == waypoints.Length)
                {
                    waypoint = 0;
                }
            }

        }
        if (enemyState == EnemyState.Attacking)
        {
            if (PlayerDummy.Instance != null)
            {
                Vector3 targetDir = PlayerDummy.Instance.transform.position - transform.position;

                // The step size is equal to speed times frame time.
                float step = 5 * Time.deltaTime;

                Vector3 newDir = Vector3.RotateTowards(transform.forward, targetDir, step, 0.0f);

                // Move our position a step closer to the target.
                transform.rotation = Quaternion.LookRotation(newDir);
            }

        }
        CheckPlayerDetection();

    }

    private void CheckPlayerDetection()
    {
        if (PlayerDummy.Instance != null)
        {
            GameObject playerGO = PlayerDummy.Instance.gameObject;
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            Vector3 toOther = playerGO.transform.position - transform.position;

            if (Vector3.Dot(forward, toOther) >= fieldOfView)
            {
                //Debug.Log("test");
                Ray ray = new Ray(transform.position, toOther);
                RaycastHit hit;
                Debug.DrawRay(ray.origin, ray.direction * sightDistance);
                if (Physics.Raycast(ray, out hit, sightDistance, visionLayerMask))
                {
                    if (hit.collider.gameObject == playerGO)
                    {
                        enemyState = EnemyState.Attacking;
                        navMeshAgent.isStopped = true;
                        return;
                    }
                }
            }
        }
        if (enemyState == EnemyState.Attacking)
        {
            Debug.Log("test");
            enemyState = EnemyState.Idle;
        }
    }


}

