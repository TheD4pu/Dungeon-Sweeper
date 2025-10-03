//script de derrota de enemigo
function scr_enedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		global.points += 1;
		obj_spawner.enemy_count -= 1;
		obj_spawner.alarm[0] = 20;
		audio_play_sound(wav_ene_defeat,1,false);
		
		Control.combo += 1;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		if (instance_exists(obj_item5) && obj_player.item5_shield = false && obj_player.item5_cooldown = false && Control.combo >= 5){
			obj_player.item5_shield = true;
			obj_player.item5_cooldown = true;
			obj_player.sprite_index = spr_item5player_atk;
			obj_player.alarm [2] = 300;
		}
		
		if (instance_exists(obj_item9)){
			var orb = choose(1,2,3);
			
			if (orb = 3){
				instance_create_layer(x,y,"bullet",obj_item9_orbiter);
			}
		}
	
		heart_spawn = irandom(50);
		if (heart_spawn = 1){
			instance_create_layer(x,y,"Instances",obj_heal_random);
		}
	}
}

//script de bullet derrota de enemigo
function scr_bltenedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		instance_destroy(other);
		global.points += 1;
		obj_spawner.alarm[0] = 5;
		obj_spawner.enemy_count -= 1;
		audio_play_sound(wav_ene_defeat,1,false);
		
		Control.combo += 1;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		if (instance_exists(obj_item5) && obj_player.item5_shield = false && obj_player.item5_cooldown = false && Control.combo >= 10){
			obj_player.item5_shield = true;
			obj_player.item5_cooldown = true;
			obj_player.sprite_index = spr_item5player;
			obj_player.alarm [2] = 300;
		}
		
		heart_spawn = irandom(75);
		if (heart_spawn = 1){
			instance_create_layer(x,y,"Instances",obj_heal_random);
		}
	}
}