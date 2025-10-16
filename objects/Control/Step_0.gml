if (!window_has_focus() && global.paused = false){
	obj_pause_btn.alarm[0] = 1;
	image_index = 1;
} 

if (combo_UI_timer > 0 && !global.shop_menu){
	combo_UI_timer -= 2;
}