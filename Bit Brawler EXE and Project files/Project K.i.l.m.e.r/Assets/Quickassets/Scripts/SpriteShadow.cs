using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpriteShadow : MonoBehaviour {

	public Vector2 offset = new Vector2(-3,-3);

    public Vector2 shadowScale = new Vector2(1,1);

    public bool parentRotation = true;
    public Vector3 rotation = new Vector3(0,0,0);

    private SpriteRenderer sprCaster;
    private SpriteRenderer sprShadow;

    private Transform tranCaster;
    private Transform tranShadow;

    public Material shadow;
    public Color shadowColor;

    void Start()
    {
        tranShadow = new GameObject().transform;

        tranCaster = transform;

        tranShadow.parent = tranCaster;
        tranShadow.gameObject.name = "shadow";
        if(parentRotation)tranShadow.localRotation = Quaternion.identity;
        else tranShadow.localRotation = Quaternion.Euler(rotation);
        tranShadow.localScale = shadowScale;
        tranShadow.gameObject.layer = tranCaster.gameObject.layer;

        sprCaster = GetComponent<SpriteRenderer>();
        sprShadow = tranShadow.gameObject.AddComponent<SpriteRenderer>();

        sprShadow.material = shadow;
        sprShadow.color = shadowColor;
        sprShadow.sortingLayerName = sprCaster.sortingLayerName;
        sprShadow.sortingOrder = sprCaster.sortingOrder - 1;
    }

    private void LateUpdate()
    {
        if(!parentRotation)
        {
            tranShadow.localRotation = Quaternion.Euler(rotation);
        }

        sprShadow.enabled = sprCaster.enabled;

        tranShadow.position = new Vector2(tranCaster.position.x + offset.x, tranCaster.position.y + offset.y);

        sprShadow.sprite = sprCaster.sprite;
    }
}
