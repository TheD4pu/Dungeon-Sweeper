draw_set_halign(fa_center);
draw_set_font(Score);

draw_text_color(camera_get_view_width(view_camera[0])*(2/26)+global.camera_offset + 4,4 + camera_get_view_height(view_camera[0])/3,string(global.latest_score),brick_blue,brick_blue,brick_blue,brick_blue,1);
draw_text(camera_get_view_width(view_camera[0])*(2/26)+global.camera_offset,camera_get_view_height(view_camera[0])/3, string(global.latest_score));