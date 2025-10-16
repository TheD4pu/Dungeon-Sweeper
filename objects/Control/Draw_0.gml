draw_set_halign(fa_left);
draw_set_font(Title);

draw_text_color(x+2,320, "SCORE: " + string(global.points),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(x,318, "SCORE: " + string(global.points));

if (combo >= 25){
	draw_sprite_part(spr_combo_fire,-1,0,0,combo_UI_timer,64,x-12,356);
}

draw_text_color(x+2,384, "COMBO: " + string(combo),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(x,382, "COMBO: " + string(combo));

draw_line_width_color(x-10,422,x + combo_UI_timer - 10,422,3,brick_blue,brick_blue);
draw_line_width(x-12,420,x + combo_UI_timer - 12,420,3);

draw_sprite(spr_UI_coin,0,x - 12,422)
//draw_text(32,384, "Current combo: " + string(cur_cmb)); //combo testing

draw_text_color(x+2,448, "GOLD: " + string(global.coin),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(x,446, "GOLD: " + string(global.coin));

//draw_text(32,480, "Hp: " + string(obj_player.hp)); //healing testing	

//draw_text(32,544, "Shop: " + string(global.shop)); //shop testing	

layer_set_visible("Screen_Shake",screen_shake);

if (!instance_exists(obj_player) && global.shop_menu = false){
	draw_roundrect_color((camera_get_view_width(view_camera[0])/4)+global.camera_offset,camera_get_view_height(view_camera[0])/3,((camera_get_view_width(view_camera[0])/15)*11)+global.camera_offset,(camera_get_view_height(view_camera[0])/3)*2,dark_blue,dark_blue,false);
	
	draw_set_halign(fa_center);

	draw_text_color((camera_get_view_width(view_camera[0])/2)+2+global.camera_offset,272, "CONTINUE?",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text((camera_get_view_width(view_camera[0])/2)+global.camera_offset,270, "CONTINUE?");
}

