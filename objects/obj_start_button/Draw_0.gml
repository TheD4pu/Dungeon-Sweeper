draw_self();

if (!title_click){
	draw_sprite(spr_title_screen,0,camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2);

	draw_sprite(spr_game_title,0, title_drop, camera_get_view_height(view_camera[0])/14);

	draw_rectangle_color(0,0,(camera_get_view_width(view_camera[0])/2)-540,camera_get_view_height(view_camera[0]),dark_blue,dark_blue,dark_blue,dark_blue,false);
	draw_rectangle_color((camera_get_view_width(view_camera[0])/2)+540,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),dark_blue,dark_blue,dark_blue,dark_blue,false);
}