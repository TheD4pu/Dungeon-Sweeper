if (!window_has_focus() && global.paused = false){
	obj_pause_btn.alarm[0] = 1;
	image_index = 1;
} 

if (combo_UI_timer > global.camera_offset + camera_get_view_width(view_camera[0])*(1/27) && !global.shopmenu){
	combo_UI_timer -= 2;
}