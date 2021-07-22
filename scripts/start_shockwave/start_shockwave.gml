//
function start_shockwave(_x, _y, _range, _damage, _stundamage, _knockback_speed){
	var _enemy_num = instance_number(o_enemy);
	
	for(var i=0; i<_enemy_num; i++){
		var _id = instance_find(o_enemy, i);
		if(_id.idle_mode == false){
			var _dis = point_distance(_x, _y, _id.x, _id.y);
			
			if(_dis < _range){
				
				//ダメージをあたえる
				var _dir = point_direction(_x, _y, _id.x, _id.y);
				damage_to_enemy(_id, _damage, _stundamage);
				enemy_knockback_start(_id, _knockback_speed, _dir);
				
			}
		}
	}
}