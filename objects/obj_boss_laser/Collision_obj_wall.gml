if (instance_exists(obj_player)){
	angl = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = angl;
}

rebote += 1;
if (rebote>=3){
	instance_destroy();
	image_angle = angl;
	}