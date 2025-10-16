if (instance_exists(obj_player)){
	
	switch obj_player.sprite_index{
		case spr_player:
			sprite = spr_player_combo;
			break;
		case spr_player_atk:
			sprite = spr_player_atk_combo;
			break;
		case spr_item5player:
			sprite = spr_player_combo;
			break;
		case spr_item5player_atk:
			sprite = spr_player_atk_combo;
			break;
	}

	draw_sprite_ext(sprite,obj_player.image_index,x,y,1,1,0,trail_color,0.8);
}

