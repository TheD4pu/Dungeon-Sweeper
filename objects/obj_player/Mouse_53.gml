if (144 < mouse_x && mouse_x < 1104 && !delay){
	if (instance_exists(obj_item3) && item3_moves <= 1){
	
		if (!global.shopmenu){
		
			angl= point_direction(x,y,mouse_x,mouse_y);
			moving = true;
			item3_moves += 1;
		
		}
	
	} else if (!moving && !global.shopmenu){
	
		angl = point_direction(x,y,mouse_x,mouse_y);
		moving = true;
	} 

	if (instance_exists(obj_item4) && obj_item4.purch){
		instance_create_layer(x,y,"Instances_1",obj_item4_swords,{
			direction: obj_player.angl
		});
		
		instance_create_layer(x,y,"Instances_1",obj_item4_swords, {
			image_angle : 180,
			image_index : 1,
			direction : obj_player.angl
		});
	}
	
	if (!item5_shield){
		sprite_index = spr_plyr_atk;
	} else {
		sprite_index = spr_item5player_atk;
	}
}