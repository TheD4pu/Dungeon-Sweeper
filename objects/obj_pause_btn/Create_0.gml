//Para Pausa
global.paused = false;

//Surface de Pausa
surface_pausa = surface_create(room_width,room_height);
sprite_pausa=sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);

brick_blue = make_color_rgb(30,70,195);
dark_blue = make_color_rgb(0,0,54);