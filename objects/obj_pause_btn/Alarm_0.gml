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

		instance_deactivate_all(true);

} else{
	instance_activate_all();
	image_index = 0;
	global.paused = false;
}