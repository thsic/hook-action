// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_to_player(_damage, _invinsible_time_ratio, _gameover_knockback_dir){
	if(global.gamestate != gamestate.gameover){
		if(_invinsible_time_ratio > 0){
			//無敵時間が発生する攻撃はすべて敵の攻撃扱いとして、軽減/増加する
			_damage *= global.enemy_damage;
			
		}
		
		
		global.player_hp -= _damage;
		
		//チュートリアルでは死なない
		if(room == r_tutorial
		and global.player_hp <= 0){
			global.player_hp = 1;
		}
		
		if(is_gameover() == true){
			gameover_script(_gameover_knockback_dir);
		}
		else{
			if(_invinsible_time_ratio > 0){
				var _invinsible_time = ds_grid_get(global.ds_player_other, ePO_type.normal, ePO_param.InvincibleTime) * _invinsible_time_ratio;
				set_invincible_time(_invinsible_time);
				lagging_start(20, ac_lagRatio);
				se_play(SE_DAMAGED, 80, 1);
				//start_screen_shake(_damage/2, _damage/3, random(360));
			}
		}
		
		if(global.player_hp < 0){
			//プレイヤーのhpが0より低い場合0にする
			global.player_hp = 0
		}
	}
}