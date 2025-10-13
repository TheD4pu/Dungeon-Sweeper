if (instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
	

	angl = obj_player.angl;
	
	alarm[0] = 1;
}

if (Control.combo >= 20){
	spd = 17;
	trail_color = make_color_rgb(255,255,255);
	
} else {
	spd = 18;
	trail_color = make_color_rgb(0,255,255);
}

sprite = 0;