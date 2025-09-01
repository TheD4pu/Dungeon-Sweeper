moving = false;
delay = true;
bounce = true;

if(instance_exists(obj_item1)){
	var bull = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+180
	})
	
	var bull2 = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+225
	})
	
	var bull3 = instance_create_layer(x,y,"bullet",obj_item1blt,{
		direction : obj_player.angl+135
	})
}

if (instance_exists(obj_item4)){
	instance_destroy(obj_item4_swords);
}

if (!item5_shield){
	sprite_index = spr_player;
}

alarm[1] = 9;