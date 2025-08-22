if (!window_has_focus()){
	global.paused = true;
	alarm[0] = 1;
} else{
	global.paused = false;
}