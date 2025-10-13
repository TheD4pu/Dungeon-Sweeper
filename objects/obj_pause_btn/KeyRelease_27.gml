image_index = 1;

obj_options_btn.x = (camera_get_view_width(view_camera[0])*(6/19))+global.camera_offset;
obj_options_btn.y = camera_get_view_height(view_camera[0])/2;

x = camera_get_view_width(view_camera[0])*(8/19)+global.camera_offset;
y = camera_get_view_height(view_camera[0])/2;

obj_restart.x = (camera_get_view_width(view_camera[0])*(10/19))+global.camera_offset;
obj_restart.y = camera_get_view_height(view_camera[0])/2; 

obj_exit_game_btn.x = (camera_get_view_width(view_camera[0])*(12/19))+global.camera_offset;
obj_exit_game_btn.y = camera_get_view_height(view_camera[0])/2;

alarm[0] = 1;