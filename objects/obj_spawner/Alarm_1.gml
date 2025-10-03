instance_create_layer(x,y,"Instances", choose (obj_boss1_dash,obj_boss2_eye,obj_boss3_ghost));
sprite_index = spr_spawn;

if (instance_exists(obj_player)) {
	obj_player.delay = false; 
}