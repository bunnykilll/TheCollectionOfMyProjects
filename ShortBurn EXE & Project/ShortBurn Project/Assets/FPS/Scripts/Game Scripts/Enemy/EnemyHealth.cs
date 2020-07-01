using UnityEngine;
using UnityEngine.Events;

public class EnemyHealth : MonoBehaviour
{
    [Header("Health")]
    //set max healt for the amount of health you want the enemy to have
    public float maxHealth;
    //current health is the health the enemy currently holds 
    public float currentHealth;

    public UnityAction<float, GameObject> onDamaged;
    public UnityAction onDie;
    bool m_IsDead;

    private void Start()    
    {
        currentHealth = maxHealth;
    }

    public void TakeDamage(float damage, GameObject damageSource)
    {
        float healthBefore = currentHealth;
        currentHealth -= damage;
        currentHealth = Mathf.Clamp(currentHealth, 0f, maxHealth);

        // call OnDamage action
        float trueDamageAmount = healthBefore - currentHealth;
        if (trueDamageAmount > 0f && onDamaged != null)
        {
            onDamaged.Invoke(trueDamageAmount, damageSource);
        }

        HandleDeath();
    }

    public void Kill()
    {
        currentHealth = 0f;
       
        HandleDeath();
    }

    private void HandleDeath()
    {
        if (m_IsDead)
            return;
        // call OnDie action
        if (currentHealth <= 0f)
        {
            if (onDie != null)
            {
                m_IsDead = true;
                onDie.Invoke();
            }
        }
    }
}
