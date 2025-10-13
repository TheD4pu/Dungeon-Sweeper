if (global.shopmenu){

	y = -48
	layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_background);
	
	show_debug_message(ds_list_size(obj_shop_menu.list_shop_items));
	for (var i=0; i<ds_list_size(obj_shop_menu.list_shop_items); i++){
		var shop_object = obj_shop_menu.list_shop_items[|i];
		if(shop_object = obj_heart_heal){
			instance_destroy(shop_object);
		} else if(!shop_object.purch){
			instance_destroy(shop_object);
		}
	}

	
	if(instance_exists(obj_heart_heal)){
		instance_destroy(obj_heart_heal);
	}
	
	instance_destroy(obj_shop_menu);
}
obj_shop.show_self = true;
instance_activate_object(obj_player);
instance_activate_object(obj_wall);
instance_activate_object(obj_item9_orbiter);
instance_activate_object(obj_item10_rat);
instance_activate_object(obj_combo_effect);
alarm[0] = 60;