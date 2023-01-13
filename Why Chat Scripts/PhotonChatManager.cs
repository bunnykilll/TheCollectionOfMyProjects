using ExitGames.Client.Photon;
using Photon.Chat;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.Assertions.Must;
using UnityEngine.SocialPlatforms;
using UnityEngine.UI;

public class PhotonChatManager : MonoBehaviour, IChatClientListener
{
   
    [Header("Connection")]
    public bool isConnected;

    [Header("Username")]
    [SerializeField] public string username;

    [Header("GO")]
    [SerializeField] GameObject joinChatButton;
    [SerializeField] GameObject chatPanel;
    [SerializeField] InputField chatField;
    //[SerializeField] InputField UserField;
    [SerializeField] Text chatDisplay;


    ChatClient chatClient;
    string privateReceiver = "";
    string currentChat;

    void Start()
    {
        

    }

    void Update()
    {
        if (isConnected)
        {
            chatClient.Service();
        }

        if (chatField.text != "" && Input.GetKey(KeyCode.Return))
        {
            SubmitPublicChatOnClick();
            SubmitPrivateChatOnClick();
        }
    }

    public void SubmitPublicChatOnClick()
    {
        if(privateReceiver == "")
        {
            chatClient.PublishMessage("RegionChannel", currentChat, false);
            chatField.text = "";
            currentChat = ""; 
        }
    }

    public void ReceiverOnValueChange(string valueIn)
    {
        privateReceiver = valueIn;
    }
    public void SubmitPrivateChatOnClick()
    {
        if (privateReceiver != "")
        {
            chatClient.SendPrivateMessage(privateReceiver, currentChat);
            chatField.text = "";
            currentChat = "";
        }
    }

    public void UsernameOnValueChange(string valueIn)
    {
        username = valueIn;
    }

    public void TypeChatOnValueChange(string valueIn)
    {
        currentChat = valueIn;
    }

    public void ChatConnectOnClick()
    {
        isConnected = true;
        chatClient = new ChatClient(this);
        chatClient.Connect(PhotonNetwork.PhotonServerSettings.AppSettings.AppIdChat, PhotonNetwork.AppVersion, new Photon.Chat.AuthenticationValues(username));
        print("Connecting");
    }

    public void DebugReturn(DebugLevel level, string message)
    {
        //throw new System.NotImplementedException();
    }

    public void OnChatStateChange(ChatState state)
    {
        if (state == ChatState.Uninitialized)
        {
            isConnected = false;
            joinChatButton.SetActive(true);
            chatPanel.SetActive(false);
        }
    }

    public void OnConnected()
    {
        Debug.Log("Connected");
        isConnected = true;
        joinChatButton.SetActive(false);
        chatClient.Subscribe(new string[] {"RegionChannel"});

        if (isConnected == true)
        {
            chatClient.PublishMessage("RegionChannel", " Joined chat room");
        }
    }

    public void OnDisconnected()
    {
        isConnected = false;
        joinChatButton.SetActive(true);
        chatPanel.SetActive(false);
    }

    public void OnGetMessages(string channelName, string[] senders, object[] messages)
    {
        string msg = "";
        for (int i = 0; i < senders.Length; i++)
        {
            msg = string.Format("{0}: {1}", senders[i], messages[i]);

            chatDisplay.text += "\n " + msg;

            Debug.Log(msg);
        }

        
    }

    public void OnPrivateMessage(string sender, object message, string channelName)
    {
        string msg = "";
        msg = string.Format("(Private) {0}: {1}", sender, message);
        chatDisplay.text += "\n " + msg;
        Debug.Log(msg);
    }

    public void OnStatusUpdate(string user, int status, bool gotMessage, object message)
    {
        throw new System.NotImplementedException();
    }

    public void OnSubscribed(string[] channels, bool[] results)
    {
        chatPanel.SetActive(true);


        
    }

    public void OnUnsubscribed(string[] channels)
    {
        throw new System.NotImplementedException();
    }

    public void OnUserSubscribed(string channel, string user)
    {
        throw new System.NotImplementedException();
    }

    public void OnUserUnsubscribed(string channel, string user)
    {
        throw new System.NotImplementedException();
    }

   
}
