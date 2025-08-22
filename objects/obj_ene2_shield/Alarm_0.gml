if(shild){
	shild=false;
	angl= point_direction(x,y,random(1248),random(720));
	image_index=0;
	
	alarm[0]=90;
} else {
	shild=true;
	image_index=1;
	
	alarm[0]=120;
}