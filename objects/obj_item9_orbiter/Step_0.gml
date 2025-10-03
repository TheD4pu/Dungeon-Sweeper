if (instance_exists(obj_player)){
	x += lengthdir_x(2,arc);
	y += lengthdir_y(2,arc);


	rot += 1;

	if (rot = 360){
		rot = -360;
	}

	arc = rot + angl;
}



