if (instance_exists(obj_player)){
	angl = point_direction(x,y,obj_player.x,obj_player.y);
	alarm[0] = 5;
}

if (Control.combo < 5){
	instance_destroy();
}