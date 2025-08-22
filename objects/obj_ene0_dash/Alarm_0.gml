if (instance_exists(obj_player)){
	angl = point_direction(x,y,obj_player.x,obj_player.y);
	atking = true;
	sprite_index = spr_ene_dash_atk;
}