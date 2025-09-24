//Sólo dibujar esto cuando este pausado
draw_self();

if(global.paused)
{
	//Dibujamos SURFACE
	if(surface_exists(surface_pausa))
	{
		draw_surface(surface_pausa,640 - camera_get_view_width(view_camera[0])/2,0);
	}
	else
	{
		surface_pausa = surface_create(room_width,room_height);
		surface_set_target(surface_pausa);
		draw_sprite(sprite_pausa,640 - camera_get_view_width(view_camera[0])/2,0,0);
		surface_reset_target();
	}
	
	draw_roundrect_color(camera_get_view_width(view_camera[0])/4,camera_get_view_height(view_camera[0])/3,(camera_get_view_width(view_camera[0])/15)*11,(camera_get_view_height(view_camera[0])/3)*2,dark_blue,dark_blue,false);
	draw_self();
	draw_set_halign(fa_center); //Centramos el texto
	draw_text_color((camera_get_view_width(view_camera[0])/2)+2,(camera_get_view_height(view_camera[0])*(2/5))+2,"PAUSED",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])*(2/5),"PAUSED");
}
