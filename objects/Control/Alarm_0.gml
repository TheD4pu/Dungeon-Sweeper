if(combo > cur_cmb && !global.shopmenu){
	cur_cmb = combo;
	alarm[0] = 90;	
	combo_UI_timer = 180;
	
		//give money
	if(floor(combo/5) == (combo/5)){
		global.coin += 2;
	} 
	
} else if(global.shopmenu) { 
	cur_cmb = combo;
	combo_UI_timer = 180;
	if(floor(combo/5) == (combo/5)){
		global.coin += 2;
	} 
	
	
} else{
	//update max combo
	if(cur_cmb > global.maxcombo){
		global.maxcombo = cur_cmb;
	}
	

	//end combo
	cur_cmb = 0;
	combo = 0;
	combo_UI_timer = 30;
}