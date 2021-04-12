// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_stage(){
	global.player_hp = ds_grid_get(global.ds_player_hp, o_gameMgr.now_hp_type, ePHP_param.MaxHp);
	
	//フック消す
	with(o_player){
		hookshot_cooldown = 0;
		hook_state = hookState.Idle;
		can_hookshot = false;
		hook_point_x = x;
		hook_point_y = y;
		hook_length = 0;
	}
	//弾消し
	with(o_playerBullet){
		instance_destroy();
	}
	with(o_enemyBullet){
		instance_destroy();
	}
	//敵を再生成
	with(o_enemy){
		instance_destroy();
	}
	var _enemy_number = ds_grid_height(ds_enemy_default_position);
	var _enemy_x, _enemy_y, _enemy_index, _enemy_lock_num, _enemy_lock_spawn_time;
	for(var i=0; i<_enemy_number; i++){
		_enemy_index = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.ObjectIndex, i);
		_enemy_x = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.XPosition, i);
		_enemy_y = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.YPosition, i);
		_enemy_lock_num = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.LockNumber, i);
		_enemy_lock_spawn_time = ds_grid_get(ds_enemy_default_position, EnemyDefaultPosition.LockSpawnTime, i);
		with(instance_create_layer(_enemy_x, _enemy_y, "Enemies", _enemy_index)){
			
			//敵の初期値設定
			lock_number = _enemy_lock_num;
			lock_spawn_time = _enemy_lock_spawn_time;
			if(lock_spawn_time = -1){
				state = EnemyState.Idle;//通常
			}
			else{
				state = EnemyState.WaitForSpawn;//ロック中に出現する敵
			}
			
		}
	}
	
	//ルームのロック状態をリセットする
	room_lock_reset();
	
	
	respawn_time = -1;
}