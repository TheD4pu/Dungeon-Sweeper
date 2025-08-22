global.shopmenu=true;

instance_deactivate_object(obj_player);
instance_deactivate_object(obj_spawner);

instance_create_depth(522,256,-1,obj_extshop);

if (!instance_exists(obj_item1)){
	instance_create_depth(520,360,-1,obj_item1);
}
if (!instance_exists(obj_item2)){
	instance_create_depth(570,360,-1,obj_item2);
}	
if (!instance_exists(obj_item3)){
	instance_create_depth(520,408,-1,obj_item3);
}	
if (!instance_exists(obj_item4)){
	instance_create_depth(570,408,-1,obj_item4);
}	

instance_create_depth(670,360,-1,obj_heart_heal);