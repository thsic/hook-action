

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if(is_in_range(0, 90, draw_stage_name_time)){
	//stage1とか描画
	var _num_x = global.camera_width/2;
	var _num_y = global.camera_height/10;
		
	draw_set_color(stage_number_color);
	draw_set_font(fo_stageNumber);
	
	//draw_text(_num_x, _num_y, "FLOOR 1");
	
}

if(is_in_range(60, 90, draw_stage_name_time) or is_in_range(0, 30, draw_stage_name_time)){
	//ステージ名
	var _name_x = global.camera_width/2;
	var _name_y = global.camera_height/2;
	
	draw_set_color(stage_name_color);
	
	if(draw_stage_name_time > 40){
		var _stage_name = global.now_stage_param[STAGEPARAM.NAMEEN];
		draw_set_font(fo_stageTitleEn);
	}
	else{
		var _stage_name = global.now_stage_param[STAGEPARAM.NAMEJP];
		draw_set_font(fo_stageTitleJp);
	}
	draw_text(_name_x, _name_y, _stage_name);
	
	
}



draw_set_default();
