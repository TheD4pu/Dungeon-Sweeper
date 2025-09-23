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