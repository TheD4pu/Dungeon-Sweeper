//script de derrota de enemigo
function scr_enedft(){
	if (instance_exists(obj_player) && instance_exists(obj_spawner)){
		instance_destroy();
		global.points += 1;
		obj_spawner.enemy_count -= 1;
		
		Control.combo += 1;
		Control.alarm[0] = 60;
	}
}