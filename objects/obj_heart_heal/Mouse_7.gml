if (instance_exists(obj_item6) && obj_item6.purch && global.coin>=cost && Control.hp<4){
	global.coin-=cost;
	Control.hp += 1;
	instance_destroy();
} else if (global.coin>=cost && Control.hp<3){
	global.coin-=cost;
	Control.hp += 1;
	instance_destroy();
}