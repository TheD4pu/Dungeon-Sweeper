if (instance_exists(obj_player) && !invincible && obj_item8_bomb.explo){
	image_blend = c_red;
	hp -= 1;
	invincible= true;
	
	if (hp <= 0){
		scr_boss_dfeat();
	}
	alarm[0]=180;
}