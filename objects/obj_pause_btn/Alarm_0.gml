if (!global.paused){
	global.paused = true;
	
	//Dibujamos en SURFACE
	if (surface_exists(surface_pausa))
	{
		surface_set_target(surface_pausa);
		sprite_pausa=sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
		draw_sprite(sprite_pausa,0,0,0);
		surface_reset_target();
	}
	else
	{
		surface_pausa=surface_create(room_width,room_height);
		surface_set_target(surface_pausa);
		sprite_pausa=sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
		draw_sprite(sprite_pausa,0,0,0);
		surface_reset_target();
	}
	audio_stop_all();
	instance_deactivate_all(true);
	instance_activate_object(obj_restart);

} else{
	instance_activate_all();
	audio_resume_all();
	x = 1200;
	y = 48;
	
	obj_restart.x = 1200; 
	obj_restart.y = 144;
	
	
	image_index = 0;
	global.paused = false;
	if (global.shopmenu){
		instance_deactivate_object(obj_wall);
		instance_deactivate_object(obj_player);
		instance_deactivate_object(obj_spawner);
	}
	
}