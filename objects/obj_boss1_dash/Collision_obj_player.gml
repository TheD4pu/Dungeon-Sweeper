if (instance_exists(obj_player) && obj_player.moving && !invincible){
	atking = false;
	invincible = true;
	hurt = true;
	angl = point_direction(x,y,624,360);
	shot_count = 0;

	hp -= 1;
	image_blend = c_red;
	if (hp <= 0){
		scr_boss_dfeat();
	}
	
	alarm[1] = 20;
}