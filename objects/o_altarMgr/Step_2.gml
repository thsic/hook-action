if(global.floor_enemy_number_now <= 0){
	//敵が全滅
	time++
	if(time >= fadein_time){
		room_goto(r_void);
		room_speed = 60;
	}
	room_speed = 8;
	if(!played_se){
		played_se = true;
		se_play(a_destroyLastTotem, 90, 1);
	}
	/*if(!instance_exists(o_clearGameScene)){
		instance_create_layer(0, 0, "GameObjects", o_clearGameScene);
	}*/
}