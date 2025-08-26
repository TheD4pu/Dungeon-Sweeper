global.shopmenu = true;

instance_deactivate_object(obj_player);
instance_deactivate_object(obj_spawner);

instance_create_depth(480,220,-1,obj_extshop);

if (!instance_exists(obj_item1)){
	instance_create_depth(418,440,-1,obj_item1);
}
if (!instance_exists(obj_item2)){
	instance_create_depth(602,440,-1,obj_item2);
}	
if (!instance_exists(obj_item3)){
	instance_create_depth(418,502,-1,obj_item3);
}	
if (!instance_exists(obj_item4)){
	instance_create_depth(602,502,-1,obj_item4);
}	

instance_create_depth(786,466,-1,obj_heart_heal);