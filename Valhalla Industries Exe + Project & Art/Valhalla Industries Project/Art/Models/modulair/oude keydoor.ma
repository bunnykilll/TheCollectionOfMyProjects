//Maya ASCII 2018 scene
//Name: KEY DOOR.ma
//Last modified: Wed, May 22, 2019 12:20:03 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "41B24DC2-48EA-2CF5-6A9E-42B79CBD874A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6078675083125979 6.4159997277258354 -9.0849019368465562 ;
	setAttr ".r" -type "double3" -24.938352717873098 -1953.7999999983967 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CB17B5D8-4CFA-6CFA-632C-9D95D0CA5DE8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.667132836335831;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1DC5C100-4731-4CB9-168A-E3AEE0047F3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "66DF7A1A-42E2-076B-08C2-7EA1DEFA0EE7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A8DFD465-46BA-6977-E3D9-C3B4DCE0C8F0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E68C03FC-4DC5-0619-6F01-87A26FB1478F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F1513019-40CC-0797-391D-A39251B27511";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2350A403-4E90-F659-82E5-C4AC17CFDC28";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "9B1F6D35-4509-F34A-03EA-749F5386EFB0";
	setAttr ".t" -type "double3" 0 1.2398076057434082 0 ;
	setAttr ".s" -type "double3" 2.5 2.5 0.4 ;
createNode transform -n "transform2" -p "pCube1";
	rename -uid "95CF3879-4626-64D5-7AA1-BFB1584E80ED";
	setAttr ".v" no;
createNode transform -n "pCube2";
	rename -uid "7E1D48F4-49EB-48CF-5843-AFB6001EAF82";
	setAttr ".t" -type "double3" 0 0.98976236581802368 0 ;
	setAttr ".s" -type "double3" 1.3113824157637184 2 1 ;
createNode transform -n "transform1" -p "pCube2";
	rename -uid "391A764C-4B34-4CD8-CF3A-949BEAF28692";
	setAttr ".v" no;
createNode transform -n "group";
	rename -uid "476EA316-47C1-465B-C54F-239CFAFDDD95";
	setAttr ".t" -type "double3" 2.6969797611236572 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.2808634222177353 ;
	setAttr ".rp" -type "double3" 0 0.98976234777093008 0 ;
	setAttr ".sp" -type "double3" 0 0.98976234777093008 0 ;
createNode transform -n "pCube5";
	rename -uid "E6B3EB42-4BB8-D2DC-3C04-D2901301AF47";
	setAttr ".t" -type "double3" 2.6547918319702148 0.99778461456298828 0.67806434631347656 ;
	setAttr ".s" -type "double3" 1.3107460634630077 2.0153708461440725 0.22661551588569515 ;
createNode transform -n "transform4" -p "pCube5";
	rename -uid "0FE2F0E2-4186-F676-0F9B-38B1ABC72F0E";
	setAttr ".v" no;
createNode transform -n "pCylinder1";
	rename -uid "2279B642-4AC9-7A28-63BC-4893241B1976";
	setAttr ".t" -type "double3" 2.7088522911071777 0.98248547315597534 0.67713695764541626 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.11258077906535069 0.12204844292324835 0.11258077906535069 ;
createNode transform -n "transform3" -p "pCylinder1";
	rename -uid "0F29E8E8-4AC1-310C-B54F-C3B5E6B554CB";
	setAttr ".v" no;
createNode transform -n "pCube6";
	rename -uid "4D410E1E-46C7-05AB-E17E-6FBCC0F18C22";
createNode transform -n "transform6" -p "pCube6";
	rename -uid "15635B37-4B88-EF18-4166-9B9FE3D3AF3D";
	setAttr ".v" no;
createNode transform -n "pCylinder2";
	rename -uid "E71F7124-409A-2AF4-E22F-A98BA37C6767";
	setAttr ".t" -type "double3" 3.2448108196258545 0.98248547315597534 0.67713695764541626 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.11258077906535069 0.11637021966272713 0.11258077906535069 ;
createNode transform -n "transform5" -p "pCylinder2";
	rename -uid "B76243B5-46CD-02D5-2939-FBA6F2C7C98A";
	setAttr ".v" no;
createNode transform -n "pCylinder3";
	rename -uid "78DB23E9-48BE-F1C7-4850-66B62D7AF2FA";
	setAttr ".t" -type "double3" 3.2448108196258545 0.98248547315597534 0.67713695764541626 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.11258077906535069 0.10266060716813079 0.11258077906535069 ;
createNode transform -n "transform8" -p "pCylinder3";
	rename -uid "17183CEB-4E01-A6F1-954F-3CAA58114DEA";
	setAttr ".v" no;
createNode transform -n "pCube8";
	rename -uid "6D3EAC6F-4135-63CE-6D4D-47A364F68C77";
	setAttr ".rp" -type "double3" 3.5788782835006714 0.9901081919670105 0.67806437611579895 ;
	setAttr ".sp" -type "double3" 3.5788782835006714 0.9901081919670105 0.67806437611579895 ;
createNode transform -n "transform7" -p "pCube8";
	rename -uid "500800AA-41FB-6FA7-2FAE-5A879B4B3EA4";
	setAttr ".v" no;
createNode transform -n "pCube11";
	rename -uid "467FFACB-4CC6-C58E-5628-B88E898905FC";
	setAttr ".t" -type "double3" 1.75 1.2504745721817017 0 ;
	setAttr ".s" -type "double3" 1.5 2.5 0.4 ;
createNode transform -n "transform10" -p "pCube11";
	rename -uid "74BDD4E4-4794-C4C3-0802-F9B0FE8B7053";
	setAttr ".v" no;
createNode transform -n "pCube12";
	rename -uid "457FE315-4404-7F00-8F79-52B26AFB711C";
	setAttr ".t" -type "double3" -0.50907820463180542 2.5626320838928223 -0.1961786150932312 ;
	setAttr ".s" -type "double3" 0.46540848630581838 0.16209193055977753 0.091301535393437744 ;
createNode transform -n "transform9" -p "pCube12";
	rename -uid "D783063B-4DE1-023E-2C5B-FF9310DADD38";
	setAttr ".v" no;
createNode transform -n "pCube13";
	rename -uid "6298BAF9-41A5-8CEB-612E-DA99B0BB1327";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 0 -1.6937364283986511e-05 0 ;
	setAttr ".s" -type "double3" 0.75 1 1 ;
	setAttr ".rp" -type "double3" -0.4999997615814209 1.3871148228645325 -0.16635618358850479 ;
	setAttr ".sp" -type "double3" -0.4999997615814209 1.3871148228645325 -0.16635618358850479 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube13Shape" -p "pCube13";
	rename -uid "E2B1BBF5-4943-857A-3030-A3BDC8DBB8BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.77444166530437097 0.039179488153160857 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape9" -p "pCube13";
	rename -uid "3CC120AF-4FE2-68BC-836B-E09EAD585EA3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 174 ".uvst[0].uvsp[0:173]" -type "float2" 0.54305059 0.23877926
		 0.60672504 0.23877926 0.60672504 0.57357877 0.54305059 0.57357877 0.41271845 0.23877926
		 0.47639298 0.23877926 0.47639298 0.57357877 0.41271845 0.57357877 0.47639298 0.63674474
		 0.41271845 0.63674474 0.67189109 0.57307011 0.60821664 0.57307011 0.60821664 0.23877926
		 0.67189109 0.23877926 0.4778845 0.57307023 0.54155904 0.57307023 0.54155904 0.63623613
		 0.4778845 0.63623613 0.4778845 0.23877926 0.54155904 0.23877926 0.88336229 0.71633786
		 0.94703674 0.71633786 0.94703674 0.77603281 0.88336229 0.77603281 0.88336229 0.63580364
		 0.94703674 0.63580364 0.94703674 0.83572757 0.88336229 0.83572757 0.88336229 0.57071888
		 0.94703674 0.57071888 1 0.83572757 0.94703674 0.89542228 0.88336229 0.89542228 0.88336229
		 0.38439819 0.94703674 0.38439819 0.94703674 0.95511729 0.88336229 0.95511729 0.88336229
		 0.3193135 0.94703674 0.3193135 0.88336229 0.23877926 0.94703674 0.23877926 0.88336229
		 0.17908448 0.94703674 0.17908448 0.88336229 0.11938962 0.94703674 0.11938962 0.94703674
		 0.059694808 0.88336229 0.059694808 1 0.11938962 0.88336229 0 0.94703674 0 0.10861009
		 0.63580364 0.17228454 0.63580364 0.17228454 0.71633786 0.10861009 0.71633786 0.10861009
		 0.31931353 0.17228454 0.31931353 0.10861009 0.23877926 0.17228454 0.23877926 0.34621042
		 0.47755852 0.34621042 0.41786379 0.40988496 0.41786379 0.40988496 0.47755852 0.29324731
		 0.35816896 0.40988496 0.35816896 0.34621042 0.29847413 0.40988496 0.29847413 0.34621042
		 0.23877925 0.40988496 0.23877925 0.034311116 0 0.034311116 0.074086607 0.028962672
		 0.074086607 0.028962672 0 0.83991826 0.051113904 0.83991826 0.022402465 0.84526658
		 0.022402465 0.84526658 0.051113904 0.84526658 0 0.83991826 5.6445599e-05 0.83991826
		 0 0.83991826 0.074086547 0.83991826 0.07402873 0.84526658 0.074086547 0.2267395 0.23877925
		 0.29041404 0.23877925 0.29041404 0.29847413 0.2267395 0.29847413 0.29041404 0.35816896
		 0.17377621 0.35816896 0.29041404 0.41786379 0.2267395 0.41786379 0.29041404 0.47755852
		 0.2267395 0.47755852 0.77648067 0.71633786 0.83964664 0.71633786 0.83964664 0.77603263
		 0.77648067 0.77603263 0.77648067 0.63580364 0.83964664 0.63580364 0.83964664 0.83572757
		 0.77648067 0.83572757 0.44218969 0.77603263 0.44218969 0.71633786 0.77648067 0.3193135
		 0.83964664 0.3193135 0.83964664 0.89542228 0.77648067 0.89542228 0.44218969 0.83572757
		 0.77648067 0.23877926 0.83964664 0.23877926 0.88314915 0.38439813 0.88314915 0.57071888
		 0.83964664 0.95511711 0.77648067 0.95511711 0.44218969 0.89542228 0.77648067 0.17908448
		 0.83964664 0.17908448 0.44218969 0.95511711 0.44168115 0.23877926 0.44168115 0.17908448
		 0.77648067 0.11938962 0.83964664 0.11938962 0.44168115 0.11938962 0.77648067 0.059694808
		 0.83964664 0.059694808 0.44168115 0.059694808 0.77648067 0 0.83964664 0 0.44168115
		 0 0.04350251 0.63580352 0.10666835 0.63580352 0.10666835 0.71633792 0.04350251 0.71633792
		 0.04350251 0.31931353 0.10666835 0.31931353 0.04350251 0.51598912 0.043567538 0.516047
		 0.043567538 0.44196042 0.04350251 0.44201696 0.10666835 0.77603263 0.04350251 0.77603263
		 0.04350251 0.23877926 0.10666835 0.23877926 0.017764688 0.46436289 0.017764688 0.49307445
		 0 0.57071888 0 0.3843981 0.44095951 0.71633792 0.44095951 0.77603263 0.10666835 0.83572763
		 0.081527114 0.83572763 0.04350251 0.17908448 0.10666835 0.17908448 0.44095951 0.83572763
		 0.10666835 0.89542234 0.04350251 0.89542234 0.081527114 0.11938962 0.10666835 0.11938962
		 0.44146812 0.17908448 0.44146812 0.23877926 0.44095951 0.89542234 0.10666835 0.95511717
		 0.04350251 0.95511717 0.04350251 0.059694767 0.10666835 0.059694767 0.44146812 0.11938962
		 0.44095951 0.95511717 0.04350251 0 0.10666835 0 0.44146812 0.059694767 0.44146812
		 0 0.025802791 0.074086607 0 0.051114082 0 0.022402585 0.025802791 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 84 ".vt[0:83]"  -2 2.50047469 0.2 -2 2.50047469 -0.2 -2.375 2.50047469 -0.2
		 -2.375 2.50047469 0.2 -2 2.10366917 0.2 -2.375 2.10366917 0.2 -1.4940877 2.50047469 -0.20000003
		 -1.4940877 2.10366917 -0.2 -2 2.10366917 -0.2 -1.4940877 2.10366917 0.2 -1.4940877 2.50047469 0.20000003
		 1.000000476837 0.00047457218 -0.2 1.37500048 0.00047457218 -0.2 1.37500048 0.00047457218 0.2
		 1.000000476837 0.00047457218 0.2 1.75000048 0.00047457218 -0.5327124 1.75000048 0.00047457218 0.2
		 0.49408814 2.10366917 -0.2 0.49408814 2.10366917 0.2 -1.085228205 2.77375507 0.20000003
		 -1.085228205 2.77375507 -0.20000003 -0.27637398 2.50006652 -0.20000003 -0.74178243 2.50006652 -0.20000003
		 -0.74178243 2.50006652 -0.16640131 -0.27637398 2.50006652 -0.16640131 2.12500048 0.00047457218 -0.2
		 2.12500048 0.00047457218 0.2 -0.59746969 2.66215825 -0.16640131 -0.41710553 2.66215825 -0.16640131
		 -0.59746969 2.66215825 -0.20000003 -0.41710553 2.66215825 -0.20000003 0.49408814 2.50047469 0.20000003
		 1.000000476837 2.10366917 -0.2 1.37500048 2.10366917 -0.2 1.000000476837 2.10366917 0.2
		 1.37500048 2.50047469 -0.2 1.75000048 2.50047469 -0.20000009 1.75000048 2.26160598 -0.5327124
		 2.12500048 2.50047469 -0.2 1.75000048 2.10366917 -0.5327124 0.085229516 2.77375507 0.20000003
		 0.085229516 2.77375507 -0.20000003 2.50000048 0.00047457218 -0.2 2.50000048 0.00047457218 0.2
		 1.37500048 2.10366917 0.2 0.49408814 2.50047469 -0.20000003 1.000000476837 2.50047469 -0.2
		 2.12500048 2.10366917 -0.2 -0.74141902 2.50047469 -0.20000003 1.75000048 2.10366917 0.2
		 1.000000476837 2.50047469 0.2 2.50000048 2.10366917 -0.2 2.12500048 2.10366917 0.2
		 -0.27672836 2.50047469 -0.20000003 2.50000048 2.10366917 0.2 1.37500048 2.50047469 0.2
		 1.75000048 2.50047469 0.2 2.50000048 2.50047469 -0.2 2.12500048 2.50047469 0.2 2.50000048 2.50047469 0.2
		 -2.75 2.50047469 0.2 -2.75 2.10366917 0.2 -2.75 2.50047469 -0.20000017 -2.375 2.10366917 -0.2
		 -2.75 2.26160598 -0.5327124 -3.125 2.50047469 -0.2 -3.125 2.50047469 0.2 -3.125 2.10366917 0.2
		 -2.75 2.10366917 -0.5327124 -3.5 2.50047469 0.2 -3.5 2.10366917 0.2 -3.5 2.50047469 -0.2
		 -2.375 0.0036692619 0.2 -2 0.0036692619 0.2 -2 0.0036692619 -0.2 -3.125 2.10366917 -0.2
		 -3.5 2.10366917 -0.2 -2.75 0.0036692619 0.2 -2.375 0.0036692619 -0.2 -3.125 0.0036692619 0.2
		 -2.75 0.0036692619 -0.5327124 -3.5 0.0036692619 0.2 -3.125 0.0036692619 -0.2 -3.5 0.0036692619 -0.2;
	setAttr -s 161 ".ed[0:160]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 3 5 0 5 4 0
		 6 7 0 7 8 0 8 1 0 1 6 0 7 9 0 9 4 0 4 8 0 10 6 0 0 10 0 9 10 0 11 12 0 12 13 0 13 14 0
		 14 11 0 12 15 0 15 16 0 16 13 0 17 18 0 18 9 0 7 17 0 10 19 0 19 20 0 20 6 0 21 22 0
		 22 23 0 23 24 0 24 21 0 15 25 0 25 26 0 26 16 0 23 27 0 27 28 0 28 24 0 29 30 0 30 28 0
		 27 29 0 18 31 0 31 10 0 32 33 0 33 12 0 11 32 0 14 34 0 34 32 0 35 36 0 36 37 0 37 35 0
		 36 38 0 38 37 0 33 39 0 39 15 0 40 41 0 41 20 0 19 40 0 25 42 0 42 43 0 43 26 0 31 40 0
		 13 44 0 44 34 0 31 45 0 45 41 0 46 32 0 32 17 0 17 45 0 45 46 0 34 18 0 39 47 0 47 25 0
		 22 48 0 48 29 0 16 49 0 49 44 0 50 46 0 31 50 0 34 50 0 47 51 0 51 42 0 26 52 0 52 49 0
		 30 53 0 53 21 0 46 35 0 35 33 0 37 39 0 51 54 0 54 43 0 54 52 0 50 55 0 55 35 0 44 55 0
		 38 47 0 55 56 0 56 36 0 49 56 0 38 57 0 57 51 0 56 58 0 58 38 0 52 58 0 57 59 0 59 54 0
		 58 59 0 6 48 0 53 45 0 3 60 0 60 61 0 61 5 0 2 62 0 62 60 0 8 63 0 63 2 0 2 64 0
		 64 62 0 65 62 0 64 65 0 60 66 0 66 67 0 67 61 0 65 66 0 63 68 0 68 64 0 66 69 0 69 70 0
		 70 67 0 65 71 0 71 69 0 5 72 0 72 73 0 73 4 0 73 74 0 74 8 0 68 75 0 75 65 0 76 70 0
		 71 76 0 75 76 0 61 77 0 77 72 0 74 78 0 78 63 0 67 79 0 79 77 0 78 80 0 80 68 0 70 81 0
		 81 79 0 72 78 0 80 82 0 82 75 0 76 83 0 83 81 0 82 83 0 77 80 0 79 82 0;
	setAttr -s 322 ".n";
	setAttr ".n[0:165]" -type "float3"  0 1 0 0 1 0 3.5360486e-08 0.99748665
		 -0.0708545 0 1 0 -6.5525492e-09 -6.6300303e-09 1 -2.1314726e-08 -2.1566764e-08 1
		 0 0 1 0 0 1 -6.5829018e-09 -5.9012613e-08 -1 -7.529807e-09 -6.7501176e-08 -1 -6.5525492e-09
		 -6.6300303e-09 -1 -2.1314726e-08 -2.1566764e-08 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 -7.5283619e-09 -6.7488209e-08 1 -6.4699996e-09 -5.8000488e-08
		 0.99999994 -2.1314726e-08 -2.1566764e-08 1 -6.5525492e-09 -6.6300303e-09 1 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -0.99999994 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 -0.55569571 0.83138573 0 -0.55569571 0.83138573 0 -0.55569571 0.83138573 0 -0.55569571
		 0.83138573 0 0 1 0 0 1 0 0 1 0 0 1 0 0 -0.99999994 0 0 -1 0 0 -1 0 0 -1 0 0 0 -1
		 0 0 -1 0 0 -1 0 0 -0.99999994 0 -1 0 0 -1 0 0 -1 0 0 -1 0 7.5283619e-09 -6.7488209e-08
		 1 6.4699983e-09 -5.8000477e-08 1 -6.4699996e-09 -5.8000488e-08 0.99999994 -7.5283619e-09
		 -6.7488209e-08 1 6.5456529e-09 -6.6230532e-09 -1 -0.39716488 0 -0.91774726 -0.40550646
		 0 -0.91409224 0 0 -0.99999994 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -2.3573666e-08 0.99748671
		 -0.070854515 -5.2100416e-15 0.97847956 -0.20634378 -7.8002011e-15 0.81232554 -0.58320427
		 -7.8002011e-15 0.81232554 -0.58320427 -5.2100416e-15 0.97847956 -0.20634378 2.357366e-08
		 0.99748665 -0.070854492 -0.40550646 0 -0.91409224 -0.39716488 0 -0.91774726 1.0626464e-08
		 0 -1 0 0 -0.99999994 0 1 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -6.4699996e-09
		 -5.8000488e-08 0.99999994 6.4699983e-09 -5.8000477e-08 1 0 0 1 0 0 1 0 0 0.99999994
		 0 0 0.99999994 0 0 1 6.5456529e-09 -6.6230532e-09 1 0.55569649 0.83138531 0 0.55569649
		 0.83138531 0 0.55569649 0.83138531 0 0.55569649 0.83138531 0 2.1314726e-08 -2.1566768e-08
		 -1 6.5456529e-09 -6.6230532e-09 -1 7.529807e-09 -6.7501176e-08 -1 6.5829004e-09 -5.9012599e-08
		 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 -0.99999994 1.0626464e-08 0 -1 0.39716488 0 -0.91774726
		 0.40550646 0 -0.91409224 0.74688005 -0.66495872 0 0.74688005 -0.66495872 0 0.74688005
		 -0.66495872 0 0.74688005 -0.66495872 0 0.74688005 -0.66495872 0 0 0 1 0 0 0.99999994
		 0 0 0.99999994 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 6.5456529e-09 -6.6230532e-09 1 2.1314726e-08
		 -2.1566768e-08 1 6.4699983e-09 -5.8000477e-08 1 7.5283619e-09 -6.7488209e-08 1 0.40550646
		 0 -0.91409224 0.39716488 0 -0.91774726 0 0 -1 0 0 -0.99999994 0 0 1 0 0 0.99999994
		 0 0 0.99999994 0 0 1 -0.75510746 -0.65560091 1.170236e-06 -0.75510746 -0.65560091
		 1.170236e-06 -0.75510746 -0.65560091 1.170236e-06 -0.75510746 -0.65560091 1.170236e-06
		 -0.75510746 -0.65560091 1.170236e-06 2.1314726e-08 -2.1566768e-08 -1 -0.28399697
		 0 -0.95882517 -0.39716488 0 -0.91774726 6.5456529e-09 -6.6230532e-09 -1 -0.28399697
		 0 -0.95882517 1.0662198e-07 0 -1 1.0626464e-08 0 -1 -0.39716488 0 -0.91774726 1 0
		 0 1 0 0 0.99999994 0 0 0.99999994 0 0 0 0 1 0 0 0.99999994 0 0 0.99999994 0 0 1 0
		 1 0 0 1 0 -2.3573666e-08 0.99748671 -0.070854515 0 1 0 6.5456529e-09 -6.6230532e-09
		 1 0 0 1 0 0 1 2.1314726e-08 -2.1566768e-08 1 1.0662198e-07 0 -1 0.283997 0 -0.95882517;
	setAttr ".n[166:321]" -type "float3"  0.39716488 0 -0.91774726 1.0626464e-08
		 0 -1 -2.3573666e-08 0.99748671 -0.070854515 0 1 0 0 1 0 -5.2100416e-15 0.97847956
		 -0.20634378 0 0 1 0 0 1 0 0 1 0 0 1 0.283997 0 -0.95882517 0 0 -1 0 0 -1 0.39716488
		 0 -0.91774726 2.357366e-08 0.99748665 -0.070854492 -5.2100416e-15 0.97847956 -0.20634378
		 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0.99999994 0 0 0.99999994 0 0 1 0 0 1 0 0 2.357366e-08
		 0.99748665 -0.070854492 0 1 0 0 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 1 6.5829004e-09 -5.9012599e-08
		 -1 7.529807e-09 -6.7501176e-08 -1 -7.529807e-09 -6.7501176e-08 -1 -6.5829018e-09
		 -5.9012613e-08 -1 0 -3.250657e-08 -1 0 -7.5123687e-08 -1 0 -7.5123694e-08 -1 0 -3.2878152e-08
		 -0.99999994 6.5829004e-09 -5.9012599e-08 -1 0 -3.2878152e-08 -0.99999994 0 0 -1 0
		 0 -1 0 -3.250657e-08 -1 -6.5829018e-09 -5.9012613e-08 -1 0 0 -1 0 0 -1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 1 0 3.5360486e-08 0.99748665 -0.0708545 5.2100416e-15 0.97847956
		 -0.20634383 0 1 0 -2.1314726e-08 -2.1566764e-08 -1 -6.5525492e-09 -6.6300303e-09
		 -1 0.39715388 0 -0.91775203 0.28399697 0 -0.95882517 5.2100416e-15 0.97847956 -0.20634383
		 3.5360486e-08 0.99748665 -0.0708545 0 0.81232572 -0.58320403 -3.5360475e-08 0.99748665
		 -0.070854478 5.2100416e-15 0.97847956 -0.20634383 0 0.81232572 -0.58320403 0 0 1
		 0 0 1 0 0 1 0 0 1 0 1 0 5.2100416e-15 0.97847956 -0.20634383 -3.5360475e-08 0.99748665
		 -0.070854478 0 1 0 0.28399697 0 -0.95882517 0.39715388 0 -0.91775203 0 0 -1 -7.1081317e-08
		 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 1 0 -3.5360475e-08 0.99748665 -0.070854478 0 1 0 0
		 1 0 -6.5525492e-09 -6.6300303e-09 1 0 0 1 0 0 1 0 0 1 0.99999994 0 0 0.99999994 0
		 0 0.99999994 0 0 0.99999994 0 0 -7.1081317e-08 0 -1 0 0 -1 -0.39715388 0 -0.91775203
		 -0.283997 0 -0.95882517 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -0.283997 0 -0.95882517 -0.39715388
		 0 -0.91775203 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0.39715388 0 -0.91775203 -6.5525492e-09
		 -6.6300303e-09 -1 0 0 -1 0.40550643 0 -0.91409218 0 0 1 0 0 1 0 0 1 0 0 1 0 0 -1
		 0.39715388 0 -0.91775203 0.40550643 0 -0.91409218 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.39715388 0 -0.91775203 0 0 -1 0 0 -1 -0.40550643 0
		 -0.91409218 -1 0 0 -1 0 0 -0.99999994 0 0 -0.99999994 0 0 0 0 -1 -0.39715388 0 -0.91775203
		 -0.40550643 0 -0.91409218 0 0 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0;
	setAttr -s 79 -ch 322 ".fc[0:78]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 20 21 22 23
		f 4 4 -4 5 6
		mu 0 4 92 93 94 95
		f 4 7 8 9 10
		mu 0 4 128 129 130 131
		f 4 11 12 13 -9
		mu 0 4 50 51 52 53
		f 4 14 -11 -1 15
		mu 0 4 24 25 21 20
		f 4 16 -16 -5 -13
		mu 0 4 96 97 93 92
		f 4 17 18 19 20
		mu 0 4 58 59 60 61
		f 4 -19 21 22 23
		mu 0 4 60 59 62 63
		f 4 24 25 -12 26
		mu 0 4 54 55 51 50
		f 4 -15 27 28 29
		mu 0 4 25 24 28 29
		f 4 30 31 32 33
		mu 0 4 68 69 70 71
		f 4 -23 34 35 36
		mu 0 4 63 62 64 65
		f 4 37 38 39 -33
		mu 0 4 170 171 172 173
		f 4 40 41 -39 42
		mu 0 4 72 73 74 75
		f 4 43 44 -17 -26
		mu 0 4 102 103 97 96
		f 4 45 46 -18 47
		mu 0 4 141 151 157 158
		f 4 -21 48 49 -48
		mu 0 4 0 1 2 3
		f 3 50 51 52
		mu 0 3 42 44 47
		f 3 -52 53 54
		mu 0 3 47 44 45
		f 4 -47 55 56 -22
		mu 0 4 157 151 156 164
		f 4 57 58 -29 59
		mu 0 4 33 34 29 28
		f 4 -36 60 61 62
		mu 0 4 65 64 66 67
		f 4 -45 63 -60 -28
		mu 0 4 97 103 109 110
		f 4 -20 64 65 -49
		mu 0 4 117 118 114 107
		f 4 66 67 -58 -64
		mu 0 4 37 38 34 33
		f 4 68 69 70 71
		mu 0 4 140 141 133 132
		f 4 -50 72 -25 -70
		mu 0 4 56 57 55 54
		f 4 -57 73 74 -35
		mu 0 4 164 156 163 168
		f 5 75 76 -43 -38 -32
		mu 0 5 79 80 72 75 81
		f 4 -65 -24 77 78
		mu 0 4 114 118 121 119
		f 4 79 -72 -67 80
		mu 0 4 39 40 38 37
		f 4 81 -81 -44 -73
		mu 0 4 107 108 103 102
		f 4 -75 82 83 -61
		mu 0 4 168 163 167 169
		f 4 -78 -37 84 85
		mu 0 4 119 121 124 122
		f 5 -40 -42 86 87 -34
		mu 0 5 76 74 73 77 78
		f 4 88 89 -46 -69
		mu 0 4 140 150 151 141
		f 4 -53 90 -56 -90
		mu 0 4 150 155 156 151
		f 4 -62 -84 91 92
		mu 0 4 4 5 6 7
		f 4 -85 -63 -93 93
		mu 0 4 122 124 127 125
		f 4 94 95 -89 -80
		mu 0 4 39 41 42 40
		f 4 -66 96 -95 -82
		mu 0 4 107 114 115 108
		f 4 -55 97 -74 -91
		mu 0 4 155 162 163 156
		f 4 -96 98 99 -51
		mu 0 4 42 41 43 44
		f 4 -97 -79 100 -99
		mu 0 4 115 114 119 120
		f 4 101 102 -83 -98
		mu 0 4 162 166 167 163
		f 4 -54 -100 103 104
		mu 0 4 45 44 43 46
		f 4 -101 -86 105 -104
		mu 0 4 120 119 122 123
		f 4 -92 -103 106 107
		mu 0 4 7 6 8 9
		f 4 -105 108 -107 -102
		mu 0 4 45 46 48 49
		f 4 -106 -94 -108 -109
		mu 0 4 123 122 125 126
		f 8 -71 -27 -8 109 -76 -31 -88 110
		mu 0 8 132 133 129 128 134 135 136 137
		f 8 -111 -87 -41 -77 -110 -30 -59 -68
		mu 0 8 132 137 142 143 134 128 144 145
		f 4 -6 111 112 113
		mu 0 4 95 94 98 99
		f 4 -3 114 115 -112
		mu 0 4 23 22 26 27
		f 4 -10 116 117 -2
		mu 0 4 131 130 138 139
		f 3 -115 118 119
		mu 0 3 26 22 30
		f 3 120 -120 121
		mu 0 3 31 26 30
		f 4 -113 122 123 124
		mu 0 4 99 98 104 105
		f 4 -116 -121 125 -123
		mu 0 4 27 26 31 32
		f 4 -118 126 127 -119
		mu 0 4 139 138 148 149
		f 4 -124 128 129 130
		mu 0 4 105 104 111 112
		f 4 -126 131 132 -129
		mu 0 4 32 31 35 36
		f 4 -7 133 134 135
		mu 0 4 92 95 100 101
		f 4 -14 -136 136 137
		mu 0 4 10 11 12 13
		f 4 -128 138 139 -122
		mu 0 4 149 148 153 154
		f 4 140 -130 -133 141
		mu 0 4 14 15 16 17
		f 4 -140 142 -142 -132
		mu 0 4 154 153 160 161
		f 4 -134 -114 143 144
		mu 0 4 100 95 99 106
		f 4 -117 -138 145 146
		mu 0 4 138 130 146 147
		f 4 -144 -125 147 148
		mu 0 4 106 99 105 113
		f 4 -127 -147 149 150
		mu 0 4 148 138 147 152
		f 4 -148 -131 151 152
		mu 0 4 113 105 112 116
		f 4 -137 -135 153 -146
		mu 0 4 82 83 84 85
		f 4 -139 -151 154 155
		mu 0 4 153 148 152 159
		f 4 -141 156 157 -152
		mu 0 4 15 14 18 19
		f 4 -143 -156 158 -157
		mu 0 4 160 153 159 165
		f 4 -154 -145 159 -150
		mu 0 4 85 84 86 87
		f 4 -160 -149 160 -155
		mu 0 4 87 86 88 89
		f 4 -161 -153 -158 -159
		mu 0 4 89 88 90 91;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "6A79A314-4EB1-0528-D331-C492B1C36988";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube14Shape" -p "pCube14";
	rename -uid "BC26AA18-4F44-958B-F264-93BDA9CF578D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32672324031591415 0.23661193996667862 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape8" -p "pCube14";
	rename -uid "A0DFE203-4175-D187-823C-E097F9149CCD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.6310727 0.55454957
		 0.78148299 0.55454957 0.78148299 0.70495981 0.6310727 0.70495981 0.40159172 0 0.55200201
		 0 0.55200201 0.15041023 0.40159172 0.15041023 0.1326687 0.56931615 0.28307894 0.56931615
		 0.28307894 0.71972638 0.1326687 0.71972638 0.90205687 0.22821414 0.69919991 0.45642829
		 0.69919991 0 0.90205687 0.23221651 0.90205687 0.68864477 0.69919991 0.46043065;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".vt[0:5]"  0 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5
		 0.5 0.5 -0.5 0 -0.5 -0.5;
	setAttr -s 9 ".ed[0:8]"  0 2 0 2 1 0 1 0 0 2 4 0 4 3 0 3 1 0 4 5 0
		 5 3 0 0 5 0;
	setAttr -s 18 ".n[0:17]" -type "float3"  0 0 1 0 0 1 0 0 1 0 1 0 0 1
		 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0.89442718 -0.44721359 0 0.89442718 -0.44721359
		 0 0.89442718 -0.44721359 0 0.89442718 -0.44721359 0 -0.89442718 -0.44721359 0 -0.89442718
		 -0.44721359 0 -0.89442718 -0.44721359 0 -0.89442718 -0.44721359 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 12 13 14
		f 4 -2 3 4 5
		mu 0 4 8 9 10 11
		f 3 -5 6 7
		mu 0 3 15 16 17
		f 4 8 -7 -4 -1
		mu 0 4 0 1 2 3
		f 4 -9 -3 -6 -8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "028B3BEA-4517-32D6-41DD-1283CF84ECF4";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube15Shape" -p "pCube15";
	rename -uid "66D8E494-4D6F-C6D9-6618-068B423787C2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41060245840188753 0.31652848729504018 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape11" -p "pCube15";
	rename -uid "8EAEA504-4D8B-1C4E-EB34-CBB3691AE57F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.6310727 0.70495981
		 0.76963925 0.70495981 0.76963925 0.86117852 0.6310727 0.86117852 0.77091271 0.70495981
		 0.9094792 0.70495981 0.9094792 0.86117852 0.77091271 0.86117852 0.56653118 1 0.56653118
		 0.86117852 0.70509773 0.86117852 0.70509773 1 0.49199399 0.23938984 0.24740922 0.45642823
		 0.24740919 0 0.2445848 0 0.2445848 0.45642829 0 0.2393899;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".vt[0:5]"  0.017073333 -0.62739122 0.5 -0.50837702 0.5 0.5
		 0.49346316 0.5 0.5 -0.50837702 0.5 -0.5 0.49346316 0.5 -0.5 0.017073333 -0.62739122 -0.5;
	setAttr -s 9 ".ed[0:8]"  0 2 0 2 1 0 1 0 0 2 4 0 4 3 0 3 1 0 4 5 0
		 5 3 0 0 5 0;
	setAttr -s 18 ".n[0:17]" -type "float3"  0 0 1 0 0 1 0 0 0.99999994
		 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0 0 0 -0.99999994 0 0 -1
		 0 0 -1 0.92113823 -0.38923565 0 0.92113823 -0.38923565 0 0.92113823 -0.38923565 0
		 0.92113823 -0.38923565 0 -0.9063881 -0.42244604 0 -0.9063881 -0.42244604 0 -0.9063881
		 -0.42244604 0 -0.9063881 -0.42244604 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 12 13 14
		f 4 -2 3 4 5
		mu 0 4 8 9 10 11
		f 3 -5 6 7
		mu 0 3 15 16 17
		f 4 8 -7 -4 -1
		mu 0 4 0 1 2 3
		f 4 -9 -3 -6 -8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16";
	rename -uid "75CA4843-452F-CCD6-8571-C18C425C1D75";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube16Shape" -p "pCube16";
	rename -uid "DE9B8538-4552-E76F-D4F7-418DFB03AC08";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24277221411466599 0.31199101665628826 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape10" -p "pCube16";
	rename -uid "1CD64225-4FEA-C4E0-B7DE-E6919E3E8835";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.49123275 0.69785917
		 0.62992001 0.69785917 0.62992001 0.8540172 0.49123275 0.8540172 0.28685123 0.71499097
		 0.42553851 0.71499097 0.42553851 0.871149 0.28685123 0.871149 0.4266912 0.99295968
		 0.4266912 0.8540172 0.56537849 0.8540172 0.56537849 0.99295968 0.244277 0.46026498
		 0 0.69897509 0 0.24254678 0.69606763 0.060671799 0.69606763 0.51710004 0.45179069
		 0.27838996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 6 ".vt[0:5]"  -0.030494988 -0.62597215 0.5 -0.50837684 0.5 0.5
		 0.4934631 0.5 0.5 -0.50837684 0.5 -0.5 0.4934631 0.5 -0.5 -0.030494988 -0.62597215 -0.5;
	setAttr -s 9 ".ed[0:8]"  0 2 0 2 1 0 1 0 0 2 4 0 4 3 0 3 1 0 4 5 0
		 5 3 0 0 5 0;
	setAttr -s 18 ".n[0:17]" -type "float3"  0 0 1 0 0 1 0 0 1 0 1 0 0 1
		 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0.90664405 -0.42189625 0 0.90664405 -0.42189625
		 0 0.90664405 -0.42189625 0 0.90664405 -0.42189625 0 -0.92052394 -0.39068606 0 -0.92052394
		 -0.39068606 0 -0.92052394 -0.39068606 0 -0.92052394 -0.39068606 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 12 13 14
		f 4 -2 3 4 5
		mu 0 4 8 9 10 11
		f 3 -5 6 7
		mu 0 3 15 16 17
		f 4 8 -7 -4 -1
		mu 0 4 0 1 2 3
		f 4 -9 -3 -6 -8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17";
	rename -uid "FC80140F-45A1-2F9D-4F99-7D9FB9F66164";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "polySurfaceShape1" -p "pCube17";
	rename -uid "2DC97CCA-4C3C-D3E0-37CE-319CF91A1F07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33723984658718109 0.50922746956348419 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.14342561 0.71972638
		 0.28463942 0.71972638 0.28463942 0.87474573 0.14342561 0.87474573 0 0.71972638 0.14121377
		 0.71972638 0.14121377 0.87474573 0 0.87474573 0.82828295 0 0.96949673 0 0.96949673
		 0.14121377 0.82828295 0.14121377 0.67447966 0.51008004 0.45179069 0.73829418 0.45179072
		 0.28186586 0.44858435 0.28101334 0.44858429 0.7374416 0.22589535 0.50922745 0.60025001
		 0.58615142 0.14342561 0.7713995 0.300125 0.58529884 0.28463942 0.7713995 0.52602035
		 0.6622228 0.14342561 0.82307261 0.37435466 0.66137022 0.28463942 0.82307261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 5 ".pt[1:5]" -type "float3"  4.4703484e-08 -1.7881393e-07 
		-4.4703484e-08 -4.4703484e-08 -1.7881393e-07 -4.4703484e-08 4.4703484e-08 -1.7881393e-07 
		4.4703484e-08 -4.4703484e-08 -1.7881393e-07 4.4703484e-08 0 0 0;
	setAttr -s 6 ".vt[0:5]"  0 -0.59776342 0.5 -0.5 0.49999988 0.5 0.5 0.49999988 0.5
		 -0.5 0.49999988 -0.5 0.5 0.49999988 -0.5 0 -0.59776342 -0.5;
	setAttr -s 9 ".ed[0:8]"  0 2 0 2 1 0 1 0 0 2 4 0 4 3 0 3 1 0 4 5 0
		 5 3 0 0 5 0;
	setAttr -s 18 ".n[0:17]" -type "float3"  0 0 0.99999994 0 0 1 0 0 1
		 0 1 0 0 1 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -0.99999994 0.91004872 -0.41450134 0 0.91004872
		 -0.41450134 0 0.91004872 -0.41450134 0 0.91004872 -0.41450134 0 -0.91004872 -0.41450134
		 0 -0.91004872 -0.41450134 0 -0.91004872 -0.41450134 0 -0.91004872 -0.41450134 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 12 13 14
		f 4 -2 3 4 5
		mu 0 4 8 9 10 11
		f 3 -5 6 7
		mu 0 3 15 16 17
		f 4 8 -7 -4 -1
		mu 0 4 0 1 2 3
		f 4 -9 -3 -6 -8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "pCube17";
	rename -uid "73869F87-42FF-1836-F184-EAAA33A007BC";
	setAttr ".t" -type "double3" 0 2.5277048731324658 0 ;
createNode transform -n "transform12" -p "polySurface1";
	rename -uid "125E1C08-4CD2-284E-32E9-AFB28EF42517";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform12";
	rename -uid "D86D7A72-416D-38A7-4B72-C8A3245EC130";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "pCube17";
	rename -uid "25A8B8AE-422C-30C0-F4B2-C88238F5CFE2";
	setAttr ".t" -type "double3" 0 2.5277048731324658 0 ;
createNode transform -n "transform13" -p "|pCube17|polySurface2";
	rename -uid "C664ADFF-4479-10E4-807D-24ABD7313D26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform13";
	rename -uid "7A94EAC7-4884-4766-E2A6-96A59E96ADD5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform11" -p "pCube17";
	rename -uid "D2F67786-4635-611D-3B13-2D9AA4B5352A";
	setAttr ".v" no;
createNode mesh -n "pCube17Shape" -p "transform11";
	rename -uid "A2C9D726-4C80-3E7F-C7EC-E091B7BDFA42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33723984658718109 0.50922746956348419 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 5 ".pt[1:5]" -type "float3"  4.4703484e-08 -1.7881393e-07 
		-4.4703484e-08 -4.4703484e-08 -1.7881393e-07 -4.4703484e-08 4.4703484e-08 -1.7881393e-07 
		4.4703484e-08 -4.4703484e-08 -1.7881393e-07 4.4703484e-08 0 0 0;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -av ".pt[2].px";
	setAttr -av ".pt[2].py";
	setAttr -av ".pt[2].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[4].px";
	setAttr -av ".pt[4].py";
	setAttr -av ".pt[4].pz";
createNode transform -n "polySurface2";
	rename -uid "B34AF962-4EBA-AD38-A1AC-8587BCD11D89";
	setAttr ".rp" -type "double3" -0.5 4.0788230383870587 0 ;
	setAttr ".sp" -type "double3" -0.5 4.0788230383870587 0 ;
createNode transform -n "polySurface3" -p "|polySurface2";
	rename -uid "BFDFFA5E-4651-F868-FBCA-78A4033E3CD0";
createNode mesh -n "polySurfaceShape4" -p "polySurface3";
	rename -uid "689725EA-456C-DFE5-1BC4-0E9A8BBBC797";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32899400617073055 0.45508343358664044 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface4" -p "|polySurface2";
	rename -uid "2A9962A0-45A7-B66A-296D-B0AE7E061771";
createNode transform -n "polySurface5" -p "polySurface4";
	rename -uid "55C15EB0-4F3F-FBC9-1BF4-D3B6B40BAFB8";
createNode mesh -n "polySurfaceShape6" -p "polySurface5";
	rename -uid "50454566-482D-6B84-5F25-F0943F4DC7A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32774805277585983 0.83727756142616272 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface6" -p "polySurface4";
	rename -uid "DCABC9A4-4B07-2EF5-E8CD-27B1C6A673B1";
createNode mesh -n "polySurfaceShape7" -p "polySurface6";
	rename -uid "1A793D96-443F-8477-6568-1082BD166816";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32494728767234954 0.35618449581283357 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "transform15" -p "polySurface4";
	rename -uid "650D232E-4391-93A5-59DD-9C832EE22D51";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform15";
	rename -uid "ECA55928-416D-9B7C-ED5A-5D8EFAA65F7A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.38196782767772675 0.50903257727622986 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 -2.5286567 0 0 -2.5286567 
		0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 
		0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 0 0 -2.5286567 
		0;
createNode transform -n "transform14" -p "|polySurface2";
	rename -uid "18A1A5B7-4FE7-9882-492F-46AC88AC5119";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform14";
	rename -uid "EECE830F-4A21-0CCF-7344-D38658A7001E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.27043312788009644 0.59241572022438049 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 -1.4901161e-08 0 0 -1.4901161e-08 
		0 0 -1.4901161e-08 0 0 -1.4901161e-08 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A6BA2F38-4234-BC46-CD8C-27A24CB3D856";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "237A50A5-4DA8-815A-5855-288DAA16E3C8";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F87A955A-4E33-99DE-E4A9-EA8E031B73C3";
createNode displayLayerManager -n "layerManager";
	rename -uid "F35F8331-4E12-E37D-2339-3BB28FDF5B63";
createNode displayLayer -n "defaultLayer";
	rename -uid "63282EB4-4E0E-73E1-C1EA-2493F6D54574";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "08C55237-441B-8B72-A31F-BEA9F71A7DF7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8C093ED2-4EA9-F655-DDD1-1AB02262241E";
	setAttr ".g" yes;
createNode shadingEngine -n "pCube13SG";
	rename -uid "F71FE412-4F49-AAAA-ED16-A3AACDBD0124";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C03E07AC-45DB-B8AA-C507-9EB15108D645";
createNode animCurveTL -n "pCube6_translateX";
	rename -uid "47790129-42D4-BB30-5FCD-3DB0C8673FF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.5036113262176514;
createNode animCurveTL -n "pCube6_translateY";
	rename -uid "1D4EB3DF-4D23-1DB8-6BAE-B18776BBDA2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.99778461456298828;
createNode animCurveTL -n "pCube6_translateZ";
	rename -uid "DC337B2C-475A-B3D2-5CAF-C1A2FA950C59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.67806434631347656;
createNode animCurveTU -n "pCube6_scaleX";
	rename -uid "BE5208BC-4B65-73C7-AD62-3AB0FDD7489A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.3107460737228394;
createNode animCurveTU -n "pCube6_scaleY";
	rename -uid "68114362-4F46-638E-08D1-69AB84358E7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0153708457946777;
createNode animCurveTU -n "pCube6_scaleZ";
	rename -uid "51BCACEF-4497-8BBC-FBC7-1D8A58BBC310";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.22661551833152771;
createNode animCurveTA -n "pCube6_rotateX";
	rename -uid "AA829B04-4DC2-3A9F-8B90-AEB0006B1669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube6_rotateY";
	rename -uid "31C01727-451A-FBF4-64C9-FF94D6DDA2AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube6_rotateZ";
	rename -uid "005863BB-4C03-B947-5B1D-2BBC9EA8662B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 180;
createNode animCurveTU -n "pCube6_visibility";
	rename -uid "924AFD9F-4EE6-785D-BE5D-8DAD68FEF011";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  0.041666666666666664;
	setAttr ".kiy[0]"  0;
createNode shadingEngine -n "pCube13SG1";
	rename -uid "559B49AE-4689-5020-07F8-D988D83C08CF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "A46A6B73-41E2-EF6E-731C-4A8F087C14C6";
createNode shadingEngine -n "pCube13SG2";
	rename -uid "7E883094-4ED7-B22D-1D06-68A65FF3EED5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "82DDEADD-478E-E184-2831-EAB1632AE525";
createNode shadingEngine -n "pCube14SG";
	rename -uid "A0D9001D-4D75-2C8E-93EC-70BB5E0804E6";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "1C11E2BF-47FB-0468-4BDB-C4A3B0814B01";
createNode animCurveTL -n "pCube15_translateX";
	rename -uid "00B82DB8-4756-4379-A195-D88F326356B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.125 10 0.21721080861368725 30 0.21721080861368725
		 100 0.78272313681441241;
createNode animCurveTL -n "pCube15_translateY";
	rename -uid "F6A2C46C-4CF1-512B-99AB-B89C0A2EF1F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.0353007316589355 10 1.0353007316589355
		 30 1.0353007316589355 100 1.0353007316589355;
createNode animCurveTL -n "pCube15_translateZ";
	rename -uid "4526167E-46DC-19EE-6EC2-9CA1B2A9C23D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTU -n "pCube15_visibility";
	rename -uid "8B82E00B-452B-2E71-B174-24ADAD3DA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pCube15_rotateX";
	rename -uid "5BA4370A-4DA9-8A11-A11B-3AA130F1F5CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube15_rotateY";
	rename -uid "5442ED27-4DA6-A46A-AC34-67B380BE2302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube15_rotateZ";
	rename -uid "E15BD51F-4185-3FA4-3310-05A0E459F267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 270 10 270 30 270 100 270;
createNode animCurveTU -n "pCube15_scaleX";
	rename -uid "97825077-4BE3-B344-373E-B18F88B1B299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.1 10 2.1 30 2.1 100 2.1;
createNode animCurveTU -n "pCube15_scaleY";
	rename -uid "AFB9A8CB-480D-3276-BBF4-AFB6052F0015";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
createNode animCurveTU -n "pCube15_scaleZ";
	rename -uid "8FE3D190-4217-722A-7B38-1B8084BF1851";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.15 10 0.15 30 0.15 100 0.15;
createNode animCurveTL -n "pCube17_translateX";
	rename -uid "633618B4-4FE1-0258-39CC-F39E94550103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.5 10 -0.5 30 -0.5 60 -0.5 100 -0.5;
createNode animCurveTL -n "pCube17_translateY";
	rename -uid "8F2AA8F6-4140-9C21-F48A-EE8D6D369269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.6000000238418579 10 1.6970257832562794
		 30 1.6970257832562794 60 1.9205479398880527 100 1.9815586516052166;
createNode animCurveTL -n "pCube17_translateZ";
	rename -uid "6D2F6766-4F14-A516-80C6-BAAB5AF69E0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 60 0 100 0;
createNode animCurveTU -n "pCube17_visibility";
	rename -uid "29EC3F96-4E2A-BD10-0714-B7BE21D376EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 60 1 100 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "pCube17_rotateX";
	rename -uid "BF29F665-4A2B-5568-8345-A79DF3294B35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 60 0 100 0;
createNode animCurveTA -n "pCube17_rotateY";
	rename -uid "85273A94-4B21-B314-7D26-6CB93AC13FA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 60 0 100 0;
createNode animCurveTA -n "pCube17_rotateZ";
	rename -uid "9A643AE7-4CF5-8B0A-28FC-26A06F8DE7EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 10 0 30 0 60 0 100 0;
createNode animCurveTU -n "pCube17_scaleX";
	rename -uid "9FEF6CAD-4795-E1F5-3F52-85B024CFAE35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.25 10 2.25 30 2.25 60 2.25 100 2.25;
createNode animCurveTU -n "pCube17_scaleY";
	rename -uid "00BF9020-437B-5F91-4177-DF92923D0DC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 10 1 30 1 60 1 100 1;
createNode animCurveTU -n "pCube17_scaleZ";
	rename -uid "55217BB2-4B44-EC76-CF2A-F7ABD2C92BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.15 10 0.15 30 0.15 60 0.15 100 0.15;
createNode animCurveTL -n "pCube16_translateX";
	rename -uid "028304E2-4C2E-3F85-A8DB-E5BAA47E5F7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.125 10 -1.211930398270215 30 -1.211930398270215
		 100 -1.776421160877343;
createNode animCurveTL -n "pCube16_translateY";
	rename -uid "9D16855B-46AF-C4EA-9819-6A9AE35C65EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.065000057220459 10 1.065000057220459
		 30 1.065000057220459 100 1.065000057220459;
createNode animCurveTL -n "pCube16_translateZ";
	rename -uid "5EBDA261-4577-525C-9015-F6BEE1F8B2DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTU -n "pCube16_visibility";
	rename -uid "41F6E600-44E4-6D1F-81A5-DAAAF3019F22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pCube16_rotateX";
	rename -uid "6CD8817C-4F35-25E6-33B0-7F91E2FC95E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube16_rotateY";
	rename -uid "12C566FE-49D8-BB4C-6A70-7D9FD04502BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube16_rotateZ";
	rename -uid "71807860-4B27-5290-478D-65B62F36867D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 90 10 90 30 90 100 90;
createNode animCurveTU -n "pCube16_scaleX";
	rename -uid "E2CECE18-4913-8AE4-F6F2-7E90FAA91EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.1 10 2.1 30 2.1 100 2.1;
createNode animCurveTU -n "pCube16_scaleY";
	rename -uid "45A96423-4421-3B66-5B92-72A5BF71EDE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
createNode animCurveTU -n "pCube16_scaleZ";
	rename -uid "367E11D6-40CE-8A37-0F39-E8A9C3FDF1D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.15 10 0.15 30 0.15 100 0.15;
createNode animCurveTL -n "pCube14_translateX";
	rename -uid "6E62A030-448F-DC52-3FF5-80BB2A15902B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.5 10 -0.5 30 -0.5 100 -0.5;
createNode animCurveTL -n "pCube14_translateY";
	rename -uid "05E51E72-4CBD-4829-749B-EC80C4A30DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.5 10 0.38583840627897104 30 0.38583840627897104
		 100 -0.48290519584995484;
createNode animCurveTL -n "pCube14_translateZ";
	rename -uid "96E65AB6-41B2-53F2-06C6-82B1A6B71D32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTU -n "pCube14_visibility";
	rename -uid "E7FB2E49-44D7-A62E-1CD0-3DA3AAB5DDBF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pCube14_rotateX";
	rename -uid "1C4D2046-47D3-DF10-0336-D1A76F40F4F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube14_rotateY";
	rename -uid "A0449AC6-4E02-EE2D-F230-07A05B864D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 10 0 30 0 100 0;
createNode animCurveTA -n "pCube14_rotateZ";
	rename -uid "E311C11E-44C9-5F1E-0CF6-62917F8DCF39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 180 10 180 30 180 100 180;
createNode animCurveTU -n "pCube14_scaleX";
	rename -uid "02972B79-4D26-8973-CE37-4BBE409CC98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.25 10 2.25 30 2.25 100 2.25;
createNode animCurveTU -n "pCube14_scaleY";
	rename -uid "2F13E8F8-4EEB-A99D-5F73-5D9A2E7EAB98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 10 1 30 1 100 1;
createNode animCurveTU -n "pCube14_scaleZ";
	rename -uid "DB6ADDF5-44FA-66CA-9727-A0B830F8DB04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.15 10 0.15 30 0.15 100 0.15;
createNode polySplit -n "polySplit1";
	rename -uid "0F0B364A-48AF-D347-6723-BA918E7A6DD5";
	setAttr -s 5 ".e[0:4]"  0.60733199 0.40000001 0 1 0.60733199;
	setAttr -s 5 ".d[0:4]"  -2147483641 -2147483642 -2147483644 -2147483644 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "D329CFA1-4B8E-C5F2-CE02-28B230CB25B6";
	setAttr -s 4 ".e[0:3]"  0 0.60000002 0.385544 0;
	setAttr -s 4 ".d[0:3]"  -2147483638 -2147483648 -2147483646 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyChipOff -n "polyChipOff1";
	rename -uid "C51D4A38-4DA4-15EC-8428-648B47B2F901";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[5:8]";
	setAttr ".ix" -type "matrix" 2.25 0 0 0 0 1 0 0 0 0 0.14999999999999999 0 -0.5 3.5615055638113482 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.5 3.5615056 0 ;
	setAttr ".rs" 52576;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	rename -uid "C4A94875-4B0D-0E53-CD6D-C099C767284B";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId1";
	rename -uid "1D61B6E2-4318-65F7-BE91-4CA5D5732C74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "470C88FB-40E6-BD54-F50F-E78D0756CB6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId2";
	rename -uid "3A9170FE-4857-4644-AEAD-249A786997B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "A25F86E9-4E3F-CF90-1FC1-788B0912EE06";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "78D1AC4F-4BF8-C0C5-555A-0A8DFE9F9A9A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId4";
	rename -uid "C5FCB5D4-4D87-0BFE-975F-71853068C933";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "7BDBE589-4DC3-4813-F460-73A983CEE712";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyUnite -n "polyUnite1";
	rename -uid "305B17D8-4A0C-5174-32BF-6E86D7E66252";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId5";
	rename -uid "B6A8E787-4BA6-4893-F541-1B8D52769ED4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "7AB0946C-4026-C6A9-2582-439A16E068FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode polySplit -n "polySplit3";
	rename -uid "3A5EE7BA-483F-F1F9-E565-CB80AC7AE1CD";
	setAttr -s 5 ".e[0:4]"  0.49501401 0.5 0.5 0.5 0.49501401;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483643 -2147483641 -2147483647 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyChipOff -n "polyChipOff2";
	rename -uid "056F1B0B-4C15-372E-AA56-8C97267C9646";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[9:12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 43935;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	rename -uid "DDCF038E-4D6C-897E-6803-6F9966AD9960";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 0 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId7";
	rename -uid "214E2D1C-4C89-4CE2-1F35-C491CB30039D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "B730CAC3-4762-35E2-072B-B0B7EF611D8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode animCurveTL -n "polySurface3_translateX";
	rename -uid "C0920384-40A5-69B9-99E8-32BB6878E6AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTL -n "polySurface3_translateY";
	rename -uid "89A58A46-4F05-24BB-CFC9-E78F8801B6F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTL -n "polySurface3_translateZ";
	rename -uid "74F173EA-4262-6010-B4ED-35AC3E943522";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTL -n "polySurface4_translateX";
	rename -uid "39A14F42-4938-A301-2E76-B9A8810E6220";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTL -n "polySurface4_translateY";
	rename -uid "4FE39F75-44C6-2A4A-213D-BF9D8AB79745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTL -n "polySurface4_translateZ";
	rename -uid "2AADD96C-4268-0FDA-AAB3-FB86479A0A27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTU -n "polySurface4_visibility";
	rename -uid "6D17056A-4CA7-D9D4-0045-CBBEC61B3F11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 50 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "polySurface4_rotateX";
	rename -uid "178E1ECB-48FF-801C-D384-CCA881B1029C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTA -n "polySurface4_rotateY";
	rename -uid "98C11E32-4A9A-F06F-6249-F0806A6966AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTA -n "polySurface4_rotateZ";
	rename -uid "428A0577-4CAC-01FB-72FE-24A092E70FD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 0 50 0;
createNode animCurveTU -n "polySurface4_scaleX";
	rename -uid "6A3A9FFA-4338-214A-20CF-158CC7771A7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 50 1;
createNode animCurveTU -n "polySurface4_scaleY";
	rename -uid "4677E622-4075-962C-4CCD-299A2A67499F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 50 1;
createNode animCurveTU -n "polySurface4_scaleZ";
	rename -uid "08C4B0CF-476A-9E3F-DE2B-38BDD253433F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 50 1;
createNode animCurveTU -n "polySurface3_visibility";
	rename -uid "185C0624-4436-C9C1-A76F-12AC23845DA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 50 1 100 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "polySurface3_rotateX";
	rename -uid "6E7FC0AE-425C-1293-9375-859A6474E9BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTA -n "polySurface3_rotateY";
	rename -uid "66C87044-4198-20F0-7925-C39E0ED2677A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTA -n "polySurface3_rotateZ";
	rename -uid "77B1D041-431E-8E44-A890-D8872DFE7052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 50 0 100 0;
createNode animCurveTU -n "polySurface3_scaleX";
	rename -uid "D922B2F6-4DF5-D00F-8090-878462585362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 50 1 100 1;
createNode animCurveTU -n "polySurface3_scaleY";
	rename -uid "BDE67FC6-4B88-0EAB-E7E1-4B915AE089C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 50 1 100 1;
createNode animCurveTU -n "polySurface3_scaleZ";
	rename -uid "3CFE0A45-4203-A7B8-6279-BBBCE70E8F5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 50 1 100 1;
createNode polySeparate -n "polySeparate3";
	rename -uid "B7390BA4-4852-D4CB-AB64-77B244FC5E88";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode animCurveTL -n "polySurface5_translateX";
	rename -uid "6B9E9ABB-4885-80CE-4BCB-14ADD8B2D13C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 80 0;
createNode animCurveTL -n "polySurface5_translateY";
	rename -uid "71AEF95F-4C8F-E2EB-94B1-52BDE123AB90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0028235628753895403 60 0.0028235628753895403
		 80 0.083217468076003498;
createNode animCurveTL -n "polySurface5_translateZ";
	rename -uid "33F04391-41BC-3728-3DFD-D88236D503EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 80 0;
createNode animCurveTL -n "polySurface6_translateX";
	rename -uid "13706CAB-4716-ED73-6778-E283FDAC4A2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 60 0 65 0 68 0 70 0 71 0 73 0 75 0 76 0
		 80 0 100 0;
createNode animCurveTL -n "polySurface6_translateY";
	rename -uid "F4836459-4A2E-1328-3058-EB94581529DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.0028235628753895403 60 0.0028235628753895403
		 65 0.019116552528492241 68 0.032839526089996837 70 0.047378248822733372 71 0.050452371617897049
		 73 0.061561362243053433 75 0.071795937844998811 76 0.077267297881299171 80 0.12520683616128342
		 100 0.46884870592201577;
createNode animCurveTL -n "polySurface6_translateZ";
	rename -uid "AD6F52FE-4156-AD8F-F0C9-C0844B72DD3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 60 0 65 0 68 0 70 0 71 0 73 0 75 0 76 0
		 80 0 100 0;
createNode animCurveTU -n "polySurface5_visibility";
	rename -uid "B4671F02-4B2F-24D7-626C-B6BF72D629E2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 60 1 80 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "polySurface5_rotateX";
	rename -uid "A964C247-4F8C-62D1-CF82-7FA6CE2024CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 80 0;
createNode animCurveTA -n "polySurface5_rotateY";
	rename -uid "3BD988AC-4EEF-F366-44F2-CAB7DD5626EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 80 0;
createNode animCurveTA -n "polySurface5_rotateZ";
	rename -uid "20C6F09E-4210-0BE9-3F39-1EBE5219A067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 80 0;
createNode animCurveTU -n "polySurface5_scaleX";
	rename -uid "33DA2585-4C92-4E7D-6BAF-E7AD6F53C7D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 60 1 80 1;
createNode animCurveTU -n "polySurface5_scaleY";
	rename -uid "834CD0FC-4FDA-84BF-1959-7A832019FDF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 60 1 80 1;
createNode animCurveTU -n "polySurface5_scaleZ";
	rename -uid "85F40D04-4B8D-DEBB-EF5C-5997E40A0C10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 60 1 80 1;
createNode animCurveTU -n "polySurface6_visibility";
	rename -uid "41B33835-4A31-6CAA-65A2-F2B3A3577E08";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 60 1 65 1 68 1 70 1 71 1 73 1 75 1 76 1
		 80 1 100 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTA -n "polySurface6_rotateX";
	rename -uid "2BB41FF9-41E5-EA5E-6D42-0CB44940F7B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 60 0 65 0 68 0 70 0 71 0 73 0 75 0 76 0
		 80 0 100 0;
createNode animCurveTA -n "polySurface6_rotateY";
	rename -uid "BFD1BAC6-4C6B-A2A6-CB90-C0AFFFE9366F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 60 0 65 0 68 0 70 0 71 0 73 0 75 0 76 0
		 80 0 100 0;
createNode animCurveTA -n "polySurface6_rotateZ";
	rename -uid "A228F8D4-4168-502B-B9ED-629524415447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 60 0 65 0 68 0 70 0 71 0 73 0 75 0 76 0
		 80 0 100 0;
createNode animCurveTU -n "polySurface6_scaleX";
	rename -uid "9F697BB8-4AC6-AB23-E3F9-67874FCE64B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 60 1 65 1 68 1 70 1 71 1 73 1 75 1 76 1
		 80 1 100 1;
createNode animCurveTU -n "polySurface6_scaleY";
	rename -uid "B3EF36B3-4F51-854F-F083-EC957B3A3C37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 60 1 65 1 68 1 70 1 71 1 73 1 75 1 76 1
		 80 1 100 1;
createNode animCurveTU -n "polySurface6_scaleZ";
	rename -uid "3ED1A635-4E7D-2927-74B4-088EA6F7F000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 60 1 65 1 68 1 70 1 71 1 73 1 75 1 76 1
		 80 1 100 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0D35A242-4F06-6050-3A20-CF928AC8E74D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 470\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 470\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 470\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 120 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6B922EC5-463C-9A26-A683-50864474A1C7";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "DD3E17D4-46D7-70C3-5A22-718D2F6D1D4F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.0028235628753895403 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "1DDB09A3-488B-6E1A-292A-519B189277D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.0028235628753895403 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "71349FD9-4B50-BD0A-8464-C0BEEF5188D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "2DCCC679-45D2-D6AE-4E96-51AFDD221C40";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -2.52865672 0 0 -2.52865672
		 0 0 -2.52865672 0 0 -2.52865672 0 0 -2.52865672 0 0 -2.52865672 0 0 -2.52865672 0
		 0 -2.52865672 0;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "F01D8D37-439D-4747-A231-C98F4C6E2B85";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" -2.25 2.7554552980815448e-16 0 0 -1.2246467991473532e-16 -1 0 0
		 0 0 0.14999999999999999 0 -0.5 0.5 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "6DEE97A9-44A8-9930-D8E7-40A7EF8DD6ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:78]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 1 0 0 0 0 1 0 -0.12499994039535522 -1.6937364283986511e-05 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "1E9C66DB-470E-57EE-0377-2583AE724F15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 4.6629367034256577e-16 2.1000000000000001 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 0.14999999999999999 0 -1.125 1.065000057220459 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "F37298FA-4FD4-24EE-9A94-23A6FE369EBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" -4.6629367034256577e-16 -2.1000000000000001 0 0 1 -2.2204460492503131e-16 0 0
		 0 0 0.14999999999999999 0 0.125 1.0353007316589355 0 1;
	setAttr ".s" -type "double3" 4.5000003576278687 4.5000003576278687 4.5000003576278687 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "9EE99533-4758-0CDB-2E1D-7CA465BA2413";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" 0.31349891 -0.29550987 -0.016130835
		 -0.32604644 0.014405757 -0.65567636 0.34403557 -0.62513983 0.48825124 -0.55414301
		 0.15860748 -0.58924246 0.19370699 -0.91888624 0.52335072 -0.8837868 0.23169434 -0.20604905
		 0.20115781 0.12358105 -0.12847197 0.093044519 -0.097935408 -0.23658559 0.16052297
		 0.30353802 -0.16026755 -0.16289374 0.48048165 -0.16383573 -0.42712015 0.24476007
		 -0.44287226 0.24432996 -0.43573853 0.054875143;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "49573E78-452D-76FF-F400-A99DA0189598";
	setAttr ".uopa" yes;
	setAttr -s 178 ".uvtk[0:177]" -type "float2" -0.20004229 -0.27154297 -0.22820345
		 -0.27154297 -0.22820345 -0.41961408 -0.20004229 -0.41961408 0.02175037 -0.70487624
		 0.02175037 -0.70490503 0.02175037 -0.71628797 0.024115805 -0.71628797 0.024115805
		 -0.70487624 0.024402542 -0.71266472 0.024402542 -0.72407645 0.026767965 -0.72407645
		 0.026767965 -0.71269345 0.026767965 -0.71266472 0.069063172 0.29997537 0.040902011
		 0.29997537 0.040902011 0.15190426 0.069063172 0.15190426 0.040902011 0.12396801 0.069063172
		 0.12396801 -0.60112596 -0.49353147 -0.57296479 -0.49353147 -0.57296479 -0.34568527
		 -0.60112596 -0.34568527 0.017111771 0.0022012587 -0.011049389 0.0022012587 -0.011049389
		 -0.025735045 0.017111771 -0.025735045 0.017111771 0.15004742 -0.011049389 0.15004742
		 0.71458453 -0.3147462 0.68642336 -0.3147462 0.68642336 -0.34114733 0.71458453 -0.34114733
		 0.71458453 -0.27912846 0.68642336 -0.27912846 0.68642336 -0.36754844 0.71458453 -0.36754844
		 0.71458453 -0.25034353 0.68642336 -0.25034353 0.66299945 -0.36754844 0.68642336 -0.39394951
		 0.71458453 -0.39394951 0.71458453 -0.16793987 0.68642336 -0.16793987 0.68642336 -0.42035067
		 0.71458453 -0.42035067 0.71458453 -0.13915503 0.68642336 -0.13915503 0.71458453 -0.1035373
		 0.68642336 -0.1035373 0.71458453 -0.077136211 0.68642336 -0.077136211 0.71458453
		 -0.05073509 0.68642336 -0.05073509 0.68642336 -0.024333991 0.71458453 -0.024333991
		 0.66299945 -0.05073509 0.71458453 0.0020671112 0.68642336 0.0020671112 0.10027178
		 -0.17352404 0.072110616 -0.17352404 0.072110616 -0.20914176 0.10027178 -0.20914176
		 0.10027178 -0.033550613 0.072110616 -0.033550613 0.10027178 0.0020671147 0.072110616
		 0.0020671147 -0.11277886 -0.82021636 -0.11277886 -0.79381526 -0.14094003 -0.79381526
		 -0.14094003 -0.82021636 -0.08935497 -0.76741421 -0.14094003 -0.76741421 -0.11277886
		 -0.74101305 -0.14094003 -0.74101305 -0.11277886 -0.71461195 -0.14094003 -0.71461195
		 0.29718745 -0.67566872 0.29718745 -0.70843482 0.29955289 -0.70843482 0.29955289 -0.67566872
		 0.064300656 -0.71368021 0.064300656 -0.70098203 0.061935227 -0.70098203 0.061935227
		 -0.71368021 -0.36712891 -0.74381739 -0.39529011 -0.74381739 -0.39529011 -0.77021849
		 -0.36712891 -0.77021849 -0.39529011 -0.79661965 -0.343705 -0.79661965 -0.39529011
		 -0.8230207 -0.36712891 -0.8230207 -0.39529011 -0.8494218 -0.36712891 -0.8494218 0.51170439
		 -0.31474623 0.48376808 -0.31474623 0.48376808 -0.3411473 0.51170439 -0.3411473 0.51170439
		 -0.27912846 0.48376808 -0.27912846 0.48376808 -0.36754844 0.51170439 -0.36754844
		 0.65955055 -0.3411473 0.65955055 -0.31474623 0.51170439 -0.13915503 0.48376808 -0.13915503
		 0.48376808 -0.39394954 0.51170439 -0.39394954 0.65955055 -0.36754844 0.51170439 -0.1035373
		 0.48376808 -0.1035373 0.46452829 -0.16793986 0.46452829 -0.25034353 0.48376808 -0.42035064
		 0.51170439 -0.42035064 0.65955055 -0.39394954 0.51170439 -0.077136211 0.48376808
		 -0.077136211 0.65955055 -0.42035064 0.65977544 -0.1035373 0.65977544 -0.077136211
		 0.51170439 -0.050735094 0.48376808 -0.050735094 0.65977544 -0.050735094 0.51170439
		 -0.024333995 0.48376808 -0.024333995 0.65977544 -0.024333995 0.51170439 0.002067107
		 0.48376808 0.002067107 0.65977544 0.002067107 0.10278822 0.071352378 0.074852034
		 0.071352378 0.074852034 0.035734653 0.10278822 0.035734653 0.10278822 0.21132576
		 0.074852034 0.21132576 0.10278822 0.12434252 0.10275953 0.12431688 0.10275953 0.15708305
		 0.10278822 0.15705802 0.074852034 0.0093335565 0.10278822 0.0093335565 0.10278822
		 0.24694353 0.074852034 0.24694353 0.11417124 0.14717512 0.11417124 0.13447692 0.12202799
		 0.10013724 0.12202799 0.182541 -0.072994255 0.035734653 -0.072994255 0.0093335565
		 0.074852034 -0.017067611 0.085971162 -0.017067611 0.10278822 0.27334464 0.074852034
		 0.27334464 -0.072994255 -0.017067611 0.074852034 -0.043468654 0.10278822 -0.043468654
		 0.085971162 0.29974574 0.074852034 0.29974574 -0.073219173 0.27334464 -0.073219173
		 0.24694353 -0.072994255 -0.043468654 0.074852034 -0.069869757 0.10278822 -0.069869757
		 0.10278822 0.32614687 0.074852034 0.32614687 -0.073219173 0.29974574 -0.072994255
		 -0.069869757 0.10278822 0.35254797 0.074852034 0.35254797 -0.073219173 0.32614687
		 -0.073219173 0.35254797 0.30920589 -0.73958868 0.32061765 -0.72942859 0.32061765
		 -0.71673042 0.30920589 -0.70682251;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "E58516DD-49C5-CC1E-FE61-D09264201963";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" -0.16253051 -0.26117802 -0.46648163
		 -0.29354194 -0.43004078 -0.63578272 -0.12608966 -0.60341877 0.26178825 -0.18861723
		 -0.042150408 -0.21677384 -0.010446638 -0.55900025 0.29349202 -0.53084362 0.59842223
		 -0.8717733 0.57021385 -0.56727546 0.26627547 -0.59543204 0.29448372 -0.89992988 0.17317547
		 0.30333981 -0.14020538 0.11025541 0.16349857 -0.17451832 0.17366326 0.58245754 -0.12982288
		 0.87043244 -0.1262787 0.3782905;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "33D3389A-4BC1-500E-3602-5DB1802BA3AF";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" -0.081514716 -0.18864796
		 -0.38518852 -0.21678001 -0.35347268 -0.55913937 -0.049798876 -0.53100729 0.20691296
		 -0.27390116 -0.096760988 -0.30203319 -0.065045178 -0.64439255 0.2386288 -0.61626053
		 0.60409528 -0.92426729 0.57591146 -0.62003446 0.2722376 -0.64816648 0.30042142 -0.95239925
		 0.1751218 0.30812809 0.17790322 -0.16772884 0.48289821 0.11227495 -0.14467895 0.87293416
		 -0.44970247 0.58349746 -0.15045351 0.37839866;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "FC8E032E-43F4-5ADE-AB5B-6E9DC03129D0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" -0.11878884 -0.32100061 -0.01989153
		 -0.30777255 -0.079417706 0.13726553 -0.17831498 0.12403747 -0.057828575 -0.77676105
		 0.040362 -0.75824893 0.32493314 -0.13373372 -0.018902041 0.39727354 -0.21382119 -0.50279164
		 -0.14362331 -0.079214752 -0.32831445 0.81541711 -0.6735186 0.28330019;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "729FF950-47B5-8859-6471-3B8D3E1D389C";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.057008207 -0.06340605 0.1397121
		 -0.03832373 0.10208863 0.085732147 0.019384742 0.060649827 0.21840039 0.15714692
		 0.13615835 0.14507428 0.1472283 0.025577947 0.22956249 0.03665626 0.32150355 -0.14241514
		 0.068554506 0.85068035 -0.02102359 0.69594872 0.17330176 -0.051696826 0.22185011
		 -0.4718467 0.41728118 0.27849653 0.32708725 0.4348771 0.075648755 -0.56006718;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "0973B69C-4772-763D-324E-63A948DB1EEF";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.51963949 -0.84726286 0.3863633
		 0.14915632 0.31993541 0.14027126 0.45321164 -0.85614794 0.23096657 -0.099953786 0.29738617
		 -0.093800709 0.28815663 0.005828843 0.22173697 -0.0003242339 0.050725251 0.085603282
		 -0.014902383 0.06269528 0.014239758 -0.033394895 0.080701798 -0.013238363 0.40578461
		 -0.12012091 0.10644797 0.87680072 0.039127044 0.75587255 0.27968287 -0.042334847
		 0.029368948 -0.45906967 0.26930821 0.34031552 0.2015411 0.46616864 -0.092663452 -0.52975035;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "5BBEBB15-4819-37B1-4BAD-6EA4FE100B6A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "f[1:2]" "f[5]" "f[14:15]" "f[19]" "f[22:23]" "f[25]" "f[27]" "f[29]" "f[31:33]" "f[35:36]" "f[38]" "f[40:41]" "f[43:44]" "f[46]" "f[49:52]" "f[54]" "f[57]" "f[59:60]" "f[62]" "f[64]" "f[66:71]" "f[73]" "f[75]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 1 0 0 0 0 1 0 -0.12499994039535522 -1.6937364283986511e-05 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.49999973177909851 1.3870980739593506 -0.16635617613792419 ;
	setAttr ".ro" -type "double3" 0 0 179.99999146226352 ;
	setAttr ".ps" -type "double2" 4.5000007301568665 4.5000007301568665 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "C23C2815-4D5B-CC39-146D-1DB8F69568D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "f[2]" "f[15]" "f[19]" "f[25]" "f[27]" "f[32]" "f[35:36]" "f[41]" "f[44]" "f[50:51]" "f[54]" "f[59]" "f[64]" "f[66]" "f[68]" "f[70]" "f[73]" "f[75]";
	setAttr ".ix" -type "matrix" 0.75 0 0 0 0 1 0 0 0 0 1 0 -0.12499994039535522 -1.6937364283986511e-05 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.49999985098838806 1.3870978355407715 -0.36635619401931763 ;
	setAttr ".ro" -type "double3" 180 0 0 ;
	setAttr ".ps" -type "double2" 4.500000536441803 4.500000536441803 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "5C0D71B1-4458-5761-D9CD-258715AB1A3A";
	setAttr ".uopa" yes;
	setAttr -s 178 ".uvtk[0:177]" -type "float2" -0.67651397 0.080985606 -0.69970834
		 0.048384875 -0.34016845 -0.074139953 -0.31697404 -0.041539222 0.14894593 0.87185448
		 0.14900994 0.87183076 0.1743902 0.86241841 0.17634624 0.86769253 0.15090197 0.8771286
		 0.12835234 0.90155053 0.15379643 0.89211446 0.15575236 0.89738882 0.13037223 0.90680116
		 0.13030821 0.90682489 -0.35557908 -0.24639425 -0.37877041 -0.27800447 -0.086015373
		 -0.40032718 -0.062824003 -0.36871696 -0.030782152 -0.4234055 -0.0075907633 -0.39179528
		 0.085903704 -0.13826263 0.1091097 -0.10181725 -0.24830833 0.020516694 -0.2715143
		 -0.015928686 -0.077437468 -0.17647126 -0.10062757 -0.20764446 -0.044136114 -0.2307266
		 -0.020946095 -0.1995534 -0.37640658 -0.054314211 -0.3995966 -0.08548741 0.23893316
		 0.062667623 0.16152121 0.062887326 0.16138308 -0.0055642044 0.23879521 -0.0057838773
		 0.23911969 0.15501545 0.16170733 0.15523534 0.16124515 -0.074015766 0.23865713 -0.074235469
		 0.23927002 0.22964774 0.16185822 0.22986732 0.096854821 -0.073832989 0.16110684 -0.14246753
		 0.23851888 -0.14268732 0.23970108 0.44329998 0.16228946 0.44351968 0.16096874 -0.21091911
		 0.2383808 -0.21113867 0.23985179 0.517932 0.1624396 0.5181517 0.24003811 0.61028016
		 0.16262598 0.61049974 0.24017616 0.67873144 0.16276415 0.67895114 0.24031426 0.74718297
		 0.16290225 0.74740267 0.16304041 0.81585431 0.24045242 0.81563455 0.098512098 0.74758548
		 0.24059059 0.88408601 0.16317858 0.88430583 -0.61813676 -0.048506364 -0.64132214
		 -0.078146026 -0.58048654 -0.10754108 -0.55730116 -0.077901423 -0.85721374 0.067012757
		 -0.88039911 0.037373096 -0.91804957 0.096407838 -0.94123501 0.066768177 -0.17809108
		 -0.11552057 -0.192678 -0.093824238 -0.21582076 -0.10938364 -0.20123386 -0.13107997
		 -0.18801516 -0.059185863 -0.23040769 -0.087687343 -0.22185183 -0.050431609 -0.24499461
		 -0.065991014 -0.23643881 -0.02873531 -0.25958157 -0.044294715 -0.05116301 0.86409599
		 0.021893568 0.83700258 0.023849554 0.84227699 -0.049207084 0.8693704 0.14651567 0.88450235
		 0.11820346 0.89500207 0.11624748 0.88972771 0.14455968 0.879228 0.19747645 -0.0011992157
		 0.17433372 -0.016758621 0.18892053 -0.03845495 0.21206331 -0.022895545 0.20350739
		 -0.060151249 0.24589986 -0.031649768 0.21809441 -0.081847578 0.2412371 -0.066288173
		 0.23268139 -0.10354388 0.25582409 -0.087984473 -0.58140332 0.54139483 -0.58123177
		 0.68706012 -0.68390763 0.68718344 -0.68407917 0.54151809 0.097562037 0.27691019 0.097389691
		 0.13098656 0.23615596 0.13081941 0.23632851 0.27674302 -0.44288343 0.54122853 -0.44271189
		 0.6868937 0.10148337 0.54057461 0.10165486 0.68623984 -0.58671135 0.13181047 -0.68956977
		 0.13193439 -0.69048321 -0.64150721 -0.58762473 -0.64163107 -0.79242808 0.13205825
		 -0.7933417 -0.64138335 -0.01017333 0.78669417 -0.33064726 0.78707898 0.23909394 -0.23166363
		 0.34176975 -0.23178674 0.34267884 0.54028493 0.24000315 0.54040819 -0.58653891 0.27773416
		 -0.44794506 0.13164334 -0.44777271 0.27756691 -0.89528662 0.13218211 -0.8962 -0.64125943
		 0.44444537 -0.23191027 0.44535482 0.54016155 0.24017467 0.68607354 -0.99814492 0.13230602
		 -0.99905837 -0.64113557 0.54712129 -0.23203339 0.54803061 0.54003841 -0.68939739
		 0.27785802 -0.79235953 0.19013886 0.64979714 -0.2321568 0.65070635 0.53991503 0.34285039
		 0.68595028 -0.89511412 0.27810574 0.44552624 0.68582696 -0.99797267 0.27822959 0.54820216
		 0.68570358 0.65087795 0.68558031 -0.1088867 0.27715886 -0.1087871 0.27700853 -0.23644347
		 0.27716231 -0.2363462 0.2773124 -0.19777198 0.33672452 -0.14830007 0.33666492 -0.014464874
		 0.37754303 -0.33550864 0.37792975 -0.78658342 0.6873067 -0.78675497 0.54164147 0.33901453
		 0.13069549 0.33918688 0.2766192 -0.88925928 0.68743008 -0.88943076 0.54176468 0.44187295
		 0.13057165 0.44194159 0.18865226 -0.99193478 0.68755323 -0.99210644 0.54188806 -0.68498695
		 -0.22938086 -0.58231109 -0.22950424 0.54473138 0.13044779 0.54490376 0.27637136 0.64758968
		 0.13032381 0.64776212 0.27624759 -0.78766268 -0.2292576 0.23524401 -0.64144742 0.33810231
		 -0.64157128 -0.89033866 -0.22913416 0.44096085 -0.64169514 -0.99301422 -0.22901089
		 0.54381931 -0.64181906 0.64667761 -0.64194298 -0.055543236 0.84986699 -0.068760201
		 0.88371235 -0.097072691 0.89421213 -0.12859991 0.87696034;
createNode blinn -n "blinn1";
	rename -uid "188AD56E-4854-3027-A364-24A005DCA91C";
createNode shadingEngine -n "blinn1SG";
	rename -uid "B4BEC51E-4E97-2500-3A78-A0B34BBCD0BC";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "0DFD9AD0-47D7-6C6E-BB60-DEADFD5F1F80";
createNode file -n "file1";
	rename -uid "64602EC7-419D-590D-AB0C-92BA5774BE09";
	setAttr ".ftn" -type "string" "D:/GLU/Project/TWINSTICK/UV/Building/KEY DOOR TEXTURE/Key Door.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7363A34E-45F7-1DE5-EBC9-B4A4EA06411B";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FA790712-4AFB-BD0F-A572-7391CAA53F93";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -548.34166576307371 -569.17290971392754 ;
	setAttr ".tgi[0].vh" -type "double2" 540.25478220806008 583.45862343197859 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -248.57142639160156;
	setAttr ".tgi[0].ni[0].y" 192.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -555.71429443359375;
	setAttr ".tgi[0].ni[1].y" 170;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 58.571430206298828;
	setAttr ".tgi[0].ni[2].y" 192.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 365.71429443359375;
	setAttr ".tgi[0].ni[3].y" 170;
	setAttr ".tgi[0].ni[3].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pCube6_translateX.o" "pCube6.tx";
connectAttr "pCube6_translateY.o" "pCube6.ty";
connectAttr "pCube6_translateZ.o" "pCube6.tz";
connectAttr "pCube6_scaleX.o" "pCube6.sx";
connectAttr "pCube6_scaleY.o" "pCube6.sy";
connectAttr "pCube6_scaleZ.o" "pCube6.sz";
connectAttr "pCube6_rotateX.o" "pCube6.rx";
connectAttr "pCube6_rotateY.o" "pCube6.ry";
connectAttr "pCube6_rotateZ.o" "pCube6.rz";
connectAttr "pCube6_visibility.o" "pCube6.v";
connectAttr "polyTweakUV8.out" "pCube13Shape.i";
connectAttr "polyTweakUV8.uvtk[0]" "pCube13Shape.uvst[0].uvtw";
connectAttr "pCube14_translateX.o" "pCube14.tx";
connectAttr "pCube14_translateY.o" "pCube14.ty";
connectAttr "pCube14_translateZ.o" "pCube14.tz";
connectAttr "pCube14_visibility.o" "pCube14.v";
connectAttr "pCube14_rotateX.o" "pCube14.rx";
connectAttr "pCube14_rotateY.o" "pCube14.ry";
connectAttr "pCube14_rotateZ.o" "pCube14.rz";
connectAttr "pCube14_scaleX.o" "pCube14.sx";
connectAttr "pCube14_scaleY.o" "pCube14.sy";
connectAttr "pCube14_scaleZ.o" "pCube14.sz";
connectAttr "polyTweakUV1.out" "pCube14Shape.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCube14Shape.uvst[0].uvtw";
connectAttr "pCube15_translateX.o" "pCube15.tx";
connectAttr "pCube15_translateY.o" "pCube15.ty";
connectAttr "pCube15_translateZ.o" "pCube15.tz";
connectAttr "pCube15_visibility.o" "pCube15.v";
connectAttr "pCube15_rotateX.o" "pCube15.rx";
connectAttr "pCube15_rotateY.o" "pCube15.ry";
connectAttr "pCube15_rotateZ.o" "pCube15.rz";
connectAttr "pCube15_scaleX.o" "pCube15.sx";
connectAttr "pCube15_scaleY.o" "pCube15.sy";
connectAttr "pCube15_scaleZ.o" "pCube15.sz";
connectAttr "polyTweakUV4.out" "pCube15Shape.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCube15Shape.uvst[0].uvtw";
connectAttr "pCube16_translateX.o" "pCube16.tx";
connectAttr "pCube16_translateY.o" "pCube16.ty";
connectAttr "pCube16_translateZ.o" "pCube16.tz";
connectAttr "pCube16_visibility.o" "pCube16.v";
connectAttr "pCube16_rotateX.o" "pCube16.rx";
connectAttr "pCube16_rotateY.o" "pCube16.ry";
connectAttr "pCube16_rotateZ.o" "pCube16.rz";
connectAttr "pCube16_scaleX.o" "pCube16.sx";
connectAttr "pCube16_scaleY.o" "pCube16.sy";
connectAttr "pCube16_scaleZ.o" "pCube16.sz";
connectAttr "polyTweakUV3.out" "pCube16Shape.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCube16Shape.uvst[0].uvtw";
connectAttr "pCube17_translateX.o" "pCube17.tx";
connectAttr "pCube17_translateY.o" "pCube17.ty";
connectAttr "pCube17_translateZ.o" "pCube17.tz";
connectAttr "pCube17_visibility.o" "pCube17.v";
connectAttr "pCube17_rotateX.o" "pCube17.rx";
connectAttr "pCube17_rotateY.o" "pCube17.ry";
connectAttr "pCube17_rotateZ.o" "pCube17.rz";
connectAttr "pCube17_scaleX.o" "pCube17.sx";
connectAttr "pCube17_scaleY.o" "pCube17.sy";
connectAttr "pCube17_scaleZ.o" "pCube17.sz";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId3.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "pCube14SG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape3.i";
connectAttr "groupId4.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "pCube14SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId1.id" "pCube17Shape.iog.og[0].gid";
connectAttr "pCube14SG.mwc" "pCube17Shape.iog.og[0].gco";
connectAttr "groupParts1.og" "pCube17Shape.i";
connectAttr "groupId2.id" "pCube17Shape.ciog.cog[0].cgid";
connectAttr "polySurface3_translateX.o" "polySurface3.tx";
connectAttr "polySurface3_translateY.o" "polySurface3.ty";
connectAttr "polySurface3_translateZ.o" "polySurface3.tz";
connectAttr "polySurface3_visibility.o" "polySurface3.v";
connectAttr "polySurface3_rotateX.o" "polySurface3.rx";
connectAttr "polySurface3_rotateY.o" "polySurface3.ry";
connectAttr "polySurface3_rotateZ.o" "polySurface3.rz";
connectAttr "polySurface3_scaleX.o" "polySurface3.sx";
connectAttr "polySurface3_scaleY.o" "polySurface3.sy";
connectAttr "polySurface3_scaleZ.o" "polySurface3.sz";
connectAttr "polyTweakUV7.out" "polySurfaceShape4.i";
connectAttr "polyTweakUV7.uvtk[0]" "polySurfaceShape4.uvst[0].uvtw";
connectAttr "polySurface4_translateX.o" "polySurface4.tx";
connectAttr "polySurface4_translateY.o" "polySurface4.ty";
connectAttr "polySurface4_translateZ.o" "polySurface4.tz";
connectAttr "polySurface4_visibility.o" "polySurface4.v";
connectAttr "polySurface4_rotateX.o" "polySurface4.rx";
connectAttr "polySurface4_rotateY.o" "polySurface4.ry";
connectAttr "polySurface4_rotateZ.o" "polySurface4.rz";
connectAttr "polySurface4_scaleX.o" "polySurface4.sx";
connectAttr "polySurface4_scaleY.o" "polySurface4.sy";
connectAttr "polySurface4_scaleZ.o" "polySurface4.sz";
connectAttr "polySurface5_translateX.o" "polySurface5.tx";
connectAttr "polySurface5_translateY.o" "polySurface5.ty";
connectAttr "polySurface5_translateZ.o" "polySurface5.tz";
connectAttr "polySurface5_visibility.o" "polySurface5.v";
connectAttr "polySurface5_rotateX.o" "polySurface5.rx";
connectAttr "polySurface5_rotateY.o" "polySurface5.ry";
connectAttr "polySurface5_rotateZ.o" "polySurface5.rz";
connectAttr "polySurface5_scaleX.o" "polySurface5.sx";
connectAttr "polySurface5_scaleY.o" "polySurface5.sy";
connectAttr "polySurface5_scaleZ.o" "polySurface5.sz";
connectAttr "polyTweakUV6.out" "polySurfaceShape6.i";
connectAttr "polyTweakUV6.uvtk[0]" "polySurfaceShape6.uvst[0].uvtw";
connectAttr "polySurface6_translateX.o" "polySurface6.tx";
connectAttr "polySurface6_translateY.o" "polySurface6.ty";
connectAttr "polySurface6_translateZ.o" "polySurface6.tz";
connectAttr "polySurface6_visibility.o" "polySurface6.v";
connectAttr "polySurface6_rotateX.o" "polySurface6.rx";
connectAttr "polySurface6_rotateY.o" "polySurface6.ry";
connectAttr "polySurface6_rotateZ.o" "polySurface6.rz";
connectAttr "polySurface6_scaleX.o" "polySurface6.sx";
connectAttr "polySurface6_scaleY.o" "polySurface6.sy";
connectAttr "polySurface6_scaleZ.o" "polySurface6.sz";
connectAttr "polyTweakUV5.out" "polySurfaceShape7.i";
connectAttr "polyTweakUV5.uvtk[0]" "polySurfaceShape7.uvst[0].uvtw";
connectAttr "groupParts6.og" "polySurfaceShape5.i";
connectAttr "groupId7.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "pCube14SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polyChipOff2.out" "polySurface2Shape.i";
connectAttr "groupId5.id" "polySurface2Shape.iog.og[0].gid";
connectAttr "pCube14SG.mwc" "polySurface2Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube13SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube13SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube13SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube14SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube13SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube13SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube13SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube14SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCube13SG.msg" "materialInfo1.sg";
connectAttr "pCube13SG1.msg" "materialInfo2.sg";
connectAttr "pCube13SG2.msg" "materialInfo3.sg";
connectAttr "pCube17Shape.iog.og[0]" "pCube14SG.dsm" -na;
connectAttr "pCube17Shape.ciog.cog[0]" "pCube14SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "pCube14SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "pCube14SG.dsm" -na;
connectAttr "polySurface2Shape.iog.og[0]" "pCube14SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "pCube14SG.dsm" -na;
connectAttr "groupId1.msg" "pCube14SG.gn" -na;
connectAttr "groupId2.msg" "pCube14SG.gn" -na;
connectAttr "groupId3.msg" "pCube14SG.gn" -na;
connectAttr "groupId4.msg" "pCube14SG.gn" -na;
connectAttr "groupId5.msg" "pCube14SG.gn" -na;
connectAttr "groupId7.msg" "pCube14SG.gn" -na;
connectAttr "pCube14SG.msg" "materialInfo4.sg";
connectAttr "polySurfaceShape1.o" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyChipOff1.ip";
connectAttr "pCube17Shape.wm" "polyChipOff1.mp";
connectAttr "pCube17Shape.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[1]";
connectAttr "polyUnite1.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polySplit3.ip";
connectAttr "polySplit3.out" "polyChipOff2.ip";
connectAttr "polySurface2Shape.wm" "polyChipOff2.mp";
connectAttr "polySurface2Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "polySurfaceShape5.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[1]" "polyAutoProj1.ip";
connectAttr "polySurfaceShape7.wm" "polyAutoProj1.mp";
connectAttr "polySeparate3.out[0]" "polyAutoProj2.ip";
connectAttr "polySurfaceShape6.wm" "polyAutoProj2.mp";
connectAttr "polyTweak1.out" "polyAutoProj3.ip";
connectAttr "polySurfaceShape4.wm" "polyAutoProj3.mp";
connectAttr "polySeparate2.out[0]" "polyTweak1.ip";
connectAttr "polySurfaceShape8.o" "polyAutoProj4.ip";
connectAttr "pCube14Shape.wm" "polyAutoProj4.mp";
connectAttr "polySurfaceShape9.o" "polyAutoProj5.ip";
connectAttr "pCube13Shape.wm" "polyAutoProj5.mp";
connectAttr "polySurfaceShape10.o" "polyAutoProj6.ip";
connectAttr "pCube16Shape.wm" "polyAutoProj6.mp";
connectAttr "polySurfaceShape11.o" "polyAutoProj7.ip";
connectAttr "pCube15Shape.wm" "polyAutoProj7.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj5.out" "polyTweakUV2.ip";
connectAttr "polyAutoProj6.out" "polyTweakUV3.ip";
connectAttr "polyAutoProj7.out" "polyTweakUV4.ip";
connectAttr "polyAutoProj1.out" "polyTweakUV5.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV6.ip";
connectAttr "polyAutoProj3.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj1.ip";
connectAttr "pCube13Shape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "pCube13Shape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV8.ip";
connectAttr "file1.oc" "blinn1.c";
connectAttr "file1.ot" "blinn1.sc";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCube13Shape.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape7.iog" "blinn1SG.dsm" -na;
connectAttr "pCube14Shape.iog" "blinn1SG.dsm" -na;
connectAttr "pCube16Shape.iog" "blinn1SG.dsm" -na;
connectAttr "pCube15Shape.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape4.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape6.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo5.sg";
connectAttr "blinn1.msg" "materialInfo5.m";
connectAttr "file1.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "blinn1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "pCube13SG.pa" ":renderPartition.st" -na;
connectAttr "pCube13SG1.pa" ":renderPartition.st" -na;
connectAttr "pCube13SG2.pa" ":renderPartition.st" -na;
connectAttr "pCube14SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of KEY DOOR.ma
