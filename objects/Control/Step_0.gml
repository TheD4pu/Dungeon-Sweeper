if (!window_has_focus() && global.paused = false){
	obj_pause_btn.alarm[0] = 1;
	image_index = 1;
} 

if (combo_UI_timer > 30 && !global.shopmenu){
	combo_UI_timer -= 2;
}