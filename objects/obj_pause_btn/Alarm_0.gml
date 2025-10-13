if (!global.paused){
	global.paused = true;
	
	//Dibujamos en SURFACE
	if (surface_exists(surface_pausa))
	{
		surface_set_target(surface_pausa);
		sprite_pausa = sprite_create_from_surface(application_surface,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),0,0,0,0);
		draw_sprite(sprite_pausa,640 - camera_get_view_width(view_camera[0])/2,0,0);
		surface_reset_target();
	}
	else
	{
		surface_pausa = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
		surface_set_target(surface_pausa);
		sprite_pausa=sprite_create_from_surface(application_surface,0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),0,0,0,0);
		draw_sprite(sprite_pausa,640 - camera_get_view_width(view_camera[0])/2,0,0);
		surface_reset_target();
	}
	audio_stop_all();
	instance_deactivate_all(true);
	instance_activate_object(System_Innit);
	instance_activate_object(obj_restart);
	instance_activate_object(obj_options_btn);
	instance_activate_object(obj_exit_game_btn);
	
	if (obj_options_btn.show_options){
		obj_options_btn.alarm[0] = 1;
	}
	
} else{
	instance_activate_all();
	audio_resume_all();
	
	if (instance_exists(obj_option_screenshake)){
		instance_destroy(obj_option_screenshake);
	}
	
	if (instance_exists(obj_option_sfx_volume)){
		instance_destroy(obj_option_sfx_volume);
	}

	obj_options_btn.x = obj_options_btn.inital_x;
	obj_options_btn.y = obj_options_btn.inital_y;
	
	x = inital_x;
	y = inital_y;
	
	obj_restart.x = obj_restart.inital_x; 
	obj_restart.y = obj_restart.inital_y;
	
	obj_exit_game_btn.x = obj_exit_game_btn.inital_x;
	obj_exit_game_btn.y = obj_exit_game_btn.inital_y;
	
	image_index = 0;
	global.paused = false;
	if (global.shopmenu){
		instance_deactivate_object(obj_wall);
		instance_deactivate_object(obj_player);
		instance_deactivate_object(obj_spawner);
	}
	
}