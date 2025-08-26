laser_length = 48;
laser_end = false;

if (instance_exists(obj_player)){
	laser_dir = point_direction(x, y, obj_player.x, obj_player.y);
	image_angle = laser_dir;
} else {
	laser_dir = 0;
}

laser_width = 4;
laser_speed = 10; // optional for growing beam

x_end = 1;
y_end = 1;

hit = 0;
wall = 0;

origin = collision_line(x,y,1,1, obj_ene4_laser,false,true);

alarm[0] = 60;