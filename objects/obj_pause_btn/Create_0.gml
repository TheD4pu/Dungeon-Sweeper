//Para Pausa
global.paused = false;

x = (global.camera_offset*-1) + camera_get_view_width(view_camera[0])*(25/27);

inital_x = x;
inital_y = y;

//Surface de Pausa
surface_pausa = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
sprite_pausa = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);

brick_blue = make_color_rgb(30,70,195);
dark_blue = make_color_rgb(0,0,54);