draw_self();

if (!purch){
	draw_set_halign(fa_center);
	draw_set_font(Title);

	draw_text_color(x+24,y-32,"$"+ string(cost),brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+22,y-30,"$"+ string(cost));
} else {
	if (global.coin > 100){
		image_index = 3;
	} else if (global.coin > 50){
		image_index = 2;
	} else if (global.coin > 20){
		image_index = 1;
	} else {
		image_index = 0;
	}
}

if (description){
	draw_set_alpha(0.8);
	draw_roundrect_color(x-82,y+62,x+130,y+88,dark_blue,dark_blue,false);
	
	draw_set_alpha(1);
	draw_set_font(Description_text);
	draw_set_halign(fa_center);
	draw_text_color(x+23,y+62,"Hungry for some gold",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+24,y+61,"Hungry for some gold");
}