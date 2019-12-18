using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneBlock : MonoBehaviour
{
    public BlockType blockType;
}

public enum BlockType
{
    wall = 0,
    ground
}
