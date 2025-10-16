if (instance_exists(obj_player) && !invincible){
	atking = false;
	invincible = true;
	hurt = true;
	angl = point_direction(x,y,624,360);
	shot_count = 0;

	hp -= 1;
	image_blend = c_red;
	image_index = 0;
	if (hp <= 0){
		scr_boss_dfeat();
	}
	
	alarm[1] = 20;
	
	obj_item8_bomb.alarm[0] = 1;
}