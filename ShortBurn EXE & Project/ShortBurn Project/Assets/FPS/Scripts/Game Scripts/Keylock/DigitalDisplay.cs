using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class DigitalDisplay : MonoBehaviour
{
    //makes an array of sprite digits for the numbers 0-9 + a blank
    [Header("Digits")]
    [SerializeField]
    public Sprite[] digits;
    //makes a image array to store the display 

    [Header("Characters")]
    [SerializeField]
    public Image[] characters;

    //active code
    [Header("Code")]
    [SerializeField]
    public string Code;

    //shows the code sequence
    [Header("Entered Code")]
    [SerializeField]
    public string codeSequence;

    [Header("Scripts")]
    public SoundHandler soundHandler;
    public InteractableKeyLock keylock;

    [Header("Trigger")]
    public GameObject Trigger;

    [Header("UI")]
    public GameObject Crosshair;


    void Start()
    {
        //reset code sequence
        codeSequence = " " ;

        //shows display characters as blanks (blank sprite is index = 10)
        for (int i = 0; i <= characters.Length -1; i++)
        {
            characters[i].sprite = digits[10];
        }
        //subscriped script to buttenPressed event in de push the button script
        PushTheButton.ButtonPressed += AddDigitToCodeSequence;
        ResetDisplay();

        keylock.GetComponent<InteractableKeyLock>();
        soundHandler.GetComponent<SoundHandler>();
    }

    //(string digitEnterd) is a paramater. this is set by ButtonPressed(buttonValue). digitEnterd takes the buttonValue's variable
    private void AddDigitToCodeSequence(string digitEnterd) 
    {
        //i havent enterd 4 digits yet
        if (codeSequence.Length < 4)
        {
            //then i use switch opperator to manage this enterd value 
            switch(digitEnterd)
            {
                //if you press any button 0-9 the button is added to the codeSequence and DisplayCodeSequence is invoked wich takes 0 value as a parameter
                case "Zero":
                    codeSequence += "0";
                    DisplayCodeSequence(0);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "One":
                    codeSequence += "1";
                    DisplayCodeSequence(1);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Two":
                    codeSequence += "2";
                    DisplayCodeSequence(2);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Three":
                    codeSequence += "3";
                    DisplayCodeSequence(3);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Four":
                    codeSequence += "4";
                    DisplayCodeSequence(4);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Five":
                    codeSequence += "5";
                    DisplayCodeSequence(5);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Six":
                    codeSequence += "6";
                    DisplayCodeSequence(6);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Seven":
                    codeSequence += "7";
                    DisplayCodeSequence(7);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Eight":
                    codeSequence += "8";
                    DisplayCodeSequence(8);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
                case "Nine":
                    codeSequence += "9";
                    DisplayCodeSequence(9);
                    soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                    break;
            }
        }
        switch (digitEnterd)
        {
            //if star is press that invokes the resetdisplay methode 
            case "Star":
                ResetDisplay();
                soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                break;
            //if hashtag is pressed it checks if atleast one nummber is pressed and if so it CheckResults
            case "Hashtag":
                if(codeSequence.Length > 0)
                {
                    CheckResults();
                }
                soundHandler.SHAudioSource.PlayOneShot(soundHandler.Buttonpress);
                break;
        }
    }
    //takes a number enterd as a parameter named digitJustEnterd
    private void DisplayCodeSequence(int digitJustEnterd)
    {
        //checks codeSequence.Length 
        switch (codeSequence.Length)
        {
            //if its one the last character gets a display gets a digit sprite from digit array according to digitJustEnterd value - everytime u enter a number it will move from right to left like a calculator 
            case 1:
                characters[0].sprite = digits[10];
                characters[1].sprite = digits[10];
                characters[2].sprite = digits[10];
                characters[3].sprite = digits[digitJustEnterd];
                break;
            case 2:
                characters[0].sprite = digits[10];
                characters[1].sprite = digits[10];
                characters[2].sprite = characters[3].sprite;
                characters[3].sprite = digits[digitJustEnterd];
                break;
            case 3:
                characters[0].sprite = digits[10];
                characters[1].sprite = characters[2].sprite;
                characters[2].sprite = characters[3].sprite;
                characters[3].sprite = digits[digitJustEnterd];
                break;
            case 4:
                characters[0].sprite = characters[1].sprite;
                characters[1].sprite = characters[2].sprite;
                characters[2].sprite = characters[3].sprite;
                characters[3].sprite = digits[digitJustEnterd];
                break;
        }
    }

    public void CheckResults()
    {
        if (codeSequence == Code)
        {
           soundHandler.SHAudioSource.PlayOneShot(soundHandler.CorrectCode);
           soundHandler.SHAudioSource.PlayOneShot(soundHandler.DoorOpend);

            Destroy(Trigger);
            keylock.OpenDoor1.SetActive(false);
            keylock.OpenDoor2.SetActive(false);
            keylock.OpenKeylock.SetActive(false);
            Crosshair.SetActive(true);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            Time.timeScale = 1f;
            Debug.Log("Correct!");
           
        }
        else
        {
            Debug.Log("Wrong!");
            ResetDisplay();
           soundHandler.SHAudioSource.PlayOneShot(soundHandler.FailedCode);
        }
    }
   
    private void ResetDisplay()
    {
        for (int i = 0; i <= characters.Length -1; i++)
        {
            characters[i].sprite = digits[10];
        }

        codeSequence = "";
    }
    private void OnDestroy()
    {
        PushTheButton.ButtonPressed -= AddDigitToCodeSequence;
    }
}
