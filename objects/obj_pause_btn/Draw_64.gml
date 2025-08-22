//Sólo dibujar esto cuando este pausado
if(global.paused)
{
	//Dibujamos SURFACE
	if(surface_exists(surface_pausa))
	{
		draw_surface(surface_pausa,0,0);
	}
	else
	{
		surface_pausa=surface_create(room_width,room_height);
		surface_set_target(surface_pausa);
		draw_sprite(sprite_pausa,0,0,0);
		surface_reset_target();
	}
	
	draw_set_halign(fa_center); //Centramos el texto
	draw_text(room_width/2,room_height/2,"PAUSED");
}

