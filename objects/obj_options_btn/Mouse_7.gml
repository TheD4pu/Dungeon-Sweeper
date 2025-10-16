if (!global.paused){
	x = (camera_get_view_width(view_camera[0])*(6/19))+global.camera_offset;
	y = camera_get_view_height(view_camera[0])/2;

	obj_pause_btn.x = camera_get_view_width(view_camera[0])*(8/19)+global.camera_offset;
	obj_pause_btn.y = camera_get_view_height(view_camera[0])/2;

	obj_restart.x = (camera_get_view_width(view_camera[0])*(10/19))+global.camera_offset;
	obj_restart.y = camera_get_view_height(view_camera[0])/2; 

	obj_exit_game_btn.x = (camera_get_view_width(view_camera[0])*(12/19))+global.camera_offset;
	obj_exit_game_btn.y = camera_get_view_height(view_camera[0])/2;

	obj_pause_btn.alarm[0] = 1;
	obj_pause_btn.image_index = 1;
	
	alarm[0] = 1;
} else if (!show_options){
	alarm[0] = 1;
} else {
	show_options = false;
	
	instance_destroy(obj_option_screenshake);
	instance_destroy(obj_option_sfx_volume);

}