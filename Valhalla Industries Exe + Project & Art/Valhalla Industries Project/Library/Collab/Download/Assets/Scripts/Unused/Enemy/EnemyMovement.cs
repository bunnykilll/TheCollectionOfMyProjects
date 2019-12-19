using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyMovement : MonoBehaviour
{
    
    NavMeshAgent nav;
    public float range;
    public Transform player;
    public float speed;
    private Player playerX;

    void Start()
    {
        playerX = FindObjectOfType<Player>();
        nav = GetComponent<NavMeshAgent>();
    }

    void Update()
    {

        nav.SetDestination(player.transform.position * speed * Time.deltaTime);
        
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Contact met Player");
            
        }
    }

      
}
