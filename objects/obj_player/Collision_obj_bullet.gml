if (instance_exists(obj_item2) && moving){
	var bull = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+random_range(-30,30)
	})
	instance_destroy(other);
	
} else if (!hurt){
	scr_hurt();
}