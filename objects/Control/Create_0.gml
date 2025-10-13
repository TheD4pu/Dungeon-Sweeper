x = global.camera_offset + camera_get_view_width(view_camera[0])*(1/27);

hp = 3;
continue_cost = 50;

global.points = 0;
global.maxcombo = 0;

global.shop = false;
global.shopmenu = false;
global.coin = 0;

global.items = 0;

combo = 0;
cur_cmb = 0;
combo_UI_timer = global.camera_offset + camera_get_view_width(view_camera[0])*(1/27);

screen_shake = 0;

scr_random();

//colors

brick_blue = make_color_rgb(30,70,195);
dark_blue = make_color_rgb(0,0,54);
