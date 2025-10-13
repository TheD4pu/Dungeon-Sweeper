draw_self();

if (show_options && global.paused){
	draw_roundrect_color((camera_get_view_width(view_camera[0])/4)+global.camera_offset,camera_get_view_height(view_camera[0])*(2/3),((camera_get_view_width(view_camera[0])/15)*11)+global.camera_offset,(camera_get_view_height(view_camera[0])/9)*8,dark_blue,dark_blue,false);
	draw_self();
	draw_set_halign(fa_center); //Centramos el texto
	draw_text_color((camera_get_view_width(view_camera[0])/2)+2+global.camera_offset,(camera_get_view_height(view_camera[0])*(4/6))+2,"SETTINGS",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text((camera_get_view_width(view_camera[0])/2)+global.camera_offset,camera_get_view_height(view_camera[0])*(4/6),"SETTINGS");

}