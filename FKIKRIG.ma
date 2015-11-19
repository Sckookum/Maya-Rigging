//Maya ASCII 2016 scene
//Name: FKIKRIG.ma
//Last modified: Thu, Nov 19, 2015 03:00:21 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "A4465DAC-48FB-3E9B-9061-1AB38EB5725F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -13.34766021550992 14.063615012107512 -13.628021298592349 ;
	setAttr ".r" -type "double3" -30.338352729629669 224.99999999998113 0 ;
	setAttr ".rp" -type "double3" 0 4.4408920985006262e-016 -1.7763568394002505e-015 ;
	setAttr ".rpt" -type "double3" -1.7961661581989749e-016 -8.8401860679108578e-016 
		8.0642040545576096e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E9D2A0BF-4ECA-710F-C0F9-5AA887411934";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.33672348608961;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "21A78560-4CD4-09DF-2938-B2AD0C62816A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E013F80E-4DC3-ECCD-BD67-71842BEE8917";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9A5726CB-4542-39D7-6BA3-3BBCD06DC4A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A752DDAC-4F8D-89B1-4A59-3CA1AD6806E9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "698DE564-4E11-8283-12CF-F39B068ADA3F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1A96535A-44D8-5DE4-F908-DE99FCD6E7B4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Hip_FK";
	rename -uid "CAD5100C-43D8-333E-7BFE-DEB7BFBCF1E0";
	setAttr ".t" -type "double3" 0 4.0165277487787669 -1.3877787807814457e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 90 9.5416640443905503e-015 -90.000000000000043 ;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "Knee_FK" -p "Hip_FK";
	rename -uid "F333576E-4852-C854-88EF-81B85D74666E";
	setAttr ".t" -type "double3" 1.9999999999999991 -3.3306690738754686e-016 -4.4408920985006202e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "Heel_FK" -p "Knee_FK";
	rename -uid "E631DD30-449A-3CF7-3B59-A3A19D9B62E6";
	setAttr ".t" -type "double3" 1.9999999999999996 -4.4408920985006252e-016 1.8873791418627661e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -90 89.999999999999972 0 ;
	setAttr ".radi" 0.71715825365578179;
createNode transform -n "pCylinder1";
	rename -uid "77A0D263-4E67-4DCA-82D5-688141ADEE68";
	setAttr ".t" -type "double3" 2.3244395824225301 2.0083405160044112 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.23639804855968832 2.0081872327743553 0.23639804855968832 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8F90A508-4A99-60CB-6BFA-DE861854EA51";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "2C64681F-4755-267C-880F-14AD0AFA037A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "Hip_FK1";
	rename -uid "EE178A9C-4DE4-C778-D303-5E9462DD0A8E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 2.3386028346681957 4.0207926154512226 -0.035825267124551495 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 90 -3.1805546814635168e-015 -90.000000000000043 ;
	setAttr ".bps" -type "matrix" -6.6613381477509392e-016 -1.0000000000000002 5.5511151231257839e-017 0
		 5.5511151231257839e-017 0 1.0000000000000002 0 -1.0000000000000002 4.9960036108132054e-016 0 0
		 2.3386028346681957 4.0207926154512226 -0.035825267124551495 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "Knee_IK" -p "Hip_FK1";
	rename -uid "B4617B95-45D8-E783-A42B-AEB94E0DE196";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.9999999999999987 -3.3306690738754686e-016 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -6.6613381477509392e-016 -1.0000000000000002 5.5511151231257839e-017 0
		 5.5511151231257839e-017 0 1.0000000000000002 0 -1.0000000000000002 4.9960036108132054e-016 0 0
		 2.3386028346681953 2.0207926154512235 -0.035825267124551717 1;
	setAttr ".radi" 0.55172413793103448;
createNode joint -n "Heel_IK" -p "Knee_IK";
	rename -uid "A0FE97BC-4035-4298-0E49-28A01A684863";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2 -4.4408920985006262e-016 1.7763568394002505e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -90 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -1.0547118733938989e-015 -5.5511151231257809e-017 0
		 1.1657341758564144e-015 1.0000000000000002 5.5511151231257839e-017 0 5.5511151231257802e-017 -5.5511151231257839e-017 1.0000000000000002 0
		 2.3386028346681922 0.020792615451223018 -0.03582526712455205 1;
	setAttr ".radi" 0.71715825365578179;
createNode transform -n "IK_Hip_Grp";
	rename -uid "B396D22C-4587-535D-3D7C-4E9B726500F3";
createNode transform -n "FK_Hip_Grp";
	rename -uid "F64024A9-4DD8-1A7A-5035-C295C5B5E019";
createNode transform -n "Hip_FK_GRP";
	rename -uid "4251C485-4785-7583-FA97-598B8257853E";
	setAttr ".rp" -type "double3" -4.0165277487787661 2.0908429147918717e-016 2.6755449514440189e-015 ;
	setAttr ".rpt" -type "double3" 4.0165277487787678 4.0165277487787678 -2.4664606599648331e-015 ;
	setAttr ".sp" -type "double3" -4.0165277487787661 2.0908429147918717e-016 2.6755449514440189e-015 ;
createNode transform -n "Hip_FK_CTRL" -p "Hip_FK_GRP";
	rename -uid "168C4968-4C65-6A0C-EE73-D1B46D99906F";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 2.4651903288156619e-032 -2.3460256695748698 ;
	setAttr ".rp" -type "double3" -4.0165277487787652 9.7144514654702528e-017 4.451901790844269e-015 ;
	setAttr ".sp" -type "double3" -4.0165277487787652 9.7144514654702528e-017 4.451901790844269e-015 ;
createNode nurbsCurve -n "Hip_FK_CTRLShape" -p "Hip_FK_CTRL";
	rename -uid "9E8A6049-4C21-8285-B8F2-1F931DAD236F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78163010138238542 -0.3333178193306911 
		0.45029236588909283 0 -0.47138258067808825 2.2979618574560865e-016 0.78163010138238054 
		-0.3333178193306911 -0.45029236588909216 1.105391890134019 -2.2553118078132494e-016 
		-0.6368095708734226 0.78163010138238054 0.33331781933069088 -0.45029236588909216 
		0 0.47138258067808814 2.2979618574560865e-016 -0.78163010138238409 0.3333178193306911 
		0.45029236588909172 -1.1053918901340243 1.6424420166259443e-016 0.63680957087342382 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "Knee_FK_GRP" -p "Hip_FK_CTRL";
	rename -uid "159D42A0-4475-C758-3F1B-3C804E1B393D";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -2.0165277487787661 -3.4694469519535994e-016 4.0078125809942072e-015 ;
	setAttr ".sp" -type "double3" -2.0165277487787665 -3.4694469519536004e-016 4.007812580994208e-015 ;
	setAttr ".spt" -type "double3" 4.4408920985006252e-016 9.8607613152626454e-032 -7.8886090522101163e-031 ;
createNode transform -n "Knee_FK_CTRL" -p "Knee_FK_GRP";
	rename -uid "AB33A7FA-46AC-B364-F3F2-A280C7F36109";
	setAttr ".rp" -type "double3" -2.0165277487787665 -2.3592239273284438e-016 4.007812580994208e-015 ;
	setAttr ".sp" -type "double3" -2.0165277487787665 -2.3592239273284438e-016 4.007812580994208e-015 ;
createNode nurbsCurve -n "Knee_FK_CTRLShape" -p "Knee_FK_CTRL";
	rename -uid "A5A4D0C6-4F35-5718-7180-64A9CEF487F4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.76631079302569893 -0.25352578210344201 
		0.52995663122629988 0 -0.35853959946193348 -4.0542410321936762e-016 0.76631079302568894 
		-0.25352578210344201 -0.52995663122630343 1.0837271164898148 -1.3532545590596285e-016 
		-0.74947185534979399 0.7663107930256885 0.25352578210344168 -0.52995663122630376 
		8.8817841970012523e-016 0.3585395994619337 -5.6501734611141897e-016 -0.76631079302569849 
		0.25352578210344168 0.5299566312262991 -1.0837271164898268 1.6114266835211454e-016 
		0.74947185534979077 0 0 0 0 0 0 0 0 0;
createNode transform -n "Heel_FK_GRP" -p "Knee_FK_CTRL";
	rename -uid "4609506C-4728-8E9C-54E3-8AA3E36C9B04";
	setAttr ".rp" -type "double3" -5.9034489921147068e-015 0.016527748778766505 -7.9286885376936379e-016 ;
	setAttr ".rpt" -type "double3" -0.016527748778760596 -0.016527748778767296 6.6871431022643663e-015 ;
	setAttr ".sp" -type "double3" -5.9034489921147068e-015 0.016527748778766505 -7.9286885376936379e-016 ;
createNode transform -n "Heel_FK_CTRL" -p "Heel_FK_GRP";
	rename -uid "91EE1B86-4326-D46A-38AA-F5BABBD858A7";
	setAttr ".rp" -type "double3" -5.904366466476679e-015 0.016527748778766619 -7.928688537693626e-016 ;
	setAttr ".sp" -type "double3" -5.904366466476679e-015 0.016527748778766619 -7.928688537693626e-016 ;
createNode nurbsCurve -n "Heel_FK_CTRLShape" -p "Heel_FK_CTRL";
	rename -uid "9D257833-46DE-D4DE-57E1-C7B440944E86";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.035718207948439606 -0.77935060789423005 
		-0.81931771969856937 -6.6056414456021229e-019 -1.1021681995277379 -1.158690231090314 
		-0.03571820794843894 -0.7793506078942305 -0.8193177196985697 -0.050513174104345415 
		-5.1000870193718129e-016 -4.6757638350892683e-016 -0.03571820794843894 0.77935060789422905 
		0.81931771969856837 -1.0118220145995059e-017 1.1021681995277373 1.1586902310903135 
		0.035718207948439606 0.7793506078942295 0.81931771969856837 0.050513174104345859 
		4.3021142204224816e-016 4.7534185101249174e-016 0 0 0 0 0 0 0 0 0;
createNode transform -n "nurbsCircle2";
	rename -uid "BC1CA461-4E79-3749-A50D-169ABCB5530A";
	addAttr -ci true -sn "IKFKswitch" -ln "IKFKswitch" -min 0 -max 1 -at "double";
	setAttr ".t" -type "double3" 2.3297155814203419 5.497187999498399 0 ;
	setAttr -k on ".IKFKswitch";
createNode nurbsCurve -n "nurbsCircleShape2" -p "nurbsCircle2";
	rename -uid "5123007E-4E1D-3184-3654-EA9EC595F79E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[1:10]" -type "double3" 0 0 0.41342366507033923 0 
		0 0 0.41704298759701441 0 0 0 0 0 0 0 -0.41342366507033923 0 0 0 -0.41704298759701441 
		0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "group1";
	rename -uid "348506F0-4803-77C4-A53D-1F87E638A921";
	setAttr ".t" -type "double3" 7.8496324082724751 0 -0.1137987973902046 ;
createNode joint -n "joint1" -p "group1";
	rename -uid "593DDCA0-478C-0D04-EAA6-9AA1F00B0E96";
	setAttr ".t" -type "double3" -5.4048391286693693 4.1304709392640007 0.04750388808122654 ;
	setAttr ".r" -type "double3" -90.432850751593762 -1.9712142063899725 1.4091865916744297 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.678371547982024 1.5291421624742665 -90.008582873110683 ;
	setAttr ".radi" 0.55319543903754775;
createNode joint -n "joint2" -p "joint1";
	rename -uid "C4F51FD6-41BF-2EFC-B392-28B1FECC0308";
	setAttr ".t" -type "double3" 2.0284451547259237 2.0816681711721685e-016 -1.7763568394002505e-015 ;
	setAttr ".r" -type "double3" 2.7353718426688904e-017 -0.24174947973950101 -6.0295196568657247e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.24176799508496183 0 ;
	setAttr ".radi" 0.55612373932393089;
createNode joint -n "joint3" -p "joint2";
	rename -uid "3D0F9178-41F7-D3DA-7A98-1190D7D2CEFB";
	setAttr ".t" -type "double3" 2.0850589602626632 2.3592239273284576e-016 9.7699626167013776e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.43671809198149 0 ;
	setAttr ".radi" 0.55612373932393089;
createNode ikEffector -n "effector1" -p "joint2";
	rename -uid "20392991-4A36-1466-95F9-4AAF66F55FC0";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "nurbsCircle1" -p "group1";
	rename -uid "D72DBDD4-45C2-FEB7-3706-AC8AEAA19ACC";
	setAttr ".rp" -type "double3" -5.5470472988859401 0 0.039651697229146077 ;
	setAttr ".sp" -type "double3" -5.5470472988859401 0 0.039651697229146077 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "7005C13F-4B7F-0EA8-C25F-F1AAC1003C40";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.44106766499166206 0 0.44106766499166278 
		0 0 0.62376387375544295 0.44106766499166294 0 0.44106766499166311 0.62376387375544518 
		0 2.3592239273284576e-016 0.44106766499166294 0 -0.44106766499166272 0 0 -0.62376387375544273 
		-0.44106766499166117 0 -0.44106766499166306 -0.62376387375544251 0 -2.7061686225238191e-016 
		0 0 0 0 0 0 0 0 0;
createNode ikHandle -n "ikHandle1" -p "nurbsCircle1";
	rename -uid "235F5299-4F4F-08BD-6AF2-C09C77557E34";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -5.5470472988859401 0 0.039651697229146077 ;
	setAttr ".sp" -type "double3" -5.5470472988859401 0 0.039651697229146077 ;
	setAttr ".pv" -type "double3" 0 -0.00427619558979404 0.01110871554190597 ;
	setAttr ".roc" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "80C08874-4723-1234-4BC3-8DBD2F861791";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "3FE8E050-4392-7035-51BA-A8848750E5E0";
	setAttr ".cdl" 1;
	setAttr ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "45C3BB0F-41BC-5EC2-5520-638D4718CA35";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "586CFA07-41C9-A663-2F2C-FCBE0305AC7C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3B016F17-4E03-F6A7-179D-FD915977B1B6";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "27C34900-49EE-D03C-7191-6994DADFAD1A";
	setAttr ".sh" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F8F169AE-4F15-64FF-2134-4AB9DF7FBA1C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1615\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1615\n            -height 731\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.44151\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"group2\" \n                -opaqueContainers 0\n                -dropTargetNode \"Ctrl_Knee_FK\" \n                -dropNode \"FK_Heel_Grp\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.44151\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"group2\" \n                -opaqueContainers 0\n"
		+ "                -dropTargetNode \"Ctrl_Knee_FK\" \n                -dropNode \"FK_Heel_Grp\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1615\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "84536DF6-4C00-361B-D1E3-E7AC14216E03";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "14191BA1-4631-B624-2CE4-4EAFBCDD7FBD";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "776DD5BC-4BC6-BE7C-561F-448F5B37FB1A";
createNode transformGeometry -n "transformGeometry1";
	rename -uid "2A213B5E-4B0F-87BC-92B5-488AF2D3502E";
	setAttr ".txf" -type "matrix" 1 0 3.0814879110195774e-033 0 0 1 0 0 0 0 1 0 -4.0165277487787661 3.2010659394170283e-016 2.6755449514440189e-015 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "DA2843EA-4579-BBBB-A648-0EA3424B34D1";
createNode transformGeometry -n "transformGeometry2";
	rename -uid "A559F1DC-432D-4BD8-1EDB-E8A7B75387C7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0165277487787665 -2.3592239273284443e-016 4.007812580994208e-015 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "9B6253A0-4604-3BCA-39F7-9EA7733DCEB6";
createNode transformGeometry -n "transformGeometry3";
	rename -uid "550B267E-4FDE-C4F3-B79F-1E84ECEE01E5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 3.0814879110195445e-033 0 0 0 1 0 -5.9034489921147076e-015 0.016527748778766616 -7.9286885376936369e-016 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "D74ABA53-4131-DDDF-5222-38A75F54C8A3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "EB8C8A8D-4122-D368-5443-779516B000E6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.3706524645924487 0.01652774877875407 -5.6898930012039273e-016 1;
createNode blendColors -n "Hip";
	rename -uid "8CAE7CC4-4586-121C-F4F7-6CA3C08BBFEF";
createNode blendColors -n "Knee";
	rename -uid "9043CB05-462D-7717-9B11-66A248DCD6EA";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "911B4EEE-4989-EC3B-0603-989614D88959";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -489.58204741505818 -342.85712923322461 ;
	setAttr ".tgi[0].vh" -type "double2" 1350.2962989276325 361.90474752395932 ;
	setAttr -s 39 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1122.857177734375;
	setAttr ".tgi[0].ni[0].y" -98.571426391601563;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 844.28570556640625;
	setAttr ".tgi[0].ni[1].y" -98.571426391601563;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 815.71429443359375;
	setAttr ".tgi[0].ni[2].y" -95.714286804199219;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 861.4285888671875;
	setAttr ".tgi[0].ni[3].y" -98.571426391601563;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 524.28570556640625;
	setAttr ".tgi[0].ni[4].y" -98.571426391601563;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1421.4285888671875;
	setAttr ".tgi[0].ni[5].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[6].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 881.4285888671875;
	setAttr ".tgi[0].ni[7].y" -98.571426391601563;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1142.857177734375;
	setAttr ".tgi[0].ni[8].y" -98.571426391601563;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1404.2857666015625;
	setAttr ".tgi[0].ni[9].y" -98.571426391601563;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2410;
	setAttr ".tgi[0].ni[10].y" -190;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2410;
	setAttr ".tgi[0].ni[11].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[12].y" -98.571426391601563;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[13].y" -287.14285278320312;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 5531.4287109375;
	setAttr ".tgi[0].ni[14].y" -67.142860412597656;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 6054.28564453125;
	setAttr ".tgi[0].ni[15].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1440;
	setAttr ".tgi[0].ni[16].y" -287.14285278320312;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1178.5714111328125;
	setAttr ".tgi[0].ni[17].y" -155.71427917480469;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[18].y" -155.71427917480469;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 5792.85693359375;
	setAttr ".tgi[0].ni[19].y" -197.14285278320312;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 6315.71435546875;
	setAttr ".tgi[0].ni[20].y" -67.142860412597656;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1440;
	setAttr ".tgi[0].ni[21].y" -155.71427917480469;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 301.42855834960937;
	setAttr ".tgi[0].ni[22].y" -287.14285278320312;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 824.28570556640625;
	setAttr ".tgi[0].ni[23].y" -287.14285278320312;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 6054.28564453125;
	setAttr ".tgi[0].ni[24].y" -261.42855834960937;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 6577.14306640625;
	setAttr ".tgi[0].ni[25].y" -197.14285278320312;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 562.85711669921875;
	setAttr ".tgi[0].ni[26].y" -287.14285278320312;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 580;
	setAttr ".tgi[0].ni[27].y" -155.71427917480469;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1418.5714111328125;
	setAttr ".tgi[0].ni[28].y" -155.71427917480469;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2005.7142333984375;
	setAttr ".tgi[0].ni[29].y" -172.85714721679687;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 2240;
	setAttr ".tgi[0].ni[30].y" -172.85714721679687;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 2000;
	setAttr ".tgi[0].ni[31].y" -287.14285278320312;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 2281.428466796875;
	setAttr ".tgi[0].ni[32].y" -155.71427917480469;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2020;
	setAttr ".tgi[0].ni[33].y" -270;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2281.428466796875;
	setAttr ".tgi[0].ni[34].y" -64.285713195800781;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2542.857177734375;
	setAttr ".tgi[0].ni[35].y" -17.142856597900391;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2240;
	setAttr ".tgi[0].ni[36].y" -172.85714721679687;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2474.28564453125;
	setAttr ".tgi[0].ni[37].y" -172.85714721679687;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 5657.14306640625;
	setAttr ".tgi[0].ni[38].y" -267.14285278320313;
	setAttr ".tgi[0].ni[38].nvs" 18304;
createNode unitConversion -n "unitConversion1";
	rename -uid "D653520F-4411-E4F9-662F-BC83576A3A13";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "917118FE-4D28-3F9E-D466-6FA9F670E993";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "513E96C4-4437-771B-1F2A-528FAFFADE98";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode unitConversion -n "unitConversion3";
	rename -uid "6101AEA1-4B41-2779-15CE-3C824F68EFC3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion5";
	rename -uid "8E42D156-4BF0-268D-D777-84987985A058";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "F50275BA-45A6-D9DB-0587-28B3ADC575AE";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion7";
	rename -uid "43D996D0-498E-50DE-936C-54950E87013A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion8";
	rename -uid "3A653DEE-47B9-CF80-AD04-78A21799D0F8";
	setAttr ".cf" 57.295779513082323;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "617F1D01-4548-0B81-3B7B-BDB2D79AE0DA";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "39EA70D6-4DF4-DF14-0963-E3965F548F37";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.5470472988859401 0 0.039651697229146077 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "92B8F5D5-46F3-0B4C-FB5E-E798DA82DE52";
	setAttr -s 222 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  6.2578932804004581e-005 0.49996871053359798 
		0.49996871053359798;
	setAttr -s 3 ".wl[1].w[0:2]"  5.2876225428244221e-005 0.49997356188728592 
		0.49997356188728592;
	setAttr -s 3 ".wl[2].w[0:2]"  4.74309213582821e-005 0.49997628453932091 
		0.49997628453932091;
	setAttr -s 3 ".wl[3].w[0:2]"  4.6177910827653719e-005 0.49997691104458614 
		0.49997691104458614;
	setAttr -s 3 ".wl[4].w[0:2]"  4.9084911980517762e-005 0.49997545754400979 
		0.49997545754400979;
	setAttr -s 3 ".wl[5].w[0:2]"  5.621653405506286e-005 0.49997189173297246 
		0.49997189173297246;
	setAttr -s 3 ".wl[6].w[0:2]"  6.759079580242455e-005 0.49996620460209878 
		0.49996620460209878;
	setAttr -s 3 ".wl[7].w[0:2]"  8.2897790934480145e-005 0.4999585511045328 
		0.4999585511045328;
	setAttr -s 3 ".wl[8].w[0:2]"  0.00010121970532119318 0.49994939014733936 
		0.49994939014733936;
	setAttr -s 3 ".wl[9].w[0:2]"  0.00012090100375009328 0.49993954949812502 
		0.49993954949812491;
	setAttr -s 3 ".wl[10].w[0:2]"  0.00013966370069654264 0.49993016814965174 
		0.49993016814965174;
	setAttr -s 3 ".wl[11].w[0:2]"  0.00015496914993046588 0.4999225154250348 
		0.4999225154250348;
	setAttr -s 3 ".wl[12].w[0:2]"  0.00016453462099341393 0.49991773268950329 
		0.49991773268950329;
	setAttr -s 3 ".wl[13].w[0:2]"  0.00016685133333247003 0.49991657433333375 
		0.49991657433333375;
	setAttr -s 3 ".wl[14].w[0:2]"  0.00016154518605821701 0.49991922740697087 
		0.49991922740697087;
	setAttr -s 3 ".wl[15].w[0:2]"  0.00014946807233300838 0.49992526596383352 
		0.49992526596383352;
	setAttr -s 3 ".wl[16].w[0:2]"  0.00013249107846752869 0.49993375446076627 
		0.49993375446076627;
	setAttr -s 3 ".wl[17].w[0:2]"  0.00011306412840355454 0.49994346793579819 
		0.49994346793579819;
	setAttr -s 3 ".wl[18].w[0:2]"  9.3678587334928177e-005 0.49995316070633256 
		0.49995316070633256;
	setAttr -s 3 ".wl[19].w[0:2]"  7.6396186717448433e-005 0.4999618019066413 
		0.4999618019066413;
	setAttr -s 3 ".wl[20].w[0:2]"  0.00027839842589715393 0.94540089247196801 
		0.054320709102134816;
	setAttr -s 3 ".wl[21].w[0:2]"  0.00023667849989519415 0.95183918666291534 
		0.047924134837189575;
	setAttr -s 3 ".wl[22].w[0:2]"  0.00021304061868607913 0.95566056921994225 
		0.044126390161371605;
	setAttr -s 3 ".wl[23].w[0:2]"  0.00020757749859304968 0.95656325751555626 
		0.04322916498585077;
	setAttr -s 3 ".wl[24].w[0:2]"  0.00022023820572970979 0.95448270969911286 
		0.045297052095157435;
	setAttr -s 3 ".wl[25].w[0:2]"  0.00025109758611871231 0.94957180766075189 
		0.050177094753129391;
	setAttr -s 3 ".wl[26].w[0:2]"  0.00029975876644038638 0.94224131987057724 
		0.057458921362982446;
	setAttr -s 3 ".wl[27].w[0:2]"  0.00036425462029268158 0.93319355282781502 
		0.066442192551892376;
	setAttr -s 3 ".wl[28].w[0:2]"  0.00044011114909798529 0.92336875102322502 
		0.076191137827676975;
	setAttr -s 3 ".wl[29].w[0:2]"  0.00052014349199110122 0.91380296068283962 
		0.085676895825169228;
	setAttr -s 3 ".wl[30].w[0:2]"  0.00059518781738329923 0.90546568436435182 
		0.093939127818264925;
	setAttr -s 3 ".wl[31].w[0:2]"  0.00065558250914090547 0.89914285235662672 
		0.10020156513423242;
	setAttr -s 3 ".wl[32].w[0:2]"  0.00069297903542727302 0.89538386528325586 
		0.10392315568131688;
	setAttr -s 3 ".wl[33].w[0:2]"  0.00070199770019262913 0.89449416529294246 
		0.10480383700686501;
	setAttr -s 3 ".wl[34].w[0:2]"  0.0006813195337272718 0.89654364333948178 
		0.10277503712679094;
	setAttr -s 3 ".wl[35].w[0:2]"  0.00063395641092507768 0.90136992666670324 
		0.097996116922371673;
	setAttr -s 3 ".wl[36].w[0:2]"  0.0005666359672582582 0.90857149254576308 
		0.090861871486978607;
	setAttr -s 3 ".wl[37].w[0:2]"  0.00048844487716997174 0.91750233585388574 
		0.082009219268944292;
	setAttr -s 3 ".wl[38].w[0:2]"  0.0004090562912192329 0.92729393830103901 
		0.072297005407741727;
	setAttr -s 3 ".wl[39].w[0:2]"  0.00033699217372732678 0.93693288275279196 
		0.062730125073480789;
	setAttr -s 3 ".wl[40].w[0:2]"  0.00089226376208325232 0.99430192353583502 
		0.0048058127020817595;
	setAttr -s 3 ".wl[41].w[0:2]"  0.00075565651544057266 0.99514757741009763 
		0.004096766074461842;
	setAttr -s 3 ".wl[42].w[0:2]"  0.00067865705044356354 0.99562742835445184 
		0.0036939145951045888;
	setAttr -s 3 ".wl[43].w[0:2]"  0.00066090402300898244 0.99573840907810429 
		0.0036006868988867741;
	setAttr -s 3 ".wl[44].w[0:2]"  0.00070207123134447837 0.9954812588408849 
		0.0038166699277706368;
	setAttr -s 3 ".wl[45].w[0:2]"  0.00080277043882013362 0.99485512906750206 
		0.0043421004936777243;
	setAttr -s 3 ".wl[46].w[0:2]"  0.00096253822197827125 0.99386953980487969 
		0.0051679219731421188;
	setAttr -s 3 ".wl[47].w[0:2]"  0.0011760009926627872 0.99256626724951935 
		0.0062577317578178925;
	setAttr -s 3 ".wl[48].w[0:2]"  0.0014293165746443858 0.99103768615754773 
		0.0075329972678079265;
	setAttr -s 3 ".wl[49].w[0:2]"  0.0016989371332435299 0.98942996679827122 
		0.0088710960684853183;
	setAttr -s 3 ".wl[50].w[0:2]"  0.0019537191962754495 0.98792726702114775 
		0.010119013782576821;
	setAttr -s 3 ".wl[51].w[0:2]"  0.0021600103282137131 0.98672143326885586 
		0.011118556402930446;
	setAttr -s 3 ".wl[52].w[0:2]"  0.0022882595006128228 0.98597640374378515 
		0.011735336755602017;
	setAttr -s 3 ".wl[53].w[0:2]"  0.0023192443487193666 0.9857969198457962 
		0.011883835805484419;
	setAttr -s 3 ".wl[54].w[0:2]"  0.0022482334917226896 0.98620855377204097 
		0.011543212736236326;
	setAttr -s 3 ".wl[55].w[0:2]"  0.0020860207756652977 0.9871528490517486 
		0.010761130172586035;
	setAttr -s 3 ".wl[56].w[0:2]"  0.0018565723789303234 0.9884984322436331 
		0.0096449953774364883;
	setAttr -s 3 ".wl[57].w[0:2]"  0.0015918755201571226 0.99006611693114199 
		0.0083420075487009512;
	setAttr -s 3 ".wl[58].w[0:2]"  0.0013253338484425828 0.99166291747356405 
		0.0070117486779934703;
	setAttr -s 3 ".wl[59].w[0:2]"  0.0010855437149474589 0.99311675119435583 
		0.0057977050906967299;
	setAttr -s 3 ".wl[60].w[0:2]"  0.0041199709826661868 0.99488656838114342 
		0.00099346063619048337;
	setAttr -s 3 ".wl[61].w[0:2]"  0.0035088126500614444 0.995649669069117 
		0.00084151828082154622;
	setAttr -s 3 ".wl[62].w[0:2]"  0.0031619830269728555 0.99608215953060786 
		0.00075585744241913255;
	setAttr -s 3 ".wl[63].w[0:2]"  0.0030817636078766353 0.99618213088512209 
		0.00073610550700135857;
	setAttr -s 3 ".wl[64].w[0:2]"  0.0032676353577736203 0.99595045782169178 
		0.00078190682053465874;
	setAttr -s 3 ".wl[65].w[0:2]"  0.0037201763568545541 0.99538589821587098 
		0.00089392542727446251;
	setAttr -s 3 ".wl[66].w[0:2]"  0.004432423691674652 0.99449596681101649 
		0.0010716094973088465;
	setAttr -s 3 ".wl[67].w[0:2]"  0.0053740718561636619 0.99331699095206949 
		0.0013089371917668334;
	setAttr -s 3 ".wl[68].w[0:2]"  0.0064782592615048465 0.99193126170647372 
		0.0015904790320214566;
	setAttr -s 3 ".wl[69].w[0:2]"  0.0076393215493311753 0.99047063406409563 
		0.0018900443865731726;
	setAttr -s 3 ".wl[70].w[0:2]"  0.008724270053968872 0.98910268947669988 
		0.0021730404693310924;
	setAttr -s 3 ".wl[71].w[0:2]"  0.0095946908225270182 0.9880031869431779 
		0.0024021222342950604;
	setAttr -s 3 ".wl[72].w[0:2]"  0.010132398452754163 0.98732308403607183 
		0.0025445175111740029;
	setAttr -s 3 ".wl[73].w[0:2]"  0.010261926929928944 0.98715915553113454 
		0.0025789175389366267;
	setAttr -s 3 ".wl[74].w[0:2]"  0.0099648566435020444 0.98753506498816035 
		0.0025000783683376804;
	setAttr -s 3 ".wl[75].w[0:2]"  0.0092832966358912892 0.98839673962995422 
		0.0023199637341543688;
	setAttr -s 3 ".wl[76].w[0:2]"  0.0083119199759609953 0.98962293525354439 
		0.0020651447704945832;
	setAttr -s 3 ".wl[77].w[0:2]"  0.0071799425577959248 0.99104895388715364 
		0.0017711035550504535;
	setAttr -s 3 ".wl[78].w[0:2]"  0.0060266492275373035 0.99249842946184019 
		0.0014749213106225857;
	setAttr -s 3 ".wl[79].w[0:2]"  0.0049763572430090979 0.99381526638388096 
		0.0012083763731100075;
	setAttr -s 3 ".wl[80].w[0:2]"  0.04248350523098382 0.95721078808565896 
		0.00030570668335714386;
	setAttr -s 3 ".wl[81].w[0:2]"  0.037250599671674565 0.9624898097769552 
		0.0002595905513702101;
	setAttr -s 3 ".wl[82].w[0:2]"  0.034168545918772532 0.9655979560224206 
		0.0002334980588068588;
	setAttr -s 3 ".wl[83].w[0:2]"  0.033443163156324104 0.96632936520677981 
		0.00022747163689611119;
	setAttr -s 3 ".wl[84].w[0:2]"  0.035116589350971526 0.96464197052827938 
		0.00024144012074916714;
	setAttr -s 3 ".wl[85].w[0:2]"  0.039087787919826471 0.96063669192202494 
		0.00027552015814861206;
	setAttr -s 3 ".wl[86].w[0:2]"  0.045069520511158576 0.95460113262382795 
		0.00032934686501346895;
	setAttr -s 3 ".wl[87].w[0:2]"  0.052538194295249037 0.94706097328881977 
		0.00040083241593117931;
	setAttr -s 3 ".wl[88].w[0:2]"  0.060750983998928303 0.93876392947875287 
		0.00048508652231892929;
	setAttr -s 3 ".wl[89].w[0:2]"  0.068845916539244836 0.9305799329274056 
		0.00057415053334948052;
	setAttr -s 3 ".wl[90].w[0:2]"  0.075977852101646495 0.92336435151160878 
		0.00065779638674471794;
	setAttr -s 3 ".wl[91].w[0:2]"  0.081432806245508652 0.91784200170057884 
		0.00072519205391253193;
	setAttr -s 3 ".wl[92].w[0:2]"  0.084694341560937372 0.91453870419435124 
		0.00076695424471139777;
	setAttr -s 3 ".wl[93].w[0:2]"  0.08546829742181028 0.91375467360710272 
		0.00077702897108698462;
	setAttr -s 3 ".wl[94].w[0:2]"  0.083686586748266081 0.91555948198572923 
		0.00075393126600465093;
	setAttr -s 3 ".wl[95].w[0:2]"  0.079506937289664681 0.91979201101258912 
		0.00070105169774612168;
	setAttr -s 3 ".wl[96].w[0:2]"  0.073312866473151481 0.92606117524085874 
		0.0006259582859898243;
	setAttr -s 3 ".wl[97].w[0:2]"  0.065704060295014272 0.93375708398571222 
		0.00053885571927344861;
	setAttr -s 3 ".wl[98].w[0:2]"  0.057457281998010902 0.9420921451840748 
		0.00045057281791427878;
	setAttr -s 3 ".wl[99].w[0:2]"  0.049440259765453375 0.95018914321144576 
		0.00037059702310086846;
	setAttr -s 3 ".wl[100].w[0:2]"  0.49827604920823604 0.5016581535853154 
		6.5797206448553518e-005;
	setAttr -s 3 ".wl[101].w[0:2]"  0.49812961070938433 0.50181486556408272 
		5.5523726532858652e-005;
	setAttr -s 3 ".wl[102].w[0:2]"  0.49802759865288998 0.5019226403376611 
		4.9761009448903675e-005;
	setAttr -s 3 ".wl[103].w[0:2]"  0.49800151892665373 0.50195004576284852 
		4.8435310497848373e-005;
	setAttr -s 3 ".wl[104].w[0:2]"  0.49806043477502998 0.50188805406566384 
		5.1511159306299037e-005;
	setAttr -s 3 ".wl[105].w[0:2]"  0.49818446147535245 0.5017564786772255 
		5.9059847421969604e-005;
	setAttr -s 3 ".wl[106].w[0:2]"  0.49833850581425593 0.50159038814526424 
		7.1106040479906475e-005;
	setAttr -s 3 ".wl[107].w[0:2]"  0.49849110561006155 0.5014215673497312 
		8.7327040207311628e-005;
	setAttr -s 3 ".wl[108].w[0:2]"  0.49862331144030536 0.50126993508775664 
		0.00010675347193794411;
	setAttr -s 3 ".wl[109].w[0:2]"  0.49872764504332939 0.50114472470065363 
		0.00012763025601701604;
	setAttr -s 3 ".wl[110].w[0:2]"  0.49880358868356889 0.50104887237008511 
		0.0001475389463460666;
	setAttr -s 3 ".wl[111].w[0:2]"  0.49885361546843932 0.50098260184223509 
		0.0001637826893256521;
	setAttr -s 3 ".wl[112].w[0:2]"  0.49888067184434121 0.50094539230468538 
		0.00017393585097343715;
	setAttr -s 3 ".wl[113].w[0:2]"  0.4988868047731273 0.50093680019646336 
		0.00017639503040935779;
	setAttr -s 3 ".wl[114].w[0:2]"  0.4988725242562943 0.500956713090698 
		0.0001707626530076318;
	setAttr -s 3 ".wl[115].w[0:2]"  0.49883666922648384 0.50100538671417161 
		0.00015794405934460535;
	setAttr -s 3 ".wl[116].w[0:2]"  0.49877672605122081 0.50108334632989993 
		0.00013992761887921548;
	setAttr -s 3 ".wl[117].w[0:2]"  0.49868971855749494 0.50119096502146743 
		0.00011931642103756306;
	setAttr -s 3 ".wl[118].w[0:2]"  0.49857397954748717 0.50132726385596615 
		9.8756596546670827e-005;
	setAttr -s 3 ".wl[119].w[0:2]"  0.49843223882744803 0.50148732511135119 
		8.0436061200796994e-005;
	setAttr -s 3 ".wl[120].w[0:2]"  0.94885132921691795 0.051088645037580135 
		6.0025745501911345e-005;
	setAttr -s 3 ".wl[121].w[0:2]"  0.95495145240001922 0.044997613855629802 
		5.0933744351039907e-005;
	setAttr -s 3 ".wl[122].w[0:2]"  0.9585650163141356 0.041389189280269405 
		4.5794405595047134e-005;
	setAttr -s 3 ".wl[123].w[0:2]"  0.95941781700128292 0.040537575083477419 
		4.4607915239651565e-005;
	setAttr -s 3 ".wl[124].w[0:2]"  0.95745179060091568 0.042500851055313947 
		4.7358343770397372e-005;
	setAttr -s 3 ".wl[125].w[0:2]"  0.95280485211047106 0.047141074799090937 
		5.4073090438083091e-005;
	setAttr -s 3 ".wl[126].w[0:2]"  0.94585241012929044 0.054082899101212507 
		6.4690769496891613e-005;
	setAttr -s 3 ".wl[127].w[0:2]"  0.9372462210415482 0.062674964185202769 
		7.8814773249009563e-005;
	setAttr -s 3 ".wl[128].w[0:2]"  0.92787136960951921 0.072033135209718838 
		9.5495180761868452e-005;
	setAttr -s 3 ".wl[129].w[0:2]"  0.91871575874785727 0.081171073709557007 
		0.0001131675425856947;
	setAttr -s 3 ".wl[130].w[0:2]"  0.91071466817986968 0.089155529600617428 
		0.0001298022195129183;
	setAttr -s 3 ".wl[131].w[0:2]"  0.90463412039909308 0.095222647863732454 
		0.00014323173717451865;
	setAttr -s 3 ".wl[132].w[0:2]"  0.90101415709032673 0.09883427754960547 
		0.00015156536006777986;
	setAttr -s 3 ".wl[133].w[0:2]"  0.90015682490432969 0.099689597959368964 
		0.00015357713630145432;
	setAttr -s 3 ".wl[134].w[0:2]"  0.9021314344014425 0.097719599948308686 
		0.00014896565024888467;
	setAttr -s 3 ".wl[135].w[0:2]"  0.90677707558877496 0.093084505702167308 
		0.00013841870905774962;
	setAttr -s 3 ".wl[136].w[0:2]"  0.91369749867007166 0.086179035050109945 
		0.00012346627981840356;
	setAttr -s 3 ".wl[137].w[0:2]"  0.92225967322144353 0.077634167441967175 
		0.00010615933658934195;
	setAttr -s 3 ".wl[138].w[0:2]"  0.93162037019576593 0.068290971959331995 
		8.8657844902079684e-005;
	setAttr -s 3 ".wl[139].w[0:2]"  0.94080630810973598 0.059120854172548302 
		7.2837717715609852e-005;
	setAttr -s 3 ".wl[140].w[0:2]"  0.99533811846251197 0.0046279168455258786 
		3.3964691962051455e-005;
	setAttr -s 3 ".wl[141].w[0:2]"  0.9960277308950698 0.003943623225978121 
		2.8645878952120858e-005;
	setAttr -s 3 ".wl[142].w[0:2]"  0.99641929934185403 0.0035550375986611437 
		2.5663059484883011e-005;
	setAttr -s 3 ".wl[143].w[0:2]"  0.99650989039047244 0.0034651326508449497 
		2.497695868262723e-005;
	setAttr -s 3 ".wl[144].w[0:2]"  0.99630000102296334 0.0036734300923979271 
		2.6568884638649237e-005;
	setAttr -s 3 ".wl[145].w[0:2]"  0.99578918135431127 0.0041803421831005209 
		3.0476462588276598e-005;
	setAttr -s 3 ".wl[146].w[0:2]"  0.9949857307089558 0.0049775556880752893 
		3.6713602968959124e-005;
	setAttr -s 3 ".wl[147].w[0:2]"  0.99392437490466146 0.0060305114619337444 
		4.5113633404647871e-005;
	setAttr -s 3 ".wl[148].w[0:2]"  0.99268092112542283 0.0072639053635981977 
		5.5173510978941168e-005;
	setAttr -s 3 ".wl[149].w[0:2]"  0.99137453822785782 0.0085594794395009392 
		6.59823326411589e-005;
	setAttr -s 3 ".wl[150].w[0:2]"  0.99015470497278013 0.0097690085631510579 
		7.6286464068844978e-005;
	setAttr -s 3 ".wl[151].w[0:2]"  0.98917663727533534 0.010738672203574237 
		8.4690521090373031e-005;
	setAttr -s 3 ".wl[152].w[0:2]"  0.98857266141316769 0.011337396769216199 
		8.9941817616148557e-005;
	setAttr -s 3 ".wl[153].w[0:2]"  0.98842719463582218 0.011481591843915567 
		9.1213520262168994e-005;
	setAttr -s 3 ".wl[154].w[0:2]"  0.98876083326757791 0.011150865973605142 
		8.8300758817007661e-005;
	setAttr -s 3 ".wl[155].w[0:2]"  0.98952648757728701 0.010391842281629598 
		8.1670141083404707e-005;
	setAttr -s 3 ".wl[156].w[0:2]"  0.99061822330576044 0.0093094291505171484 
		7.2347543722416311e-005;
	setAttr -s 3 ".wl[157].w[0:2]"  0.99189128653122671 0.0080470351990363197 
		6.1678269737035728e-005;
	setAttr -s 3 ".wl[158].w[0:2]"  0.99318935687674226 0.0067596106190372035 
		5.1032504220583616e-005;
	setAttr -s 3 ".wl[159].w[0:2]"  0.99437253599242847 0.0055859189452117219 
		4.1545062359775163e-005;
	setAttr -s 3 ".wl[160].w[0:2]"  0.99900873502696841 0.00097130083379355929 
		1.9964139238079892e-005;
	setAttr -s 3 ".wl[161].w[0:2]"  0.99916098965004252 0.00082218545808186326 
		1.6824891875547225e-005;
	setAttr -s 3 ".wl[162].w[0:2]"  0.99924672928283831 0.00073820443509553567 
		1.5066282066256419e-005;
	setAttr -s 3 ".wl[163].w[0:2]"  0.99926648931567563 0.0007188487161392974 
		1.4661968185074653e-005;
	setAttr -s 3 ".wl[164].w[0:2]"  0.99922066343702587 0.00076373637156945391 
		1.5600191404707062e-005;
	setAttr -s 3 ".wl[165].w[0:2]"  0.99910849956781456 0.00087359558463736262 
		1.7904847548087695e-005;
	setAttr -s 3 ".wl[166].w[0:2]"  0.99893034079105258 0.0010480709619155293 
		2.1588247031973315e-005;
	setAttr -s 3 ".wl[167].w[0:2]"  0.99869192099310178 0.0012815210929895812 
		2.6557913908497237e-005;
	setAttr -s 3 ".wl[168].w[0:2]"  0.99840841905812516 0.0015590584027733968 
		3.2522539101461095e-005;
	setAttr -s 3 ".wl[169].w[0:2]"  0.99810599294745816 0.0018550607644826349 
		3.8946288059185388e-005;
	setAttr -s 3 ".wl[170].w[0:2]"  0.99781957388458431 0.0021353420527105288 
		4.5084062705227808e-005;
	setAttr -s 3 ".wl[171].w[0:2]"  0.99758721635969172 0.0023626838391270109 
		5.0099801181367894e-005;
	setAttr -s 3 ".wl[172].w[0:2]"  0.99744255970591134 0.0025042020496570672 
		5.3238244431689937e-005;
	setAttr -s 3 ".wl[173].w[0:2]"  0.99740758764314097 0.0025384135822855165 
		5.3998774573480307e-005;
	setAttr -s 3 ".wl[174].w[0:2]"  0.99748772302342348 0.0024600198677204557 
		5.2257108856040729e-005;
	setAttr -s 3 ".wl[175].w[0:2]"  0.99767060125999341 0.0022811025660552198 
		4.829617395146471e-005;
	setAttr -s 3 ".wl[176].w[0:2]"  0.99792885643481777 0.0020284073434922788 
		4.2736221689840021e-005;
	setAttr -s 3 ".wl[177].w[0:2]"  0.99822616427821864 0.0017374491935675206 
		3.638652821386278e-005;
	setAttr -s 3 ".wl[178].w[0:2]"  0.99852486756391312 0.0014450668219985648 
		3.006561408832635e-005;
	setAttr -s 3 ".wl[179].w[0:2]"  0.9987930078305175 0.0011825467404895248 
		2.4445428993028615e-005;
	setAttr -s 3 ".wl[180].w[0:2]"  0.9996746660474749 0.00031287440716155787 
		1.2459545363556209e-005;
	setAttr -s 3 ".wl[181].w[0:2]"  0.99972527696433577 0.00026422537812069598 
		1.0497657543533046e-005;
	setAttr -s 3 ".wl[182].w[0:2]"  0.99975369652007096 0.0002369044975134906 
		9.3989824155925093e-006;
	setAttr -s 3 ".wl[183].w[0:2]"  0.99976023756868615 0.00023061600077744213 
		9.1464305364785711e-006;
	setAttr -s 3 ".wl[184].w[0:2]"  0.99974506306406274 0.0002452044279526893 
		9.7325079845327335e-006;
	setAttr -s 3 ".wl[185].w[0:2]"  0.99970784908033938 0.0002809784342701708 
		1.1172485390400148e-005;
	setAttr -s 3 ".wl[186].w[0:2]"  0.99964853876153748 0.0003379863724593435 
		1.347486600320907e-005;
	setAttr -s 3 ".wl[187].w[0:2]"  0.99956881093391425 0.00041460605967758729 
		1.6583006408178808e-005;
	setAttr -s 3 ".wl[188].w[0:2]"  0.99947351992837086 0.00050616414291602269 
		2.0315928713093636e-005;
	setAttr -s 3 ".wl[189].w[0:2]"  0.9993713297219754 0.00060433118303091762 
		2.4339094993659286e-005;
	setAttr -s 3 ".wl[190].w[0:2]"  0.99927407112691458 0.00069774303274168341 
		2.8185840343674636e-005;
	setAttr -s 3 ".wl[191].w[0:2]"  0.99919484790340907 0.00077382085330904109 
		3.1331243281914689e-005;
	setAttr -s 3 ".wl[192].w[0:2]"  0.99914538667373842 0.00082131310978797282 
		3.3300216473584639e-005;
	setAttr -s 3 ".wl[193].w[0:2]"  0.99913341321794547 0.00083280933462646911 
		3.3777447428032109e-005;
	setAttr -s 3 ".wl[194].w[0:2]"  0.99916084030293772 0.000806475086289461 
		3.2684610772836225e-005;
	setAttr -s 3 ".wl[195].w[0:2]"  0.99922331061859959 0.00074648939535379888 
		3.0199986046642215e-005;
	setAttr -s 3 ".wl[196].w[0:2]"  0.99931123281217371 0.00066205311931275337 
		2.6714068513582058e-005;
	setAttr -s 3 ".wl[197].w[0:2]"  0.99941199966882099 0.00056526475411378487 
		2.2735577065152087e-005;
	setAttr -s 3 ".wl[198].w[0:2]"  0.99951272211983078 0.00046849992477255236 
		1.8777955396534143e-005;
	setAttr -s 3 ".wl[199].w[0:2]"  0.99960266222651839 0.00038207620153751955 
		1.5261571944126813e-005;
	setAttr -s 3 ".wl[200].w[0:2]"  0.99986280461951005 0.00012902688096648294 
		8.1684995234306458e-006;
	setAttr -s 3 ".wl[201].w[0:2]"  0.99988427119866763 0.00010884748190297346 
		6.8813194294166468e-006;
	setAttr -s 3 ".wl[202].w[0:2]"  0.99989630967484489 9.752970951452128e-005 
		6.1606156406093851e-006;
	setAttr -s 3 ".wl[203].w[0:2]"  0.99989907877735607 9.4926261190538279e-005 
		5.9949614534409052e-006;
	setAttr -s 3 ".wl[204].w[0:2]"  0.99989265379658232 0.00010096681333352532 
		6.3793900842382487e-006;
	setAttr -s 3 ".wl[205].w[0:2]"  0.99987688310504674 0.00011579285855537562 
		7.3240363978881753e-006;
	setAttr -s 3 ".wl[206].w[0:2]"  0.99985170952989777 0.00013945571549556121 
		8.834754606704875e-006;
	setAttr -s 3 ".wl[207].w[0:2]"  0.99981780083916771 0.00017132439604568308 
		1.0874764786527422e-005;
	setAttr -s 3 ".wl[208].w[0:2]"  0.99977717813827349 0.00020949618391426746 
		1.3325677812191935e-005;
	setAttr -s 3 ".wl[209].w[0:2]"  0.99973350925595228 0.00025052264245943779 
		1.596810158831126e-005;
	setAttr -s 3 ".wl[210].w[0:2]"  0.99969185447774822 0.00028965000728112836 
		1.8495514970686436e-005;
	setAttr -s 3 ".wl[211].w[0:2]"  0.99965786093099773 0.00032157634409221437 
		2.0562724910042171e-005;
	setAttr -s 3 ".wl[212].w[0:2]"  0.99963661037442708 0.00034153259549158391 
		2.1857030081274864e-005;
	setAttr -s 3 ".wl[213].w[0:2]"  0.99963146299978367 0.0003463662322133059 
		2.2170768003091823e-005;
	setAttr -s 3 ".wl[214].w[0:2]"  0.99964325210137683 0.00033529555863916248 
		2.1452339983919693e-005;
	setAttr -s 3 ".wl[215].w[0:2]"  0.99967008019775871 0.00031010061838799603 
		1.9819183853261904e-005;
	setAttr -s 3 ".wl[216].w[0:2]"  0.99970778074914468 0.00027469082559945611 
		1.7528425255846991e-005;
	setAttr -s 3 ".wl[217].w[0:2]"  0.99975090117225918 0.00023418403357905755 
		1.4914794161755394e-005;
	setAttr -s 3 ".wl[218].w[0:2]"  0.99979390202381957 0.00019378218643959836 
		1.231578974090384e-005;
	setAttr -s 3 ".wl[219].w[0:2]"  0.99983220724146527 0.00015778538942645221 
		1.0007369108272214e-005;
	setAttr -s 3 ".wl[220].w[0:2]"  1.0934004625598579e-007 0.49999994532997688 
		0.49999994532997688;
	setAttr -s 3 ".wl[221].w[0:2]"  0.9999998526349142 1.3872679098408423e-007 
		8.6382948802364936e-009;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" -4.9960036108132034e-016 2.7733391199176191e-032 -0.99999999999999978 0
		 -0.99999999999999978 5.5511151231257815e-017 6.6613381477509363e-016 0 2.7733391199176191e-032 0.99999999999999978 5.5511151231257815e-017 -0
		 4.0207926154512226 0.035825267124551266 2.3386028346681922 1;
	setAttr ".pm[1]" -type "matrix" -4.9960036108132034e-016 2.7733391199176191e-032 -0.99999999999999978 0
		 -0.99999999999999978 5.5511151231257815e-017 6.6613381477509363e-016 0 2.7733391199176191e-032 0.99999999999999978 5.5511151231257815e-017 -0
		 2.0207926154512243 0.035825267124551599 2.3386028346681931 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999978 1.0547118733938983e-015 5.5511151231257722e-017 -0
		 -1.1657341758564138e-015 0.99999999999999978 -5.5511151231257876e-017 0 -5.5511151231257839e-017 5.5511151231257759e-017 0.99999999999999978 -0
		 -2.3386028346681913 -0.020792615451225474 0.035825267124551911 1;
	setAttr ".gm" -type "matrix" 0.23639804855968832 0 0 0 0 2.0081872327743553 0 0 0 0 0.23639804855968832 0
		 2.3244395824225301 2.0083405160044112 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "CBCCB439-4DAC-8930-DC16-AD98527CBD06";
createNode objectSet -n "skinCluster1Set";
	rename -uid "F6B6E0B7-4A39-C059-E960-C6BA21DDAAAD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "3EFB31D3-43D7-6172-C5C1-4C93331565F5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "CD3D165A-45C7-0799-EEE6-5AB2B99F4AF0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "7ED10012-4CA6-1CEF-534F-018D26130C8E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "9DDBD6A9-448B-A2A2-245C-DFA2A819AF53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "8B614E14-45F0-8704-2086-58BCA34D5618";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "B8392025-494B-6BF3-C5AE-D8A7CDB87840";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3386028346681957 4.0207926154512226
		 -0.035825267124551495 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49999999999999983 -0.50000000000000011 -0.50000000000000011 0.49999999999999989 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9999999999999987 -3.3306690738754686e-016
		 -8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2 -4.4408920985006262e-016
		 1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.50000000000000011 0.49999999999999989 0.49999999999999983 0.50000000000000011 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode displayLayer -n "Joints";
	rename -uid "7D7AA060-406D-62CC-1A22-57AC6FFB0FC9";
	setAttr ".v" no;
	setAttr ".hpb" yes;
	setAttr ".do" 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "DA523032-4988-E0BD-5F6A-02874AF443C9";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -382.1428419578649 -317.85713022663538 ;
	setAttr ".tgi[0].vh" -type "double2" 171.42856461661236 222.61903877296186 ;
	setAttr -s 9 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -260.47616577148437;
	setAttr ".tgi[0].ni[0].y" 183.09523010253906;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -261.66665649414063;
	setAttr ".tgi[0].ni[1].y" 20;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 301.42855834960937;
	setAttr ".tgi[0].ni[2].y" -224.28572082519531;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 301.42855834960937;
	setAttr ".tgi[0].ni[3].y" -235.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 844.28570556640625;
	setAttr ".tgi[0].ni[4].y" -138.57142639160156;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[5].y" -227.14285278320312;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[6].y" -218.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 524.28570556640625;
	setAttr ".tgi[0].ni[7].y" -131.42857360839844;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 878.5714111328125;
	setAttr ".tgi[0].ni[8].y" -202.85714721679687;
	setAttr ".tgi[0].ni[8].nvs" 1923;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Hip_FK_CTRL.r" "Hip_FK.r";
connectAttr "Joints.di" "Hip_FK.do";
connectAttr "Hip_FK.s" "Knee_FK.is";
connectAttr "Knee_FK_CTRL.r" "Knee_FK.r";
connectAttr "Knee_FK.s" "Heel_FK.is";
connectAttr "Heel_FK_CTRL.r" "Heel_FK.r";
connectAttr "skinCluster1.og[0]" "pCylinderShape1.i";
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "unitConversion3.o" "Hip_FK1.r";
connectAttr "Joints.di" "Hip_FK1.do";
connectAttr "Hip_FK1.s" "Knee_IK.is";
connectAttr "unitConversion7.o" "Knee_IK.r";
connectAttr "Knee_IK.s" "Heel_IK.is";
connectAttr "Hip_FK.jo" "Hip_FK_GRP.r";
connectAttr "transformGeometry1.og" "Hip_FK_CTRLShape.cr";
connectAttr "Knee_FK.jo" "Knee_FK_GRP.r";
connectAttr "transformGeometry2.og" "Knee_FK_CTRLShape.cr";
connectAttr "Heel_FK.jo" "Heel_FK_GRP.r";
connectAttr "transformGeometry3.og" "Heel_FK_CTRLShape.cr";
connectAttr "makeNurbCircle7.oc" "nurbsCircleShape2.cr";
connectAttr "Joints.di" "joint1.do";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.tx" "effector1.tx";
connectAttr "joint3.ty" "effector1.ty";
connectAttr "joint3.tz" "effector1.tz";
connectAttr "transformGeometry5.og" "nurbsCircleShape1.cr";
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "makeNurbCircle2.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry4.ig";
connectAttr "unitConversion8.o" "Hip.c1";
connectAttr "unitConversion2.o" "Hip.c2";
connectAttr "nurbsCircle2.IKFKswitch" "Hip.b";
connectAttr "unitConversion6.o" "Knee.c2";
connectAttr "unitConversion5.o" "Knee.c1";
connectAttr "nurbsCircle2.IKFKswitch" "Knee.b";
connectAttr "pCylinderShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Knee_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Hip_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "polyCylinder1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "Heel_FK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "pCylinder1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "defaultRenderLayer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Hip_FK1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "Knee_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "Heel_IK.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "IK_Hip_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "FK_Hip_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "makeNurbCircle2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Hip_FK_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Hip_FK_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "Hip_FK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "transformGeometry1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "makeNurbCircle3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Knee_FK_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Knee_FK_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "Knee_FK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "transformGeometry2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "makeNurbCircle4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Heel_FK_CTRLShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Heel_FK_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "Heel_FK_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "transformGeometry3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "makeNurbCircle5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "joint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "joint2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "joint3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "transformGeometry4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "Knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "Hip_FK.r" "unitConversion1.i";
connectAttr "joint1.r" "unitConversion2.i";
connectAttr "Hip.op" "unitConversion3.i";
connectAttr "Knee_FK.r" "unitConversion5.i";
connectAttr "joint2.r" "unitConversion6.i";
connectAttr "Knee.op" "unitConversion7.i";
connectAttr "Hip_FK_CTRL.r" "unitConversion8.i";
connectAttr "makeNurbCircle6.oc" "transformGeometry5.ig";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Hip_FK1.wm" "skinCluster1.ma[0]";
connectAttr "Knee_IK.wm" "skinCluster1.ma[1]";
connectAttr "Heel_IK.wm" "skinCluster1.ma[2]";
connectAttr "Hip_FK1.liw" "skinCluster1.lw[0]";
connectAttr "Knee_IK.liw" "skinCluster1.lw[1]";
connectAttr "Heel_IK.liw" "skinCluster1.lw[2]";
connectAttr "Hip_FK1.obcc" "skinCluster1.ifcl[0]";
connectAttr "Knee_IK.obcc" "skinCluster1.ifcl[1]";
connectAttr "Heel_IK.obcc" "skinCluster1.ifcl[2]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Hip_FK1.msg" "bindPose1.m[0]";
connectAttr "Knee_IK.msg" "bindPose1.m[1]";
connectAttr "Heel_IK.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "Hip_FK1.bps" "bindPose1.wm[0]";
connectAttr "Knee_IK.bps" "bindPose1.wm[1]";
connectAttr "Heel_IK.bps" "bindPose1.wm[2]";
connectAttr "layerManager.dli[1]" "Joints.id";
connectAttr "Hip.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Knee.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "unitConversion1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "unitConversion2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "unitConversion3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "unitConversion5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "unitConversion6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "unitConversion7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "unitConversion8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Hip.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Knee.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of FKIKRIG.ma
