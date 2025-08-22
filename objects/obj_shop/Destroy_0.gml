global.shop=false;
instance_activate_object(obj_player);
instance_activate_object(obj_spawner);

if(global.points >= 150){
	obj_spawner.boss_spawn = true;
}