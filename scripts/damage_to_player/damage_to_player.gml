// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_to_player(_damage, _invinsible_time_ratio, _gameover_knockback_dir){
	if(global.gamestate != gamestate.gameover){
		global.player_hp -= _damage;
		if(is_gameover() == true){
			gameover_script(_gameover_knockback_dir);
		}
		else{
			if(_invinsible_time_ratio > 0){
				var _invinsible_time = ds_grid_get(global.ds_player_other, ePO_type.normal, ePO_param.InvincibleTime) * _invinsible_time_ratio;
				set_invincible_time(_invinsible_time);
			}
		}
	}
}