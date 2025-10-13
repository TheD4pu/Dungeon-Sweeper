if (144 < mouse_x && mouse_x < 1104 && !delay && !global.shopmenu){
	if (instance_exists(obj_item3) && item3_moves <= 1){
	
		if (!global.shopmenu){
		
			angl= point_direction(x,y,mouse_x,mouse_y);
			moving = true;
			item3_moves += 1;
		
		}
	
	} else if (!moving){
	
		angl = point_direction(x,y,mouse_x,mouse_y);
		moving = true;
	} 

	if (instance_exists(obj_item4) && obj_item4.purch && !instance_exists(obj_item4_swords)){
		item4_create_swords();
	}
	
	if (!item5_shield){
		sprite_index = spr_player_atk;
	} else {
		sprite_index = spr_item5player_atk;
	}
	
	if (instance_exists(obj_item8)){
		instance_create_layer(x,y,"Instances_1",obj_item8_bomb);
	}
	
	alarm[3] = 6;
}