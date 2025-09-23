function scr_buy_item(){
	if (global.coin >= cost && !purch){
		x = bought_x;
		y = bought_y;
		purch = true;
		global.coin -= cost;
		audio_play_sound(wav_item_buy,1,false);
	}
}