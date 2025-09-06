if (!description){
	description = true;
	alarm[0] = 300;
} else {
	if (global.coin >= cost && !purch){
		x = bought_x;
		y = bought_y;
		purch = true;
		global.coin -= cost;
		
		Control.hp += 1;
	}
	
	description = false;
}