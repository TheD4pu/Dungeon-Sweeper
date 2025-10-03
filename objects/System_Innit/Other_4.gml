var base_w = 1280;
var base_h = 720;
var max_w = 1280;
var max_h = 720;

if (os_type != os_windows){
	max_w = display_get_width();
	max_h = display_get_height();
}

var aspect = max_w / max_h;
var view_height = min (base_h,max_h);
var view_width = view_height * aspect;

if (max_w >= base_w) {
	display_set_gui_size(base_h * aspect, base_h);
	camera_set_view_size(view_camera[0], floor(view_width),floor(view_height));
	view_wport[0] = max_w;
	view_hport[0] = max_h;
	
	surface_resize(application_surface, camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
} else {
	surface_resize(application_surface,max_w,max_h);
	display_set_gui_size(base_w,base_h);
}

show_debug_message("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
show_debug_message("Camera size = " + string(camera_get_view_width(view_camera[0])) + "x" + string(camera_get_view_height(view_camera[0])));
show_debug_message("Max size = " + string(max_w) + "x" + string(max_h));
show_debug_message("View size = " + string(view_width) + "x" + string(view_height));
show_debug_message("Aspect = " + string(aspect));

global.camera_offset = 640 - camera_get_view_width(view_camera[0])/2;
camera_set_view_pos(view_camera[0], global.camera_offset,camera_get_view_y(view_camera[0]));

show_debug_message("Camera offset = " + string(global.camera_offset));