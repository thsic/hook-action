
scene_time_total = 0;

var _t = 0;
scene_time[GAMECLEARSCENE.FADEIN] = fadein_end;
_t += scene_time[GAMECLEARSCENE.FADEIN];

scene_time[GAMECLEARSCENE.BETWEENTIME1] = draw_developer_start - _t;
_t += scene_time[GAMECLEARSCENE.BETWEENTIME1];

scene_time[GAMECLEARSCENE.DEVELOPER] = draw_developer_end - _t;
_t += scene_time[GAMECLEARSCENE.DEVELOPER];

scene_time[GAMECLEARSCENE.BETWEENTIME2] = draw_tool_start - _t;
_t += scene_time[GAMECLEARSCENE.BETWEENTIME2];

scene_time[GAMECLEARSCENE.TOOL] = draw_tool_end - _t;
_t += scene_time[GAMECLEARSCENE.TOOL];

scene_time[GAMECLEARSCENE.BETWEENTIME3] = draw_hellfrog - _t;
_t += scene_time[GAMECLEARSCENE.BETWEENTIME3];

scene_time[GAMECLEARSCENE.HELLFROG] = draw_timer_start - _t;
_t += scene_time[GAMECLEARSCENE.HELLFROG];

now_scene = GAMECLEARSCENE.FADEIN;

enum GAMECLEARSCENE{
	FADEIN,
	BETWEENTIME1,
	DEVELOPER,
	BETWEENTIME2,
	TOOL,
	BETWEENTIME3,
	HELLFROG,
	TIMER,
}

