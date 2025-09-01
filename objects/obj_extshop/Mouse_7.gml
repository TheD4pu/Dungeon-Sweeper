if (global.shopmenu){

	y = -48
	
	show_debug_message(ds_list_size(obj_shop_menu.list_shop_items));
	for (var i=0; i<ds_list_size(obj_shop_menu.list_shop_items); i++){
		var shop_object = obj_shop_menu.list_shop_items[|i];
		if(!shop_object.purch){
			instance_destroy(shop_object);
		}
	}

	
	if(instance_exists(obj_heart_heal)){
		instance_destroy(obj_heart_heal);
	}
	
	instance_destroy(obj_shop_menu);
}
alarm[0] = 60;