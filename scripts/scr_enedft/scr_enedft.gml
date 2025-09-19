//script de derrota de enemigo
function scr_enedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		global.points += 1;
		obj_spawner.enemy_count -= 1;
		obj_spawner.alarm[0] = 20;
		
		Control.combo += 1;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		if (instance_exists(obj_item5) && obj_player.item5_shield = false && obj_player.item5_cooldown = false && Control.combo >= 5){
			obj_player.item5_shield = true;
			obj_player.item5_cooldown = true;
			obj_player.sprite_index = spr_item5player_atk;
			obj_player.alarm [2] = 300;
		}
	
		heart_spawn = irandom(20);
		if (heart_spawn = 1){
			instance_create_layer(x,y,"Instances",obj_heal_random);
		}
	}
}
