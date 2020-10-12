// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function e_bullet_create_sword(_object_number, _bullet_speed, _bullet_direction, _life_time, _enemy_id, _range, _damage){
	var _x = lengthdir_x(_range, _bullet_direction)+x;
	var _y = lengthdir_y(_range, _bullet_direction)+y;
	
	with(instance_create_layer(_x, _y, "EnemyBullets", _object_number)){
		speed = _bullet_speed;
		speed_default = _bullet_speed;
		direction = _bullet_direction;
		life_time = _life_time;
		life_time_default = _life_time;
		enemy_id = _enemy_id;
		damage = _damage;
	}
}