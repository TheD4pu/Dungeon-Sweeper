draw_set_halign(fa_left);
draw_set_font(Title);
draw_text(32,288, "Score: " + string(global.points));

draw_text(32,352, "Combo: " + string(global.maxcombo));

//draw_text(32,384, "Current combo: " + string(cur_cmb)); //combo testing

draw_text(32,416, "Coin: " + string(global.coin));

//draw_text(32,480, "Hp: " + string(obj_player.hp)); //healing testing	

//draw_text(32,544, "Shop: " + string(global.shop)); //shop testing	


