function scr_enespawn(){
	// Si no hay personaje no spawnear enemigos
	if (!instance_exists(obj_player)) { return; }
	
	player_x = obj_player.x;
	player_y = obj_player.y;
	
	// enemy spawn
	if (enemy_limit >= 25){
		spawn_enemy(random_range(5,15), choose(0,0,1,1,2,3,4));
	} else if (enemy_limit = 20){
		spawn_enemy(choose(8, 15), choose(0,1,1,4));
	
	} else if (enemy_limit = 15){
		spawn_enemy(choose(8, 15), choose(0,0,0,3,3,4));
	
	} else if (enemy_limit = 10){
		spawn_enemy(choose(15, 30), choose(0,1,1,2));
	} else {
		spawn_enemy(choose(15, 30), choose(0,0,3));
	}
}

function spawn_enemy(alarm_time, enemy_type){
	alarm [0] = alarm_time;
	
	if (!(enemy_count < enemy_limit && !global.shop)){ return; }
	
	do{ // generar x del enemigo
		enemy_x = random_range(384,816);
	} until (player_x + 48 < enemy_x) || (enemy_x < player_x - 48)
			
	do{ // generar y del enemigo
		enemy_y = random_range(144,576);
	} until (player_y + 48 < enemy_y) || (enemy_y < player_y - 48)
			
	instance_create_layer(enemy_x, enemy_y, "Instances", enemy_list[enemy_type]);
	instance_create_layer(enemy_x, enemy_y, "bullet", obj_spawn_effect);
	enemy_count += 1;
}