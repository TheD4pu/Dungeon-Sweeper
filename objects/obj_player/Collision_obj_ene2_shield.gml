if (obj_ene2_shield.shild && moving){
	angl = -angl*random(360);
	obj_ene2_shield.sdhp -= 1;
	//obj_eneshield.shild=false;
	//obj_eneshield.image_index=0;
	
} else if (obj_ene2_shield.shild){
	angl = -angl;
	delay = true;
	alarm[1] = 12;

	bounce = true;
} else if (!hurt && !moving){
	scr_hurt();
}