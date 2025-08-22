if(appr){
	appr=false;
} else{
	appr=true;
}


if(instance_exists(obj_player)){
	angl=point_direction(x,y,obj_player.x+random(10),obj_player.y+random(10));	
}

alarm[1]=60;	