global.shop = false;

instance_activate_object(obj_spawner);

if (heart){
instance_activate_object(obj_heal_random);
}

if(global.points >= 500){
	obj_spawner.boss_spawn = true;

} else if (global.points >= 150){
	obj_spawner.boss_spawn = true;
		
	obj_player.bounce = true;
	obj_player.delay = true;
	obj_spawner.alarm[2] = 60;
}

Control.alarm[0] = 90;
obj_spawner.alarm [0] = 30;