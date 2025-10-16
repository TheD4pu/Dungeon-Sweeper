function scr_hurt(){
	Control.hp -= 1;
	obj_player.hurt = true;
	obj_player.image_blend = c_red;
	obj_player.alarm[0] = 150;	
	
	//end combo
	Control.combo = 0;
	Control.alarm[0] = 1;
	
	if (instance_exists(obj_item9)){
		var orb = choose(1,2,3);
			
		if (orb = 3){
			instance_create_layer(x,y,"bullet",obj_item9_orbiter);
		}
	}
	
	
	//Game end
	if(Control.hp < 1){
		obj_hp.image_index = 0;
		instance_destroy(obj_player);
		audio_play_sound(wav_player_defeat,1,false);
		
		instance_create_depth(camera_get_view_width(view_camera[0])*(9/19)+global.camera_offset,camera_get_view_height(view_camera[0])/2,-1,obj_continue_btn);
		
		obj_restart.x = (camera_get_view_width(view_camera[0])*(7/19))+global.camera_offset;
		obj_restart.y = camera_get_view_height(view_camera[0])/2; 

		obj_exit_game_btn.x = (camera_get_view_width(view_camera[0])*(11/19))+global.camera_offset;
		obj_exit_game_btn.y = camera_get_view_height(view_camera[0])/2;
		
		obj_pause_btn.y = -100;
		
		obj_options_btn.y = -100;
		
		global.ad_count -= 1;
		
		/*if (global.ad_count <= 0){
		
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
		}*/
	}
}