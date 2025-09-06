if (instance_exists(obj_item6) && obj_item6.purch){
	
	switch (Control.hp) {
		case 0:
			draw_sprite(spr_hp,0,64,64);
			draw_sprite(spr_hp,0,64,128);
			draw_sprite(spr_hp,0,64,192);
			draw_sprite(spr_hp,0,64,256);
		break;
		case 1:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,0,64,128);
			draw_sprite(spr_hp,0,64,192);
			draw_sprite(spr_hp,0,64,256);
		break;
		case 2:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,1,64,128);
			draw_sprite(spr_hp,0,64,192);
			draw_sprite(spr_hp,0,64,256);
		break;
		case 3:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,1,64,128);
			draw_sprite(spr_hp,1,64,192);
			draw_sprite(spr_hp,0,64,256);
		break;
		case 4:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,1,64,128);
			draw_sprite(spr_hp,1,64,192);
			draw_sprite(spr_hp,1,64,256);
		break;
		
	}
} else{
	switch (Control.hp) {
		case 0:
			draw_sprite(spr_hp,0,64,64);
			draw_sprite(spr_hp,0,64,128);
			draw_sprite(spr_hp,0,64,192);
		break;
		case 1:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,0,64,128);
			draw_sprite(spr_hp,0,64,192);
		break;
		case 2:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,1,64,128);
			draw_sprite(spr_hp,0,64,192);
		break;
		case 3:
			draw_sprite(spr_hp,1,64,64);
			draw_sprite(spr_hp,1,64,128);
			draw_sprite(spr_hp,1,64,192);
		break;
	}
}