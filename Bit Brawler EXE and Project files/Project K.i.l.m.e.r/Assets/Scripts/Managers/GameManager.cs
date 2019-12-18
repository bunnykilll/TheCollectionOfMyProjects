using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    #region Singleton
    public static GameManager Instance;
    private void Awake()
    {
        if(Instance != null)
        {
            Destroy(this);
            return;
        }

        Instance = this;
    }
    #endregion

    public GameObject endscreen;
    public Text endscreenText;

    public List<GameObject> levels;

    void Start()
    {
        endscreen = GameObject.Find("End Screen");
        endscreenText = endscreen.transform.GetChild(0).GetComponent<Text>();
        endscreen.SetActive(false);

        GameObject p1 = Instantiate(GlobalGame.instance.player1, new Vector3(-4, -2, 0), Quaternion.identity);
        GameObject p2 = Instantiate(GlobalGame.instance.player2, new Vector3(4, -2, 0), Quaternion.identity);

        FighterController fc1 = p1.GetComponent<FighterController>();
        FighterController fc2 = p2.GetComponent<FighterController>();

        fc1.inputType = PlayerInputType.Player1;
        fc2.inputType = PlayerInputType.Player2;

        p1.transform.localScale = new Vector3(1,1,1);
        p2.transform.localScale = new Vector3(-1,1,1);

        GameObject.Find("Left Plr Text").GetComponent<Text>().text = fc1.fightername;
        GameObject.Find("Right Plr Text").GetComponent<Text>().text = fc2.fightername;

        levels[Random.Range(0,levels.Count)].SetActive(true);
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Tilde))
        {
            for (int i = 0; i < levels.Count; i++)
            {
                levels[i].SetActive(false);
            }

            levels[Random.Range(0, levels.Count)].SetActive(true);
        }
    }
}
