if(shild){
	shild = false;
	angl = point_direction(x,y,random(1248),random(720));
	sprite_index = spr_ene_shield;
	
	alarm[0] = 90;
} else {
	shild = true;
	sprite_index = spr_ene_shielding;
	
	alarm[0] = 120;
}