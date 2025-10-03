instance_destroy();

if (funny < 400 && instance_exists(obj_player)) {
	instance_create_layer(obj_player.x,obj_player.y,"bullet",obj_item9_orbiter);
}