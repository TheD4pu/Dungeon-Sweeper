var orb = choose(0,1);

if (instance_exists(obj_player) && orb = 1 && !invincible){
	image_blend = c_red;
	hp -= 1;
	invincible= true;
	
	if (hp <= 0){
		scr_boss_dfeat();
	}
	alarm[0] = 180;
	global.coin += choose(0,1);
}