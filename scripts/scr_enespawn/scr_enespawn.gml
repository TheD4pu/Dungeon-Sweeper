function scr_enespawn(){
	// Si no hay personaje no spawnear enemigos
	if (!instance_exists(obj_player)) { return; }
	
	player_x = obj_player.x;
	player_y = obj_player.y;
	
	if (!(enemy_count < enemy_limit && !global.shop)){ return; }
	
	do{ // generar x del enemigo
		enemy_x = random_range(384,816);
	} until (player_x + 48 < enemy_x) || (enemy_x < player_x - 48)
			
	do{ // generar y del enemigo
		enemy_y = random_range(144,576);
	} until (player_y + 48 < enemy_y) || (enemy_y < player_y - 48)
		
	instance_create_layer(enemy_x, enemy_y, "Instances", obj_spawn_effect);

	// enemy spawn
	if (obj_spawner.enemy_limit >= 50){
		alarm[0] = random_range(1,5);
	} else if (obj_spawner.enemy_limit >= 25){
		alarm[0] = random_range(5,15);
	} else if (obj_spawner.enemy_limit = 20){
		alarm[0] = choose(8, 15);
	
	} else if (obj_spawner.enemy_limit = 15){
		alarm[0] = choose(8, 15);
	
	} else if (obj_spawner.enemy_limit = 10){
		alarm[0] = choose(15, 30);
	} else {
		alarm[0] = choose(15, 30);
	}

}