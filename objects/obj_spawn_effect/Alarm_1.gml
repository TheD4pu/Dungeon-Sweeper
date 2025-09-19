	// enemy spawn
	if (obj_spawner.enemy_limit >= 25){
		spawn_enemy(choose(0,0,1,1,2,3,4));
	} else if (obj_spawner.enemy_limit = 20){
		spawn_enemy(choose(0,1,1,4));
	
	} else if (obj_spawner.enemy_limit = 15){
		spawn_enemy(choose(0,0,0,3,3,4));
	
	} else if (obj_spawner.enemy_limit = 10){
		spawn_enemy(choose(0,1,1,2));
	} else {
		spawn_enemy(choose(0,0,3));
	}


function spawn_enemy(enemy_type){
	
	instance_create_layer(x, y, "Instances", obj_spawner.enemy_list[enemy_type]);

	obj_spawner.enemy_count += 1;
}