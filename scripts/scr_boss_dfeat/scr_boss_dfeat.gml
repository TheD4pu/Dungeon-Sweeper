function scr_boss_dfeat(){
	if (instance_exists(obj_player)){
		instance_destroy();
		global.points += 1;
		global.coin += 10;
		
		Control.combo += 1;
		obj_player.alarm[2] = 60;
		
		obj_spawner.boss_fight = false;
		obj_spawner.alarm[0] = 60;
	}
}