using UnityEngine;

public class EnemyDamageable : MonoBehaviour
{
    [Tooltip("Multiplier to apply to the received damage")]
    public float damageMultiplier = 1f;

    public EnemyHealth enemyhealth { get; private set; }

    void Awake()
    {
        // find the health component either at the same level, or higher in the hierarchy
        enemyhealth = GetComponent<EnemyHealth>();
        if (!enemyhealth)
        {
            enemyhealth = GetComponentInParent<EnemyHealth>();
        }
    }

    public void InflictDamage(float damage, bool isExplosionDamage, GameObject damageSource)
    {

        if(enemyhealth)
        {
            var totalDamage = damage;

            // skip the crit multiplier if it's from an explosion
            if (!isExplosionDamage)
            {
                totalDamage *= damageMultiplier;
            }
            // apply the damages
            enemyhealth.TakeDamage(totalDamage, damageSource);
        }
    }
}
