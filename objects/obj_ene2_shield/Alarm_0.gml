if(shild){
	shild = false;
	angl = irandom(360);
	sprite_index = spr_ene_shield;
	
	alarm[0] = 90;
} else {
	shild = true;
	sprite_index = spr_ene_shielding;
	
	alarm[0] = 120;
}