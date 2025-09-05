draw_self();

if (description){
	draw_set_alpha(0.5);
	draw_roundrect_color(x-148,y-26,x+196,y-2,0,0,false);
	
	draw_set_alpha(1);
	draw_set_font(Description_text);
	draw_set_halign(fa_center);
	draw_text_color(x+23,y-23,"Get a temporal shield while you keep your combo",brick_blue,brick_blue,brick_blue,brick_blue,1);
	draw_text(x+24,y-24,"Get a temporal shield while you keep your combo");
}