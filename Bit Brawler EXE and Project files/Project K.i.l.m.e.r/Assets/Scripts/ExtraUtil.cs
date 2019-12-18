using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

namespace AaronQuickAssets.ExtraUtil
{
    class ExtraUtil
    {
        /*
        public static Vector2 CalcTopLeft2D(Collider2D body)
        {
            return CalcTopLeft2D(body.transform);
        }

        public static Vector2 CalcTopLeft2D(GameObject body)
        {
            return CalcTopLeft2D(body.transform);
        }

        public static Vector2 CalcTopLeft2D(Transform transform)
        {
            return new Vector2(transform.position.x - transform.lossyScale.x / 2.0f, transform.position.y + transform.lossyScale.y / 2.0f);
        }
        */

        #region PositionalCalculations
        public static Vector2 CalcBotCenter(Collider2D body)
        {
            return CalcBotCenter(body.transform);
        }

        public static Vector2 CalcBotCenter(GameObject body)
        {
            return CalcBotCenter(body.transform);
        }

        public static Vector2 CalcBotCenter(Transform transform)
        {
            return new Vector2(transform.position.x, transform.position.y - transform.lossyScale.y / 2.0f);
        }

        public static Vector2 CalcTopCenter(Collider2D body)
        {
            return CalcTopCenter(body.transform);
        }

        public static Vector2 CalcTopCenter(GameObject body)
        {
            return CalcTopCenter(body.transform);
        }

        public static Vector2 CalcTopCenter(Transform transform)
        {
            return new Vector2(transform.position.x, transform.position.y + transform.lossyScale.y / 2.0f);
        }
        #endregion
    }
}
