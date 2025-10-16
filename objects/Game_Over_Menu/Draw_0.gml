draw_sprite_part(spr_background,0,1008,0,272,camera_get_view_height(view_camera[0]),global.camera_offset + camera_get_view_width(view_camera[0])/2,0);

draw_set_halign(fa_center);
//highest score
draw_set_font(Title);
draw_text_color(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset + 2,2 + camera_get_view_height(view_camera[0])/8,"HIGHEST SCORE",brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset,camera_get_view_height(view_camera[0])/8, "HIGHEST SCORE");

draw_set_font(High_Score);
draw_text_color(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset + 4,4 + camera_get_view_height(view_camera[0])/8,string(global.highest_score),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset,camera_get_view_height(view_camera[0])/8, string(global.highest_score));

//latest score
draw_set_font(Title);
draw_text_color(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset + 2,2 + camera_get_view_height(view_camera[0])*(2/7),"SCORE",brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset,camera_get_view_height(view_camera[0])*(2/7), "SCORE");

draw_set_font(Score);
draw_text_color(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset + 4,4 + camera_get_view_height(view_camera[0])/4,string(global.latest_score),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(camera_get_view_width(view_camera[0])*(7/26)+global.camera_offset,camera_get_view_height(view_camera[0])/4, string(global.latest_score));
