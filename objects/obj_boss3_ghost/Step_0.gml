if (instance_exists(obj_player)){
	move_towards_point(obj_player.x,obj_player.y,spd);
} else {
	move_towards_point(camera_get_view_width(view_camera[0])/2,360,spd);
}

