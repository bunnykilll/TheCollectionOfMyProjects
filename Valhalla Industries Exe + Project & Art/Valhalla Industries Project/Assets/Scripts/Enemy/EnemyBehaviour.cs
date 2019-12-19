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
    [SerializeField] private float idleSightDistance;
    [SerializeField] private float attackingSightDistance;
    [SerializeField] private float fieldOfView;
    [SerializeField] private LayerMask visionLayerMask;
    [Header("Navigation")]
    [SerializeField] private Vector3[] waypoints;

    [SerializeField] private GameObject bullet;

    private bool Attacks;


    private NavMeshAgent navMeshAgent;
    private EnemyState enemyState;
    private int waypoint;

    private float FireRate;

    private void Awake()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
    }

    public void Start()
    {


        StartCoroutine(Shooting());
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
            if (navMeshAgent.pathPending)
            {
                return;
            }
            enemyState = EnemyState.Moving;
            Attacks = false;

            if (CheckPlayerDetection(idleSightDistance))
            {
                Attacks = true;
                Shooting();
                enemyState = EnemyState.Attacking;
                navMeshAgent.isStopped = true;
                Debug.Log("Detected and Shot");
            }
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
            if (CheckPlayerDetection(idleSightDistance))
            {
                Attacks = true;
                Shooting();
                enemyState = EnemyState.Attacking;
                navMeshAgent.isStopped = true;
                Debug.Log("Detected and Shot");
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
            if (!CheckPlayerDetection(attackingSightDistance))
            {
                enemyState = EnemyState.Idle;
            }

        }
        

    }

    private bool CheckPlayerDetection(float sightDistance)
    {
        if (PlayerDummy.Instance != null)
        {
            GameObject playerGO = PlayerDummy.Instance.gameObject;
            Vector3 forward = transform.TransformDirection(Vector3.forward);
            Vector3 toOther = playerGO.transform.position - transform.position;

            if (Vector3.Dot(forward, toOther) >= fieldOfView)
            {

                Ray ray = new Ray(transform.position, toOther);
                RaycastHit hit;
                Debug.DrawRay(ray.origin, ray.direction * sightDistance);
                if (Physics.Raycast(ray, out hit, sightDistance, visionLayerMask))
                {
                    if (hit.collider.gameObject == playerGO)
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void Attack(PlayerHealth _player)
    { 
        if (_player.Shield.fillAmount <= 0)
        {
            _player.TakeDamage(0.5f);
        }
        else
        {
            _player.Shield.fillAmount -= 0.5f;
        }
    }

    IEnumerator Shooting()
    {
        while (true)
        {
            yield return new WaitUntil(() => Attacks);
            yield return new WaitForSeconds(0.7f);
            GameObject _bullet =  Instantiate(bullet, transform.position, transform.rotation);
            _bullet.GetComponent<EnemyBullet>().Owner = this;
        }
    }
}




