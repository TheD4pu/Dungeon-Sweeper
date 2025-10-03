if (shot_count<8){
	instance_create_layer(x,y,"bullet",obj_bullet);
	image_index = 0;
	shot_count += 1;
	alarm[1] = 5;
} else {
	hurt = false;
	image_blend = c_white;
	alarm [0] = 30;
}