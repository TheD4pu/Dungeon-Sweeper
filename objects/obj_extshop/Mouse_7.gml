if (global.shopmenu){
	instance_destroy(obj_shop_menu);
	y=-48
	
	if(!obj_item1.purch){
		instance_destroy(obj_item1);
	}
	
	if(!obj_item2.purch){
		instance_destroy(obj_item2);
	}
	
	if(!obj_item3.purch){
		instance_destroy(obj_item3);
	}
	
	if(!obj_item4.purch){
		instance_destroy(obj_item4);
	}
	
	if(instance_exists(obj_heart_heal) && !obj_heart_heal.purch){
		instance_destroy(obj_heart_heal);
	}
}
alarm[0]=60;