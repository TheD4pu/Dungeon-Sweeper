function scr_hurt(){
	Control.hp -= 1;
	obj_player.hurt = true;
	obj_player.image_blend = c_red;
	obj_player.alarm[0] = 150;	
	
	//end combo
	Control.combo = 0;
	Control.alarm[0] = 1;
	
	if(Control.hp < 1){
		obj_hp.image_index = 0;
		instance_destroy(obj_player);
		obj_restart.x = 596;
		obj_restart.y = 380;
		global.ad_count -=1;
		
		if (global.ad_count <=0){
		
			if(AdMob_Interstitial_IsLoaded())
			{
				// Loaded: show interstitial ad
			    AdMob_Interstitial_Show();
			}	
			else
			{
				// Not Loaded: load interstitial ad
				AdMob_Interstitial_Load();
			    //show_message_async("Interstitial Still loading, try again soon");
			}
			global.ad_count = 2;
		}
	}
}