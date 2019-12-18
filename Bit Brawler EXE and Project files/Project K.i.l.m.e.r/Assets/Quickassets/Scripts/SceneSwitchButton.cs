using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(Button))]
public class SceneSwitchButton : MonoBehaviour
{
    public string action = "";
    private int sceneBuildIndex = -1;

    private Button button;

    private void Start()
    {
        button = GetComponent<Button>();

        button.onClick.AddListener(LoadScene);

        bool isInt = int.TryParse(action, out sceneBuildIndex);

        if (isInt)
        {
            action = "isInt";
        }
    }

    private void LoadScene()
    {
        if (action == "isInt")
        {
            SceneManager.LoadScene(sceneBuildIndex);
        }
        if (action == "doExit")
        {
            #if UNITY_EDITOR
                UnityEditor.EditorApplication.isPlaying = false;
            #elif UNITY_WEBPLAYER
                Application.OpenURL(webplayerQuitURL);
            #else
                Application.Quit();
            #endif
        }
        else if (action == "doRestart")
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }
        else if (action == "doCloseCanvas")
        {
            transform.parent.GetComponent<Canvas>().enabled = false;
        }
        else
        {
            SceneManager.LoadScene(sceneBuildIndex);
        }
    }
}
