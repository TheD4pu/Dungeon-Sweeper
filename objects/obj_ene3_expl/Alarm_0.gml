if(!explo){
	explo = true;
	image_index = 2;
	alarm[0] = 30;
	
} else{
	instance_destroy();
	obj_spawner.enemy_count-=1;
}