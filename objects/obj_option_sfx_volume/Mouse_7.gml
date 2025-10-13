switch global.sfx_volume {
	case 100:
		audio_group_set_gain(audio_group_sfx,0,0);
		global.sfx_volume = 0;
		image_index = 0;
	break;

	case 75:
		audio_group_set_gain(audio_group_sfx,1,0);
		global.sfx_volume = 100;
		image_index = 4;
	break;
	
	case 50:
		audio_group_set_gain(audio_group_sfx,0.75,0);
		global.sfx_volume = 75;
		image_index = 3;
	break;
	
	case 25:
		audio_group_set_gain(audio_group_sfx,0.5,0);
		global.sfx_volume = 50;
		image_index = 2;
	break;
	
	case 0:
		audio_group_set_gain(audio_group_sfx,0.25,0);
		global.sfx_volume = 25;
		image_index = 1;
	break;
}