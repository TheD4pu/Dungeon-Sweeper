spd = 5;
if (instance_exists(obj_player)){
	angl = point_direction(x,y,obj_player.x,obj_player.y);
} else {
	angl = 0;
}