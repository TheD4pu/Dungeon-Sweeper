if (global.coin >= Control.continue_cost){
	
	global.coin -= Control.continue_cost;
	Control.continue_cost = Control.continue_cost*2;
	
	instance_create_layer(x,y,"Instances",obj_player);
	obj_player.hurt = true;
	obj_player.alarm[0] = 150;
	
	instance_activate_object(obj_pause_btn);
	instance_activate_object(obj_options_btn);
	
	instance_destroy();
}