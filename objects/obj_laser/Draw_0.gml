// Basic settings
var mid_frame_width = sprite_get_width(spr_laser)-16; // assuming all frames are same height

// Draw base (frame 0)
draw_sprite_ext(spr_laser, 0, x, y, 1, 1, image_angle, c_white, 1);

// Move to start of middle segment
var step_x = lengthdir_x(1, image_angle);
var step_y = lengthdir_y(1, image_angle);

// How many pixels to offset from origin
var offset = sprite_get_width(spr_laser)-16;

// Remaining distance after base and tip
var body_length = laser_length - floor(offset*1.5);

var num_segments = 1 + floor(body_length / offset);
var draw_x = x + lengthdir_x(offset, image_angle);
var draw_y = y + lengthdir_y(offset, image_angle);

// Draw middle segments (frame 1)
for (var i = 0; i < num_segments; i++) {
	draw_sprite_ext(spr_laser, 1, draw_x, draw_y, 1, 1, image_angle, c_white, 1);
	draw_x += step_x * offset;
	draw_y += step_y * offset;
}

// Final piece for tip (frame 2)
draw_sprite_ext(spr_laser, 2, x + lengthdir_x(laser_length-24, image_angle), y + lengthdir_y(laser_length-24, image_angle), 1, 1, image_angle, c_white, 1);
