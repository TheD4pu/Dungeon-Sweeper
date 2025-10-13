show_options = true;

instance_create_depth((camera_get_view_width(view_camera[0])/3)+global.camera_offset,camera_get_view_height(view_camera[0])*(3/4),-1,obj_option_screenshake);
instance_create_depth((camera_get_view_width(view_camera[0])*(29/60))+global.camera_offset,camera_get_view_height(view_camera[0])*(3/4),-1,obj_option_sfx_volume);