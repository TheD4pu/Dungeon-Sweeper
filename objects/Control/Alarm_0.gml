if(combo > cur_cmb && !global.shopmenu){
	cur_cmb = combo;
	alarm[0] = 60;
	
} else{
	//update max combo
	if(cur_cmb > global.maxcombo){
		global.maxcombo = cur_cmb;
	}
	
	//give money
	if(cur_cmb >= 3){
		global.coin += round(cur_cmb/2);
	} 
	//end combo
	cur_cmb = 0;
	combo = 0;
}