image_index = 1;
x = camera_get_view_width(view_camera[0])*(29/60)+global.camera_offset;
y = camera_get_view_height(view_camera[0])/2;

obj_restart.x = (camera_get_view_width(view_camera[0])/3)+global.camera_offset; 
obj_restart.y = camera_get_view_height(view_camera[0])/2;

instance_create_layer((camera_get_view_width(view_camera[0])*(38/60))+global.camera_offset,camera_get_view_height(view_camera[0])/2,"menus",obj_options_btn);

alarm[0] = 1;