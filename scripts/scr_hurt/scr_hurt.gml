function scr_hurt(){
	Control.hp -= 1;
	obj_player.hurt = true;
	obj_player.image_blend = c_red;
	obj_player.alarm[0] = 150;	
	
	//end combo
	Control.combo = 0;
	Control.alarm[0] = 1;
	
	if(Control.hp < 1){
		obj_hp.image_index = 0;
		instance_destroy(obj_player);
	}
}