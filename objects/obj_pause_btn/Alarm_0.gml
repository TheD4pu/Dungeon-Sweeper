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
	
} else{
	instance_activate_all();
	audio_resume_all();
	x = 1200;
	y = 48;
	
	obj_restart.x = 1200; 
	obj_restart.y = 144;
	
	instance_destroy(obj_options_btn);
	
	image_index = 0;
	global.paused = false;
	if (global.shopmenu){
		instance_deactivate_object(obj_wall);
		instance_deactivate_object(obj_player);
		instance_deactivate_object(obj_spawner);
	}
	
}