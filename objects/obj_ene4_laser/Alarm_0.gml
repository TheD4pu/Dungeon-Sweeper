if (instance_exists(obj_player)){
	instance_create_layer(x, y-12, "bullet", obj_laser);
	alarm [0] = 210;
}