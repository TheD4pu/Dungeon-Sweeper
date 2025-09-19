global.shop = false;

instance_activate_object(obj_spawner);

if (heart){
instance_activate_object(obj_heal_random);
}

if(global.points >= 150){
	obj_spawner.boss_spawn = true;
}

Control.alarm[0] = 90;
obj_spawner.alarm [0] = 30;