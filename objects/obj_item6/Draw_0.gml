draw_self();

if (!purch){
	draw_set_halign(fa_center);
	draw_set_font(Title);

	draw_text_color(x+24,y-32,"$"+ string(cost),brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+22,y-30,"$"+ string(cost));
}

if (description){
	draw_set_alpha(0.5);
	draw_roundrect_color(x-148,y-26,x+196,y-2,0,0,false);
	
	draw_set_alpha(1);
	draw_set_font(Description_text);
	draw_set_halign(fa_center);
	draw_text_color(x+23,y-23,"Get one extra point of health",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+24,y-24,"Get one extra point of health");
}