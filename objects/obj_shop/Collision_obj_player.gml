if (!global.shopmenu){
	instance_create_layer(624,400,"menus",obj_shop_menu, {
		image_index: shop_sprite
	});
	
	show_self = false;
	
	layer_background_change(layer_background_get_id(layer_get_id("Background")),spr_background_shop);
}