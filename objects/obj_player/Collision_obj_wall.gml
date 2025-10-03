moving = false;
delay = true;

bounce_center = point_direction(x,y,(camera_get_view_width(view_camera[0])/2)+global.camera_offset,camera_get_view_height(view_camera[0])/2);
bounce = true;
alarm[1] = 9;

if (global.shake_setting){
	Control.screen_shake = 1;
	Control.alarm[1] = 2;
}

if(instance_exists(obj_item1)){
	item1_function();
}

if (instance_exists(obj_item4)){
	instance_destroy(obj_item4_swords);
}

if (!item5_shield){
	sprite_index = spr_player;
	audio_play_sound(wav_wall_hit,1,false);
} else {
	sprite_index = spr_item5player;
	audio_play_sound(wav_wall_hit,1,false);
}

