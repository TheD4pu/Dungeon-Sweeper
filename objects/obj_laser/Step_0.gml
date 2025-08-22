if (!laser_end) {
    laser_length += laser_speed;
	
	// Calculate end point

	x_end = x + lengthdir_x(laser_length, laser_dir);
	y_end = y + lengthdir_y(laser_length, laser_dir);	
}

// Check collision
wall = collision_line(x, y, x_end, y_end, obj_wall, false, true);
hit = collision_line(x, y, x_end, y_end, obj_player, false, true);


if (hit != noone && obj_player.hurt = false) {
	scr_hurt();
}


if (wall != noone){
	laser_end = true;
}

if (!instance_exists(origin)){
	instance_destroy();
}

var ene0_hit = collision_line(x, y, x_end, y_end, obj_ene0_dash, false, true);
if (ene0_hit != noone) {
	instance_destroy(ene0_hit);
	obj_spawner.enemy_count -=1;
}

var ene1_hit = collision_line(x, y, x_end, y_end, obj_ene1_wiz, false, true);
if (ene1_hit != noone) {
	instance_destroy(ene1_hit);
	obj_spawner.enemy_count -=1;
}

var ene2_hit = collision_line(x, y, x_end, y_end, obj_ene2_shield, false, true);
if (ene2_hit != noone) {
	instance_destroy(ene2_hit);
	obj_spawner.enemy_count -=1;
}

var ene3_hit = collision_line(x, y, x_end, y_end, obj_ene3_expl, false, true);
if (ene3_hit != noone) {
	instance_destroy(ene3_hit);
	obj_spawner.enemy_count -=1;
}