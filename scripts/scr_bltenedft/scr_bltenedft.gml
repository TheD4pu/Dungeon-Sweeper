//script de bullet derrota de enemigo
function scr_bltenedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		global.points += 1;
		obj_spawner.enemy_count -= 1;
		
		Control.combo += 1;
		Control.alarm[0] = 30;
		
		if (instance_exists(obj_item5) && obj_player.item5_shield = false && obj_player.item5_cooldown = false && Control.combo >= 10){
			obj_player.item5_shield = true;
			obj_player.item5_cooldown = true;
			obj_player.sprite_index = spr_item5player;
			obj_player.alarm [2] = 300;
		}
	}
	

}