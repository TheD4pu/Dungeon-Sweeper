if (144 < mouse_x && mouse_x < 1104){
	if (instance_exists(obj_item3) && item3_moves <= 1){
	
		if (!global.shopmenu && !delay){
		
			angl= point_direction(x,y,mouse_x,mouse_y);
			moving = true;
			item3_moves += 1;
		
		}
	
	} else if (!moving && !global.shopmenu && !delay){
	
		angl = point_direction(x,y,mouse_x,mouse_y);
		moving = true;
	} 

	if (instance_exists(obj_item4) && obj_item4.purch){
		instance_create_layer(x,y,"Instances_1",obj_item4_swords,{
			direction: obj_player.angl
		});
		
		instance_create_layer(x,y,"Instances_1",obj_item4_swords, {
			image_angle : 180,
			direction : obj_player.angl
		});
	}
	
	sprite_index = spr_plyr_atk;

}