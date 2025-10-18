
if (room == Room_main_menu && !System_Innit.title_click){
	draw_sprite(spr_title_screen,0,640, camera_get_view_height(view_camera[0])/2);

	draw_sprite(spr_game_title,0, title_drop, camera_get_view_height(view_camera[0])/14);

	// Draw Demon Trail Logo
	draw_set_font(Title);
	draw_set_halign(fa_center);
	
	draw_text_color(title_drop + 2,camera_get_view_height(view_camera[0]) - 62, "© Demon Trail 2025",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(title_drop,camera_get_view_height(view_camera[0]) - 64, "© Demon Trail 2025");

	draw_rectangle_color(-2000,0,640-540,camera_get_view_height(view_camera[0]),dark_blue,dark_blue,dark_blue,dark_blue,false);
	draw_rectangle_color(640+540,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),dark_blue,dark_blue,dark_blue,dark_blue,false);
	

} else{
	draw_self();
}