if (instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
	

	angl = obj_player.angl;
	
	alarm[0] = 1;
}



if (Control.combo >= 20){
	trail_color = make_color_rgb(30,70,195);
	spd = 17.5;
} else {
	trail_color = make_color_rgb(0,255,255);
	spd = 17.8;
}

sprite = 0;