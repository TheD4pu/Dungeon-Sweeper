function scr_spawn_items(item_1,item_1x,item_1y,item_2,item_2x,item_2y,healx,healy){
	
	instance_create_depth(item_1x,item_1y,-1,item_1);
	instance_create_depth(item_2x,item_2y,-1,item_2);
	instance_create_depth(healx,healy,-1,obj_heart_heal);
}