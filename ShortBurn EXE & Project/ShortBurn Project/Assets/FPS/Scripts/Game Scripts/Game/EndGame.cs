using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndGame : MonoBehaviour
{
    public string sceneName = "";
    
    public void OnTriggerEnter(Collider other)
    {
        LoadTargetScene();
    }

    public void LoadTargetScene()
    {
        SceneManager.LoadScene(sceneName);
    }
}
