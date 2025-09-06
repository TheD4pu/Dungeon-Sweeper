draw_set_halign(fa_left);
draw_set_font(Title);

draw_text_color(34,310, "SCORE: " + string(global.points),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,308, "SCORE: " + string(global.points));

draw_text_color(34,374, "COMBO: " + string(global.maxcombo),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,372, "COMBO: " + string(global.maxcombo));

//draw_text(32,384, "Current combo: " + string(cur_cmb)); //combo testing

draw_text_color(34,438, "COIN: " + string(global.coin),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(32,436, "COIN: " + string(global.coin));

//draw_text(32,480, "Hp: " + string(obj_player.hp)); //healing testing	

//draw_text(32,544, "Shop: " + string(global.shop)); //shop testing	


