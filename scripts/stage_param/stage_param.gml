//
function stage_param(){

global.ds_stage_param = ds_grid_create(30, 10);
global.ds_stage_type_param = ds_grid_create(10, 10);

var _ds = global.ds_stage_param;
var _ds2 = global.ds_stage_type_param;

#region nonstage
_ds[# STAGENAME.BOOT, STAGEPARAM.STAGEID] = r_boot;
_ds[# STAGENAME.BOOT, STAGEPARAM.NEXTSTAGE] = r_title;
_ds[# STAGENAME.BOOT, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.BOOT, STAGEPARAM.STAGETYPE] = STAGETYPE.NONSTAGE;

_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGEID] = r_title;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.NEXTSTAGE] = FIRST_STAGE;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGETYPE] = STAGETYPE.NONSTAGE;

_ds[# STAGENAME.TEST, STAGEPARAM.STAGEID] = r_test;
_ds[# STAGENAME.TEST, STAGEPARAM.NEXTSTAGE] = r_stage1;
_ds[# STAGENAME.TEST, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.TEST, STAGEPARAM.STAGETYPE] = STAGETYPE.TEST;
#endregion

#region tutorial
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGEID] = r_tutorial;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.NEXTSTAGE] = r_stage1;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.TUTORIAL1, STAGEPARAM.STAGETYPE] = STAGETYPE.TUTORIAL;

_ds[# STAGENAME.TUTORIAL2, STAGEPARAM.STAGEID] = r_tutorial2;
_ds[# STAGENAME.TUTORIAL2, STAGEPARAM.NEXTSTAGE] = r_stage11;
_ds[# STAGENAME.TUTORIAL2, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.TUTORIAL2, STAGEPARAM.STAGETYPE] = STAGETYPE.TUTORIAL;

_ds[# STAGENAME.TUTORIAL3, STAGEPARAM.STAGEID] = r_tutorial3;
_ds[# STAGENAME.TUTORIAL3, STAGEPARAM.NEXTSTAGE] = r_stage21;
_ds[# STAGENAME.TUTORIAL3, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.TUTORIAL3, STAGEPARAM.STAGETYPE] = STAGETYPE.TUTORIAL;
#endregion

#region hellcave
_ds[# STAGENAME.HELLCAVE1, STAGEPARAM.STAGEID] = r_stage1;
_ds[# STAGENAME.HELLCAVE1, STAGEPARAM.NEXTSTAGE] = r_stage2;
_ds[# STAGENAME.HELLCAVE1, STAGEPARAM.STAGENUM] = 1;
_ds[# STAGENAME.HELLCAVE1, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLCAVE;

_ds[# STAGENAME.HELLCAVE2, STAGEPARAM.STAGEID] = r_stage2;
_ds[# STAGENAME.HELLCAVE2, STAGEPARAM.NEXTSTAGE] = r_stage3;
_ds[# STAGENAME.HELLCAVE2, STAGEPARAM.STAGENUM] = 2;
_ds[# STAGENAME.HELLCAVE2, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLCAVE;

_ds[# STAGENAME.HELLCAVE3, STAGEPARAM.STAGEID] = r_stage3;
_ds[# STAGENAME.HELLCAVE3, STAGEPARAM.NEXTSTAGE] = r_stage4;
_ds[# STAGENAME.HELLCAVE3, STAGEPARAM.STAGENUM] = 3;
_ds[# STAGENAME.HELLCAVE3, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLCAVE;

_ds[# STAGENAME.HELLCAVE4, STAGEPARAM.STAGEID] = r_stage4;
_ds[# STAGENAME.HELLCAVE4, STAGEPARAM.NEXTSTAGE] = r_stage5;
_ds[# STAGENAME.HELLCAVE4, STAGEPARAM.STAGENUM] = 4;
_ds[# STAGENAME.HELLCAVE4, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLCAVE;

_ds[# STAGENAME.HELLCAVE5, STAGEPARAM.STAGEID] = r_stage5;
_ds[# STAGENAME.HELLCAVE5, STAGEPARAM.NEXTSTAGE] = r_stage6;
_ds[# STAGENAME.HELLCAVE5, STAGEPARAM.STAGENUM] = 5;
_ds[# STAGENAME.HELLCAVE5, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLCAVE;

#endregion

#region hellforest
_ds[# STAGENAME.HELLFOREST1, STAGEPARAM.STAGEID] = r_stage6;
_ds[# STAGENAME.HELLFOREST1, STAGEPARAM.NEXTSTAGE] = r_stage7;
_ds[# STAGENAME.HELLFOREST1, STAGEPARAM.STAGENUM] = 1;
_ds[# STAGENAME.HELLFOREST1, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLFOREST;

_ds[# STAGENAME.HELLFOREST2, STAGEPARAM.STAGEID] = r_stage7;
_ds[# STAGENAME.HELLFOREST2, STAGEPARAM.NEXTSTAGE] = r_stage8;
_ds[# STAGENAME.HELLFOREST2, STAGEPARAM.STAGENUM] = 2;
_ds[# STAGENAME.HELLFOREST2, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLFOREST;

_ds[# STAGENAME.HELLFOREST3, STAGEPARAM.STAGEID] = r_stage8;
_ds[# STAGENAME.HELLFOREST3, STAGEPARAM.NEXTSTAGE] = r_stage9;
_ds[# STAGENAME.HELLFOREST3, STAGEPARAM.STAGENUM] = 3;
_ds[# STAGENAME.HELLFOREST3, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLFOREST;

_ds[# STAGENAME.HELLFOREST4, STAGEPARAM.STAGEID] = r_stage9;
_ds[# STAGENAME.HELLFOREST4, STAGEPARAM.NEXTSTAGE] = r_stage10;
_ds[# STAGENAME.HELLFOREST4, STAGEPARAM.STAGENUM] = 4;
_ds[# STAGENAME.HELLFOREST4, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLFOREST;

_ds[# STAGENAME.HELLFOREST5, STAGEPARAM.STAGEID] = r_stage10;
_ds[# STAGENAME.HELLFOREST5, STAGEPARAM.NEXTSTAGE] = r_tutorial2;
_ds[# STAGENAME.HELLFOREST5, STAGEPARAM.STAGENUM] = 5;
_ds[# STAGENAME.HELLFOREST5, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLFOREST;
#endregion

#region helllake
_ds[# STAGENAME.HELLLAKE1, STAGEPARAM.STAGEID] = r_stage11;
_ds[# STAGENAME.HELLLAKE1, STAGEPARAM.NEXTSTAGE] = r_stage12;
_ds[# STAGENAME.HELLLAKE1, STAGEPARAM.STAGENUM] = 1;
_ds[# STAGENAME.HELLLAKE1, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLLAKE;

_ds[# STAGENAME.HELLLAKE2, STAGEPARAM.STAGEID] = r_stage12;
_ds[# STAGENAME.HELLLAKE2, STAGEPARAM.NEXTSTAGE] = r_stage13;
_ds[# STAGENAME.HELLLAKE2, STAGEPARAM.STAGENUM] = 2;
_ds[# STAGENAME.HELLLAKE2, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLLAKE;

_ds[# STAGENAME.HELLLAKE3, STAGEPARAM.STAGEID] = r_stage13;
_ds[# STAGENAME.HELLLAKE3, STAGEPARAM.NEXTSTAGE] = r_stage14;
_ds[# STAGENAME.HELLLAKE3, STAGEPARAM.STAGENUM] = 3;
_ds[# STAGENAME.HELLLAKE3, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLLAKE;

_ds[# STAGENAME.HELLLAKE4, STAGEPARAM.STAGEID] = r_stage14;
_ds[# STAGENAME.HELLLAKE4, STAGEPARAM.NEXTSTAGE] = r_stage15;
_ds[# STAGENAME.HELLLAKE4, STAGEPARAM.STAGENUM] = 4;
_ds[# STAGENAME.HELLLAKE4, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLLAKE;

_ds[# STAGENAME.HELLLAKE5, STAGEPARAM.STAGEID] = r_stage15;
_ds[# STAGENAME.HELLLAKE5, STAGEPARAM.NEXTSTAGE] = r_stage16;
_ds[# STAGENAME.HELLLAKE5, STAGEPARAM.STAGENUM] = 5;
_ds[# STAGENAME.HELLLAKE5, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLLAKE;
#endregion

#region hellmountain
_ds[# STAGENAME.HELLMOUNTAIN1, STAGEPARAM.STAGEID] = r_stage16;
_ds[# STAGENAME.HELLMOUNTAIN1, STAGEPARAM.NEXTSTAGE] = r_stage17;
_ds[# STAGENAME.HELLMOUNTAIN1, STAGEPARAM.STAGENUM] = 1;
_ds[# STAGENAME.HELLMOUNTAIN1, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLMOUNTAIN;

_ds[# STAGENAME.HELLMOUNTAIN2, STAGEPARAM.STAGEID] = r_stage17;
_ds[# STAGENAME.HELLMOUNTAIN2, STAGEPARAM.NEXTSTAGE] = r_stage18;
_ds[# STAGENAME.HELLMOUNTAIN2, STAGEPARAM.STAGENUM] = 2;
_ds[# STAGENAME.HELLMOUNTAIN2, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLMOUNTAIN;

_ds[# STAGENAME.HELLMOUNTAIN3, STAGEPARAM.STAGEID] = r_stage18;
_ds[# STAGENAME.HELLMOUNTAIN3, STAGEPARAM.NEXTSTAGE] = r_stage19;
_ds[# STAGENAME.HELLMOUNTAIN3, STAGEPARAM.STAGENUM] = 3;
_ds[# STAGENAME.HELLMOUNTAIN3, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLMOUNTAIN;

_ds[# STAGENAME.HELLMOUNTAIN4, STAGEPARAM.STAGEID] = r_stage19;
_ds[# STAGENAME.HELLMOUNTAIN4, STAGEPARAM.NEXTSTAGE] = r_stage20;
_ds[# STAGENAME.HELLMOUNTAIN4, STAGEPARAM.STAGENUM] = 4;
_ds[# STAGENAME.HELLMOUNTAIN4, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLMOUNTAIN;

_ds[# STAGENAME.HELLMOUNTAIN5, STAGEPARAM.STAGEID] = r_stage20;
_ds[# STAGENAME.HELLMOUNTAIN5, STAGEPARAM.NEXTSTAGE] = r_stage21;
_ds[# STAGENAME.HELLMOUNTAIN5, STAGEPARAM.STAGENUM] = 5;
_ds[# STAGENAME.HELLMOUNTAIN5, STAGEPARAM.STAGETYPE] = STAGETYPE.HELLMOUNTAIN;
#endregion

#region altar 
_ds[# STAGENAME.ALTAR1, STAGEPARAM.STAGEID] = r_stage21;
_ds[# STAGENAME.ALTAR1, STAGEPARAM.NEXTSTAGE] = r_stage1;
_ds[# STAGENAME.ALTAR1, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.ALTAR1, STAGEPARAM.STAGETYPE] = STAGETYPE.ALTAR;

_ds[# STAGENAME.VOID, STAGEPARAM.STAGEID] = r_void;
_ds[# STAGENAME.VOID, STAGEPARAM.NEXTSTAGE] = r_stage1;
_ds[# STAGENAME.VOID, STAGEPARAM.STAGENUM] = 0;
_ds[# STAGENAME.VOID, STAGEPARAM.STAGETYPE] = STAGETYPE.VOID;
#endregion 

#region stagetype
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.NAMEEN] = ":p";
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.NAMEJP] = ":p";
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.BGM] = a_bgmWind03;
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.STAGECOLOR] = 5509656;
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.NONSTAGE, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.TEST, STAGEPARAM.NAMEEN] = "TEST@ROOM";
_ds2[# STAGETYPE.TEST, STAGEPARAM.NAMEJP] = "テスト@ルーム";
_ds2[# STAGETYPE.TEST, STAGEPARAM.BGM] = a_bgmOnFire;
_ds2[# STAGETYPE.TEST, STAGEPARAM.STAGECOLOR] = 5509656;
_ds2[# STAGETYPE.TEST, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.TEST, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.NAMEEN] = "HELL@CAVE";
_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.NAMEJP] = "ヘルケイヴ";
_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.BGM] = a_bgmOnFire;
_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.STAGECOLOR] = 5509656;
_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.HELLCAVE, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.NAMEEN] = "HELL@FOREST";
_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.NAMEJP] = "ヘル@フォレスト";
_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.BGM] = a_bgmOnFire;
_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.STAGECOLOR] = 596554;
_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.FONTEN] = fo_stageTitle42;
_ds2[# STAGETYPE.HELLFOREST, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.NAMEEN] = "HELL@LAKE";
_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.NAMEJP] = "ヘルレイク";
_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.BGM] = a_bgmGrenade;
_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.STAGECOLOR] = 394861;
_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.HELLLAKE, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.NAMEEN] = "HELL@MOUNTAIN";
_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.NAMEJP] = "ヘル@マウンテン";
_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.BGM] = a_bgmGrenade;
_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.STAGECOLOR] = 267942;
_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.FONTEN] = fo_stageTitle32;
_ds2[# STAGETYPE.HELLMOUNTAIN, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.ALTAR, STAGEPARAM.NAMEEN] = "ALTAR";
_ds2[# STAGETYPE.ALTAR, STAGEPARAM.NAMEJP] = "アルター";
_ds2[# STAGETYPE.ALTAR, STAGEPARAM.BGM] = a_bgmDemonHowl;
_ds2[# STAGETYPE.ALTAR, STAGEPARAM.STAGECOLOR] = 168;
_ds2[# STAGETYPE.ALTAR, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.ALTAR, STAGEPARAM.FONTJP] = fo_stageTitle58;

_ds2[# STAGETYPE.ABYSS, STAGEPARAM.NAMEEN] = "ABYSS";
_ds2[# STAGETYPE.ABYSS, STAGEPARAM.NAMEJP] = "アビス";
_ds2[# STAGETYPE.ABYSS, STAGEPARAM.BGM] = noone;
_ds2[# STAGETYPE.ABYSS, STAGEPARAM.STAGECOLOR] = c_white;
_ds2[# STAGETYPE.ABYSS, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.ABYSS, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.NAMEEN] = "road";
_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.NAMEJP] = "道";
_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.BGM] = a_bgmWind03;
_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.STAGECOLOR] = c_white;
_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.TUTORIAL, STAGEPARAM.FONTJP] = fo_stageTitle48;

_ds2[# STAGETYPE.VOID, STAGEPARAM.NAMEEN] = "void";
_ds2[# STAGETYPE.VOID, STAGEPARAM.NAMEJP] = "ヴォイド";
_ds2[# STAGETYPE.VOID, STAGEPARAM.BGM] = noone;
_ds2[# STAGETYPE.VOID, STAGEPARAM.STAGECOLOR] = c_white;
_ds2[# STAGETYPE.VOID, STAGEPARAM.FONTEN] = fo_stageTitle58;
_ds2[# STAGETYPE.VOID, STAGEPARAM.FONTJP] = fo_stageTitle48;

#endregion
enum STAGENAME{
	HELLCAVE1,
	HELLCAVE2,
	HELLCAVE3,
	HELLCAVE4,
	HELLCAVE5,
	
	HELLLAKE1,
	HELLLAKE2,
	HELLLAKE3,
	HELLLAKE4,
	HELLLAKE5,
	
	HELLFOREST1,
	HELLFOREST2,
	HELLFOREST3,
	HELLFOREST4,
	HELLFOREST5,
	
	HELLMOUNTAIN1,
	HELLMOUNTAIN2,
	HELLMOUNTAIN3,
	HELLMOUNTAIN4,
	HELLMOUNTAIN5,
	
	ALTAR1,
	VOID,
		
	ABYSS1,
	ABYSS2,
	ABYSS3,
	ABYSS4,
	CORE,
	
	TUTORIAL1,
	TUTORIAL2,
	TUTORIAL3,
	TEST,
	
	BOOT,
	TITLE,
}
enum STAGEPARAM{
	STAGEID,
	NAMEEN,
	NAMEJP,
	BGM,
	NEXTSTAGE,
	STAGENUM,
	STAGETYPE,
	STAGECOLOR,
	FONTJP,
	FONTEN,
}

enum STAGETYPE{
	HELLCAVE,
	HELLLAKE,
	HELLFOREST,
	HELLMOUNTAIN,
	TUTORIAL,
	ABYSS,
	ALTAR,
	TEST,
	VOID,
	NONSTAGE,
}
}