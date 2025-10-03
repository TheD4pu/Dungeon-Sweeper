global.shop = false;

instance_activate_object(obj_spawner);

if (heart){
 instance_activate_object(obj_heal_random);
}

if (instance_exists(obj_item10) && !instance_exists(obj_item10_rat)){
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_item10_rat);
}

if(global.points >= 500){
	obj_spawner.boss_spawn = true;

} else if (global.points >= 150 && instance_exists(obj_player)){
	obj_spawner.boss_spawn = true;
		
	obj_player.bounce = true;
	obj_player.delay = true;
	obj_spawner.alarm[2] = 90;
}

Control.alarm[0] = 120;
obj_spawner.alarm [0] = 30;