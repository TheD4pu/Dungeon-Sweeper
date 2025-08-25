if (device_mouse_check_button_released(0, mb_left) && dragging) {
	var drag_end_x = device_mouse_x(0);
	var drag_end_y = device_mouse_y(0);

	dragging = false;
	
		if (instance_exists(obj_item3) && item3_moves <= 1){
	
		if (!global.shopmenu && !delay){
		
			angl = point_direction(drag_start_x, drag_start_y, drag_end_x, drag_end_y);
			moving = true;
			item3_moves += 1;
		
		}
	
	} else if (!moving && !global.shopmenu && !delay){
	
		angl = point_direction(drag_start_x, drag_start_y, drag_end_x, drag_end_y);
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
