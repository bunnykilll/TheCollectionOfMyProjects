// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Justie3DA/MT_PC"
{
	Properties
	{
		_PC_BG_TEX("PC_BG_TEX", 2D) = "white" {}
		[HDR]_BG_Color("BG_Color", Color) = (1,1,1,1)
		_BG_Speed("BG_Speed", Vector) = (0,0,0,0)
		_Alpha_BG("Alpha_BG", Range( 0 , 1)) = 1
		[Toggle(_MISSINGCOMPONENTS_ON)] _Missingcomponents("Missing components", Float) = 1
		_TextureSample0("Texture Sample 0", 2D) = "white" {}
		[HDR]_Missingcomponents_Color("Missing components_Color", Color) = (1,1,1,1)
		_Triangles_above("Triangles_above", 2D) = "white" {}
		_Triangles_Under("Triangles_Under", 2D) = "white" {}
		[HDR]_TrianglesColor("Triangles Color", Color) = (1,1,1,0)
		_Triangles_Speed("Triangles_Speed", Vector) = (0,0,0,0)
		_Opening_Door("Opening_Door", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma shader_feature_local _MISSINGCOMPONENTS_ON
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float4 _BG_Color;
		uniform sampler2D _PC_BG_TEX;
		uniform float2 _BG_Speed;
		uniform float _Alpha_BG;
		uniform float4 _TrianglesColor;
		uniform sampler2D _Triangles_above;
		uniform float2 _Triangles_Speed;
		uniform sampler2D _Triangles_Under;
		uniform sampler2D _Opening_Door;
		uniform float4 _Opening_Door_ST;
		uniform float4 _Missingcomponents_Color;
		uniform sampler2D _TextureSample0;
		uniform float4 _TextureSample0_ST;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 panner6 = ( 1.0 * _Time.y * _BG_Speed + i.uv_texcoord);
			o.Albedo = ( ( _BG_Color * tex2D( _PC_BG_TEX, panner6 ) ) * _Alpha_BG ).rgb;
			float2 panner30 = ( 1.0 * _Time.y * _Triangles_Speed + i.uv_texcoord);
			float2 uv_Opening_Door = i.uv_texcoord * _Opening_Door_ST.xy + _Opening_Door_ST.zw;
			float2 uv_TextureSample0 = i.uv_texcoord * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
			#ifdef _MISSINGCOMPONENTS_ON
				float4 staticSwitch18 = ( _Missingcomponents_Color * tex2D( _TextureSample0, uv_TextureSample0 ) );
			#else
				float4 staticSwitch18 = ( float4(1,1,1,1) * tex2D( _Opening_Door, uv_Opening_Door ) );
			#endif
			o.Emission = ( ( _TrianglesColor * ( tex2D( _Triangles_above, panner30 ) + tex2D( _Triangles_Under, panner30 ) ) ) + staticSwitch18 ).rgb;
			o.Smoothness = 1.0;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18100
0;0;1920;1019;2044.435;1070.426;1.640656;True;False
Node;AmplifyShaderEditor.TextureCoordinatesNode;7;-1896.914,-377.7564;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;31;-1736.98,169.0493;Inherit;False;Property;_Triangles_Speed;Triangles_Speed;10;0;Create;True;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;9;-1220.817,-237.3859;Inherit;False;Property;_BG_Speed;BG_Speed;2;0;Create;True;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PannerNode;30;-1479.284,100.4234;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;32;-971.6978,639.3544;Inherit;True;Property;_Opening_Door;Opening_Door;11;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;34;-881.6667,409.8681;Inherit;False;Constant;_Opening_Door_Color;Opening_Door_Color;12;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;22;-148.6412,566.784;Inherit;False;Property;_Missingcomponents_Color;Missing components_Color;6;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;24;-1174.455,16.10757;Inherit;True;Property;_Triangles_above;Triangles_above;7;0;Create;True;0;0;False;0;False;-1;827f35152eb39874eb8fae46786c11da;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;25;-1189.375,243.2775;Inherit;True;Property;_Triangles_Under;Triangles_Under;8;0;Create;True;0;0;False;0;False;-1;9ad7d589c7ebc374d9070687f68303f0;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;6;-879.7111,-276.7639;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;19;-145.4669,743.7051;Inherit;True;Property;_TextureSample0;Texture Sample 0;5;0;Create;True;0;0;False;0;False;-1;e12e31d038e2fd542a3dc763b994d067;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;5;-657.8167,-541.3859;Inherit;False;Property;_BG_Color;BG_Color;1;1;[HDR];Create;True;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;20;292.3589,533.7842;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;33;-596.6667,543.8681;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;27;-543.7327,13.59119;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1;-687.5272,-304.6326;Inherit;True;Property;_PC_BG_TEX;PC_BG_TEX;0;0;Create;True;0;0;False;0;False;-1;92261b692df84f948beeca8e6c609778;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;29;-343.4579,-125.0605;Inherit;False;Property;_TrianglesColor;Triangles Color;9;1;[HDR];Create;True;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2;-211.8165,-398.3858;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;28;-190.8007,51.40564;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;16;113.2196,-588.2642;Inherit;False;Property;_Alpha_BG;Alpha_BG;3;0;Create;True;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;18;-84.4205,304.6263;Inherit;False;Property;_Missingcomponents;Missing components;4;0;Create;True;0;0;False;0;False;0;1;0;True;;Toggle;2;Key0;Key1;Create;True;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;11;711.3131,-166.385;Inherit;False;Constant;_Float0;Float 0;4;0;Create;True;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;215.2196,-491.6643;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;35;126.769,130.7087;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;390.9287,-287.9877;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;Justie3DA/MT_PC;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;30;0;7;0
WireConnection;30;2;31;0
WireConnection;24;1;30;0
WireConnection;25;1;30;0
WireConnection;6;0;7;0
WireConnection;6;2;9;0
WireConnection;20;0;22;0
WireConnection;20;1;19;0
WireConnection;33;0;34;0
WireConnection;33;1;32;0
WireConnection;27;0;24;0
WireConnection;27;1;25;0
WireConnection;1;1;6;0
WireConnection;2;0;5;0
WireConnection;2;1;1;0
WireConnection;28;0;29;0
WireConnection;28;1;27;0
WireConnection;18;1;33;0
WireConnection;18;0;20;0
WireConnection;15;0;2;0
WireConnection;15;1;16;0
WireConnection;35;0;28;0
WireConnection;35;1;18;0
WireConnection;0;0;15;0
WireConnection;0;2;35;0
WireConnection;0;4;11;0
ASEEND*/
//CHKSM=9E82E075914E73157E7803783EFCC596A343A53E