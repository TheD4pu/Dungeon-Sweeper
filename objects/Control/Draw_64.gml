draw_set_halign(fa_left);
draw_set_font(Title);

draw_text_color(34,290, "SCORE: " + string(global.points),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,288, "SCORE: " + string(global.points));

draw_text_color(34,354, "COMBO: " + string(global.maxcombo),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,352, "COMBO: " + string(global.maxcombo));

//draw_text(32,384, "Current combo: " + string(cur_cmb)); //combo testing

draw_text_color(34,418, "COIN: " + string(global.coin),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,416, "COIN: " + string(global.coin));

//draw_text(32,480, "Hp: " + string(obj_player.hp)); //healing testing	

//draw_text(32,544, "Shop: " + string(global.shop)); //shop testing	


