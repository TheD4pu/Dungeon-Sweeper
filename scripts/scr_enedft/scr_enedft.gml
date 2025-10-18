//script de derrota de enemigo
function scr_enedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		global.points += 1;
		obj_spawner.enemy_count -= 1;
		obj_spawner.alarm[0] = 20;
		audio_play_sound(wav_ene_defeat,1,false);
		
		var ene_spr = 0;
		
		switch object_index{
			case obj_ene0_dash:
				ene_spr = spr_ene_dash_dft;
				break;
			case obj_ene1_wiz:
				ene_spr = spr_ene_wizard_dft;
				break;
			case obj_ene2_shield:
				ene_spr = spr_ene_shield_dft;
				break;
			case obj_ene3_expl:
				ene_spr = spr_ene_expl_dft;
				break;
			case obj_ene4_laser:
				ene_spr = spr_ene_laser_dft;
				break;
			case obj_ene5_blocker:
				ene_spr = spr_ene_blocker_dft;
				break;
			default:
				ene_spr = spr_ene_dash_dft;
		}
		
		instance_create_depth(x,y,5,Ene_dft_effect,{
			sprite_index: ene_spr
		});
		
		Control.combo += 1;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		if (Control.combo >= 10 && !instance_exists(obj_combo_effect)){
			instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_combo_effect);
		}
		
		if (Control.combo = 25){
			instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_combo_effect);
		}
		
		if (instance_exists(obj_item5) && obj_player.item5_shield = false && obj_player.item5_cooldown = false && Control.combo >= 10){
			obj_player.item5_shield = true;
			obj_player.item5_cooldown = true;
			
			if (obj_player.sprite_index = spr_player_atk){
				obj_player.sprite_index = spr_item5player_atk;
			} else {
				obj_player.sprite_index = spr_item5player;
			}
			
			obj_player.alarm [2] = 300;
		}
		
		if (instance_exists(obj_item9)){
			var orb = choose(1,2,3);
			
			if (orb = 3){
				instance_create_layer(x,y,"bullet",obj_item9_orbiter);
			}
		}
		
		if (global.points >= 700){
			heart_spawn = irandom(100);
		} else{
			heart_spawn = irandom(50);
		}
	
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
		
		switch object_index{
			case obj_ene0_dash:
				ene_spr = spr_ene_dash_dft;
				break;
			case obj_ene1_wiz:
				ene_spr = spr_ene_wizard_dft;
				break;
			case obj_ene2_shield:
				ene_spr = spr_ene_shield_dft;
				break;
			case obj_ene3_expl:
				ene_spr = spr_ene_expl_dft;
				break;
			case obj_ene4_laser:
				ene_spr = spr_ene_laser_dft;
				break;
			case obj_ene5_blocker:
				ene_spr = spr_ene_blocker_dft;
				break;
			default:
				ene_spr = spr_ene_dash_dft;
		}
		
		instance_create_depth(x,y,5,Ene_dft_effect,{
			sprite_index: ene_spr
		});
		
		Control.combo += 1;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		if (Control.combo >= 10 && !instance_exists(obj_combo_effect)){
			instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_combo_effect);
		}
		
		if (Control.combo = 25){
			instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_combo_effect);
		}
		
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