if (instance_exists(obj_player)){
	if (hp > 1 && obj_item8_bomb.explo){
		hp -= 1;
		sprite_index = spr_ene_blocker_down;
		move = false;

	} else {
		scr_enedft();
	}
}