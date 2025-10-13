spd = 18; //velocidad
moving = false; //check if moving
delay = false;
angl = 0; //check player angle

bounce = false;
bounce_center = 0;

combo_trail_x = x;
combo_trail_y = y;

item3_moves = 0;

item5_shield = false;
item5_cooldown = false;

hurt = false;

if (instance_exists(obj_item6) && obj_item6.purch = true){
	Control.hp = 4;
} else {
	Control.hp = 3;
}
