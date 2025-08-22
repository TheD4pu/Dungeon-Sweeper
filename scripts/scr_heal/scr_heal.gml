function scr_heal(){
	Control.hp += 1;
	
	//ui update
	if (Control.hp = 2){
		obj_hp.image_index = 2;
	} else{
		obj_hp.image_index = 3;
	}
	
	if (instance_exists(obj_heart_heal)){
		instance_destroy(obj_heart_heal);
	}
}