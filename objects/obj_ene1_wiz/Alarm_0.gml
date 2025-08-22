if (instance_exists(obj_player)){
	instance_create_layer(x,y,"bullet",obj_bullet);
}

alarm [0] = choose(210,330);