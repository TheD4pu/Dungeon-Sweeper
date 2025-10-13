if(!move && hp = 2){
	move = true;
	image_speed = 2;
	alarm[0] = 90;
	
	
} else {
	angl = irandom(360);
	move = false;
	image_speed = 0;
	alarm[0] = 120;
	
	if (hp = 1){
			alarm[1] = 110;
			image_speed = 2;
	}
	
}