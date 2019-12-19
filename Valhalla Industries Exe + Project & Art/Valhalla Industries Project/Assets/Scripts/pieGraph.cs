using System; 
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI; 

public class pieGraph : MonoBehaviour
{
    //public float[] values;
    //public Color[] wedgeColors;
    //public Image wedgePrefab;

    //public float TimesFired;
    //public float TimesHit;

    //private float TimesMissed;

    //public float AccuracyPercentage;
    //public float accuracy;
    //public float InAccuracy;

    //public StatisticsEndGame statisticsendGame;

    //void Start()
    //{
        
    //}

    //public void Update()
    //{
    //    CalculatePieChart(); 
    //}

    //public void MakeGraph()
    //{
    //    Debug.Log(transform.parent.name + " " + values[0]);
    //    float zRotation = 0f;

    //    for (int i = 0; i < values.Length; i++)
    //    {
    //        Image newWedge = Instantiate(wedgePrefab) as Image;
    //        newWedge.transform.SetParent(transform, false);
    //        newWedge.color = wedgeColors[i];
    //        newWedge.fillAmount = values[i];
    //        newWedge.transform.rotation = Quaternion.Euler(new Vector3(0f, 0f, zRotation));
    //        zRotation -= newWedge.fillAmount * 360f; 
    //    }
    //}
    
    //public void CalculatePieChart()
    //{
    //    if (TimesFired > 0)
    //    {
    //        TimesMissed = TimesFired - TimesHit;
    //        InAccuracy = TimesMissed / TimesFired;
    //        AccuracyPercentage = TimesHit / TimesFired * 100f;
    //    }

    //    accuracy = AccuracyPercentage / 100f;
    //    values[0] = accuracy;
    //    values[1] = InAccuracy;
    //    statisticsendGame.Stats();

    //}

}
