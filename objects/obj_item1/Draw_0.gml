draw_self();
if (!purch){
	draw_set_halign(fa_center);
	draw_set_font(Title);

	draw_text_color(x+24,y-32,"$"+ string(cost),brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+22,y-30,"$"+ string(cost));
}


if (description){
	draw_set_alpha(0.5);
	draw_roundrect_color(x-96,y-26,x+144,y-2,0,0,false);
	
	draw_set_alpha(1);
	draw_set_font(Description_text);
	draw_set_halign(fa_center);
	draw_text_color(x+23,y-23,"Shoots bullets after hitting a wall",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+24,y-24,"Shoots bullets after hitting a wall");
}