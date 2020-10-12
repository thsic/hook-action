
#region フック描画
switch(hook_state){
case hookState.Shooting:
case hookState.GrabWall:
case hookState.GrabEnemy:
case hookState.Shrink:
	//ワイヤー描画
	//先端から描画していく(そうしないとワイヤーの進んでる感がでない)
	draw_set_color(c_white);
	
	var _wire_sprite = s_hookWire;
	var _wire_radius = random_range(1.1, 1.3);//ワイヤーの半径
	var _sprite_width = sprite_get_width(_wire_sprite);
	var _hook_length = point_distance(x, y, hook_point_x, hook_point_y);
	var _hook_point_direction = point_direction(hook_point_x, hook_point_y, x, y);
	var _loop_amount = _hook_length/_sprite_width/2-1;
	var _tex = sprite_get_texture(_wire_sprite, 0);
	
	var _upside_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+hook_point_x;
	var _upside_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+hook_point_y;
	var _downside_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+hook_point_x;
	var _downside_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+hook_point_y;
	
	draw_primitive_begin_texture(pr_trianglestrip, _tex);
	
	var _leng_dir_x = lengthdir_x(_sprite_width, _hook_point_direction);
	var _leng_dir_y = lengthdir_y(_sprite_width, _hook_point_direction);
	for(var i=0; i<_loop_amount; i++){
		
		
		draw_vertex_texture(_upside_x, _upside_y, 0, 0);
		draw_vertex_texture(_downside_x, _downside_y, 0, 1);
		
		_upside_x += _leng_dir_x;
		_upside_y += _leng_dir_y;
		_downside_x += _leng_dir_x;
		_downside_y += _leng_dir_y;
		
		draw_vertex_texture(_upside_x, _upside_y, 1, 0);
		draw_vertex_texture(_downside_x, _downside_y, 1, 1);
		
		_upside_x += _leng_dir_x;
		_upside_y += _leng_dir_y;
		_downside_x += _leng_dir_x;
		_downside_y += _leng_dir_y;
	}
	//ワイヤー最後らへん描画
	//(↓ forの最後の処理を打ち消す)
	_upside_x -= _leng_dir_x;
	_upside_y -= _leng_dir_y;
	_downside_x -= _leng_dir_x;
	_downside_y -= _leng_dir_y;
	
	var _upside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction+90)+x;
	var _upside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction+90)+y;
	var _downside_tip_x = lengthdir_x(_wire_radius, _hook_point_direction-90)+x;
	var _downside_tip_y = lengthdir_y(_wire_radius, _hook_point_direction-90)+y;
	
	//この辺の処理よくわからん なんかうまくいった
	var _tip_length = point_distance(_upside_x, _upside_y, _upside_tip_x, _upside_tip_y);
	var _texture_width = _tip_length/(_sprite_width*2);
	
	draw_vertex_texture(_upside_x, _upside_y, 0, 0);
	draw_vertex_texture(_downside_x, _downside_y, 0, 1);
	draw_vertex_texture(_upside_tip_x, _upside_tip_y, _texture_width, 0);
	draw_vertex_texture(_downside_tip_x, _downside_tip_y, _texture_width, 1);
	
	draw_primitive_end();
	//フック先端描画
	if(_loop_amount > 0){//ワイヤーが短すぎると描画しない
		draw_sprite_ext(s_hookTip, 0, hook_point_x, hook_point_y, 1, 1, _hook_point_direction-180, c_white, 1);
	}
}
#endregion

#region プレイヤー描画

//通常時 歩行
var _sprite = s_player;
var _sprite_width = sprite_get_width(_sprite);

//無敵時間なら透明に
if(invincible_enable){
	var _transparency_time = invincible_time_default/5;
	if(_transparency_time >= invincible_time){
		var _alpha = 0.9;//無敵時間切れる直前は透明度が下がる
	}
	else{
		var _alpha = 0.3;
	}
}
else{
	var _alpha = 1;
}

//左右向く
if(mouse_x < x){
	look_direction = LookDirection.Left;
}
else{
	look_direction = LookDirection.Right;
}

switch(look_direction){
case LookDirection.Right:
	draw_sprite_ext(_sprite, 0, x, y, 1, 1, 0, c_white, _alpha);
break
case LookDirection.Left:
	
	draw_sprite_ext(_sprite, 0, x, y, -1, 1, 0, c_white, _alpha);
break
}

#endregion

#region 銃描画
var _gun_sprite = s_cursedGun;
switch(look_direction){
case LookDirection.Right:
	draw_sprite_ext(_gun_sprite, 0, x, y+2, 1, 1, player_direction, c_white, _alpha);
break
case LookDirection.Left:
	draw_sprite_ext(_gun_sprite, 0, x, y+2, -1, 1, player_direction-180, c_white, _alpha);
break
}
#endregion


if(gun_charge_enable == true){
	draw_charge_bar();
}
draw_set_color(c_white);
