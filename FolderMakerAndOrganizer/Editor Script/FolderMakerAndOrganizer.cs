using System.IO;
using UnityEditor;
using UnityEngine;
public class FolderMakerAndOrganizer : EditorWindow
{
    public bool succeeded; 
    private int m_TabIndex;

    public bool scripts;

    bool ArtFolders = true;
    bool DevFolders = true;
    bool OtherFolders = true;
    bool DevFilesCleanUp = true;
    bool ArtFilesCleanUp = true;
    bool OthetFilesCleanUp = true;



    private string[] m_TabsOptions = new string[]
    {
        "Folder Structure",
        "Organize",
        "Refresh"
    };

    [MenuItem("Tools/Folder Maker And Organizer", false, 1)]
    public static void ShowWindow()
    {
        FolderMakerAndOrganizer FMAO = (FolderMakerAndOrganizer)GetWindow(typeof(FolderMakerAndOrganizer));

        FMAO.minSize = new Vector2(300, 300);
        FMAO.maxSize = new Vector2(500, 500);
        FMAO.position = new Rect(0, 0, 150, 60);

    }
    private void OnGUI()
    {
        GUILayout.Label("Folder Maker And Organizer", EditorStyles.boldLabel);

        m_TabIndex = GUILayout.Toolbar(m_TabIndex, m_TabsOptions);
        switch (m_TabIndex)
        {
            case 0:
                MapStructure();
                break;
            case 1:
                Organize();
                break;
            case 2:
                Refresh();
                break;
        }
    }
    private void MapStructure()
    {
        OtherFolders = EditorGUILayout.Toggle("Other Folders", OtherFolders);
        if (OtherFolders)
        {
            if (GUILayout.Button("All Other Folders"))
            {
                AssetDatabase.CreateFolder("Assets", "Prefabs");
                AssetDatabase.CreateFolder("Assets", "Resources");
                AssetDatabase.CreateFolder("Assets", "StreamingAssets");
                AssetDatabase.CreateFolder("Assets", "Sounds");
                AssetDatabase.CreateFolder("Assets/Sounds", "Music");
                AssetDatabase.CreateFolder("Assets/Sounds", "SFX");
                AssetDatabase.CreateFolder("Assets/Sounds", "UISounds");
            }

            if (GUILayout.Button("Prefabs"))
            {
                AssetDatabase.CreateFolder("Assets", "Prefabs");
            }
            if (GUILayout.Button("Resources"))
            {
                AssetDatabase.CreateFolder("Assets", "Resources");
            }
            if (GUILayout.Button("StreamingAssets"))
            {
                AssetDatabase.CreateFolder("Assets", "StreamingAssets");
            }
            if (GUILayout.Button("Sounds"))
            {
                AssetDatabase.CreateFolder("Assets", "Sounds");
                AssetDatabase.CreateFolder("Assets/Sounds", "Music");
                AssetDatabase.CreateFolder("Assets/Sounds", "SFX");
                AssetDatabase.CreateFolder("Assets/Sounds", "UISounds");
            }
        }

        DevFolders = EditorGUILayout.Toggle("Dev Folders", DevFolders);
        if (DevFolders)
        {
            if (GUILayout.Button("All Dev Folders"))
            {
                AssetDatabase.CreateFolder("Assets", "Scripts");
                AssetDatabase.CreateFolder("Assets", "ScriptableObjects");
                AssetDatabase.CreateFolder("Assets/ScriptableObjects", "SO Scripts");
                AssetDatabase.CreateFolder("Assets", "Plugins");
                AssetDatabase.CreateFolder("Assets", "JsonFiles");
            }
            if (GUILayout.Button("Scripts"))
            {
                AssetDatabase.CreateFolder("Assets", "Scripts");
            }
            if (GUILayout.Button("ScriptableObjects"))
            {
                AssetDatabase.CreateFolder("Assets", "ScriptableObjects");
                AssetDatabase.CreateFolder("Assets/ScriptableObjects", "SO Scripts");
            }
            if (GUILayout.Button("Plugins"))
            {
                AssetDatabase.CreateFolder("Assets", "Plugins");
            }
            if (GUILayout.Button("JsonFiles"))
            {
                AssetDatabase.CreateFolder("Assets", "JsonFiles");
            }
        }

        ArtFolders = EditorGUILayout.Toggle("Art Folders", ArtFolders);
        if (ArtFolders)
        {

            if (GUILayout.Button("All Art Folders"))
            {
                AssetDatabase.CreateFolder("Assets", "Art");
                AssetDatabase.CreateFolder("Assets/Art", "Models");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Sprites");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Blockout");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Textures");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Animations");
                AssetDatabase.CreateFolder("Assets/Art/Models/Animations", "Animators");
                AssetDatabase.CreateFolder("Assets/Art", "Materials");
                AssetDatabase.CreateFolder("Assets/Art", "Images");
            }
            if (GUILayout.Button("Art Folder"))
            {
                AssetDatabase.CreateFolder("Assets", "Art");
            }
            if (GUILayout.Button("Models & more"))
            {
                AssetDatabase.CreateFolder("Assets/Art", "Models");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Sprites");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Blockout");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Textures");
                AssetDatabase.CreateFolder("Assets/Art/Models", "Animations");
                AssetDatabase.CreateFolder("Assets/Art/Models/Animations", "Animators");
            }
            if (GUILayout.Button("Materials"))
            {
                AssetDatabase.CreateFolder("Assets/Art", "Materials");
            }
            if (GUILayout.Button("Images"))
            {
                AssetDatabase.CreateFolder("Assets/Art", "Images");
            }
        }
    }
    private void Organize()
    {
        DevFilesCleanUp = EditorGUILayout.Toggle("Dev Files Clean Up", DevFilesCleanUp);
        if (DevFilesCleanUp)
        {
            if(GUILayout.Button("Organize All Dev Files"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".cs") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Scripts/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted all dev files"));
                    }

                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".json") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/JsonFiles/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted All Dev Files"));
                    }
                }
            }
            if (GUILayout.Button("Cs"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".cs") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Scripts/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted CS Files"));
                    }
                }
            }
            if (GUILayout.Button("Json"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".json") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/JsonFiles/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted JSON Files"));
                    }
                }
            }
        }

        ArtFilesCleanUp = EditorGUILayout.Toggle("Art Files Clean Up", ArtFilesCleanUp);
        if (ArtFilesCleanUp)
        {
            if (GUILayout.Button("Organize All Art Files"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".obj") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".fbx") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".png") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Images/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));

                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".jpg") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Images/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".anim") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Animations/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".controller") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Animations/Animators/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".mat") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Materials/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".ttf") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Fonts" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Art files"));
                    }
                }
            }

                if (GUILayout.Button("Models"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".obj") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Obj Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".fbx") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Fbx Files"));
                    }
                }
            }
            if (GUILayout.Button("Images"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".png") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Images/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted PNG Files"));

                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".jpg") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Images/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted JPG Files"));
                    }
                }
            }
            if (GUILayout.Button("Animations/Controllers"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".anim") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Animations/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Animations"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".controller") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Animations/Animators/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Animators"));
                    }
                }
            }
            if (GUILayout.Button("Materials"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".mat") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Materials/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Materials"));
                    }
                }
            }
            if (GUILayout.Button("Fonts"))
            {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".ttf") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Fonts" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Fonts"));
                    }
                }
            }
        }
            OthetFilesCleanUp = EditorGUILayout.Toggle("Other Files Clean Up", OthetFilesCleanUp);
            if (OthetFilesCleanUp)
            {
                if(GUILayout.Button("Organize All Other Files"))
                {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".prefab") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Prefabs/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Other Files"));
                    }

                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".mp3") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Sounds/Music" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Other Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".wav") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Sounds/SFX" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Other Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".unity") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Scenes/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Other Files"));
                    }
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".targa") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Textures/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Other Files"));
                    }
                }
            }
                if (GUILayout.Button("Prefabs"))
                {
                    succeeded = false;
                    foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                    {
                        if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".prefab") && assetPahts.Contains("Editor/") == false)
                        {
                            string Naam = Path.GetFileName(assetPahts);
                            AssetDatabase.MoveAsset(assetPahts, "Assets/Prefabs/" + Naam);
                            Debug.Log(assetPahts);
                            succeeded = true;
                            this.ShowNotification(new GUIContent("Sorted Prefabs Files"));
                        }
                    }
                }
                if (GUILayout.Button("Sounds"))
                {
                    succeeded = false;
                    foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                    {
                        if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".mp3") && assetPahts.Contains("Editor/") == false)
                        {
                            string Naam = Path.GetFileName(assetPahts);
                            AssetDatabase.MoveAsset(assetPahts, "Assets/Sounds/Music" + Naam);
                            Debug.Log(assetPahts);
                            succeeded = true;
                            this.ShowNotification(new GUIContent("Sorted MP3 Files"));
                        }
                        if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".wav") && assetPahts.Contains("Editor/") == false)
                        {
                            string Naam = Path.GetFileName(assetPahts);
                            AssetDatabase.MoveAsset(assetPahts, "Assets/Sounds/SFX" + Naam);
                            Debug.Log(assetPahts);
                            succeeded = true;
                            this.ShowNotification(new GUIContent("Sorted WAV files"));
                        }
                    }
                }
                if (GUILayout.Button("Scenes"))
                {
                    succeeded = false;
                    foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                    {
                        if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".unity") && assetPahts.Contains("Editor/") == false)
                        {
                            string Naam = Path.GetFileName(assetPahts);
                            AssetDatabase.MoveAsset(assetPahts, "Assets/Scenes/" + Naam);
                            Debug.Log(assetPahts);
                            succeeded = true;
                            this.ShowNotification(new GUIContent("Sorted Scenes"));
                        }
                    }
                }
                if (GUILayout.Button("Textures"))
                {
                succeeded = false;
                foreach (string assetPahts in AssetDatabase.GetAllAssetPaths())
                {
                    if (assetPahts.StartsWith("Assets/") && assetPahts.EndsWith(".targa") && assetPahts.Contains("Editor/") == false)
                    {
                        string Naam = Path.GetFileName(assetPahts);
                        AssetDatabase.MoveAsset(assetPahts, "Assets/Art/Models/Textures/" + Naam);
                        Debug.Log(assetPahts);
                        succeeded = true;
                        this.ShowNotification(new GUIContent("Sorted Textures"));
                    }
                }
            }
        }
    }
    private void Refresh()
    {
        if (GUILayout.Button("Refresh"))
        {
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            this.ShowNotification(new GUIContent("Refreshed"));
        }
    }
    void OnInspectorUpdate()
    {
        Repaint();
    }
}
