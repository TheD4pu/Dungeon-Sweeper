if (instance_exists(obj_item6) && obj_item6.purch && Control.hp < 4){
	Control.hp += 1;
	instance_destroy();
} else if (Control.hp < 3){
	Control.hp += 1;
	instance_destroy();
}