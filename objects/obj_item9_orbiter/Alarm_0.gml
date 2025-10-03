if (instance_exists(obj_player)){
	angl = choose(1,-1, irandom(10)) * point_direction(x,y,obj_player.x,obj_player.y);
	move_towards_point(obj_player.x,obj_player.y,2);
	
	arc += irandom(360);
	
	alarm[0] = 30;
	
	bro = irandom(3);
	
	if (bro = 3){
		instance_destroy();
	}
	
	if (funny <= 10){
		global.coin += irandom(5);
	}
	
	if (funny = 321){
		Control.combo += 10;
		global.points += 10;
	}
	
	if (450 > funny < 500) && (Control.hp < 2){
		Control.hp += choose(1,2);
	}
	
}