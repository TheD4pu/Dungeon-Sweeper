global.shopmenu = true;

instance_deactivate_object(obj_player);
instance_deactivate_object(obj_spawner);

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
if (!instance_exists(obj_item5)){
	instance_create_depth(418,564,-1,obj_item5);
}	

instance_create_depth(786,466,-1,obj_heart_heal);


list_shop_items = ds_list_create();
	
for (var i=1; i<6; i++){
	var shop_object = asset_get_index("obj_item" + string(i));
	ds_list_add(list_shop_items, shop_object);
	show_debug_message(shop_object);
}

instance_create_depth(480,220,-1,obj_extshop);