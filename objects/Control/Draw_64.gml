draw_set_halign(fa_left);
draw_set_font(Title);

draw_text_color(34,320, "SCORE: " + string(global.points),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,318, "SCORE: " + string(global.points));

draw_text_color(34,384, "COMBO: " + string(combo),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,382, "COMBO: " + string(combo));
draw_line_width(30,420,180,420,3);


//draw_text(32,384, "Current combo: " + string(cur_cmb)); //combo testing

draw_text_color(34,448, "COIN: " + string(global.coin),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,446, "COIN: " + string(global.coin));

//draw_text(32,480, "Hp: " + string(obj_player.hp)); //healing testing	

//draw_text(32,544, "Shop: " + string(global.shop)); //shop testing	

if (!instance_exists(obj_player) && global.shop = false){
	draw_set_halign(fa_center);

	draw_text_color(618,322, "GAME OVER",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(620,320, "GAME OVER");
}