function scr_boss_dfeat(){
	if (instance_exists(obj_player)){
		instance_destroy();
		global.points += 1;
		
		Control.combo += 10;
		Control.alarm[0] = 1;
		Control.combo_UI_timer = 180;
		
		obj_spawner.boss_fight = false;
		obj_spawner.alarm[0] = 60;
	}
}