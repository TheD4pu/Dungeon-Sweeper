if (instance_exists(obj_player)){
	if (obj_player.moving && hp > 1){
		hp -= 1;
		obj_player.moving = false;
		sprite_index = spr_ene_blocker_down;
		image_speed = 2;
		move = false;

	} else if (obj_player.moving) {
		scr_enedft();
	} else {
		obj_player.bounce = true;
		obj_player.alarm[1] = 20;

	}
}