if (instance_exists(obj_player)) {
	instance_create_layer(x,y,"bullet",obj_boss_laser);
}
alarm [1] = choose(120,90);