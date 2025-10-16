if (global.coin >= Control.continue_cost){
	
	global.coin -= Control.continue_cost;
	Control.continue_cost = Control.continue_cost*2;
	
	instance_create_layer(x,y,"Instances",obj_player);
	obj_player.hurt = true;
	obj_player.alarm[0] = 150;

	obj_restart.x = obj_restart.inital_x; 
	obj_restart.y = obj_restart.inital_y;
	
	obj_exit_game_btn.x = obj_exit_game_btn.inital_x;
	obj_exit_game_btn.y = obj_exit_game_btn.inital_y;

	obj_pause_btn.y = obj_pause_btn.inital_y;

	obj_options_btn.y = obj_options_btn.inital_y;
	
	instance_destroy();
}