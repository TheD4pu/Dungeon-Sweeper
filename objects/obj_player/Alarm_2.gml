if (item5_cooldown && item5_shield){
	item5_shield = false;
	
	if (sprite_index = spr_item5player_atk){
		sprite_index = spr_player_atk;
	} else {
		sprite_index = spr_player;
	}
	
	alarm [2] = 90;
} else {
	item5_cooldown = false;
}