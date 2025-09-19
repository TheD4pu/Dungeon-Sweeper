//Shop check and spawn
if (global.points >= enemy_limit*10){
	
	if(!instance_exists(obj_shop) && (enemy_limit*10 <= global.points) && global.points < 550){
		enemy_limit += 5;
		global.shop = true;
		instance_create_layer(624,-32,"bullet",obj_shop);
	} else {
		enemy_limit += 5;
	}
}

if (!boss_fight && global.points > 525 && !global.shop){
	scr_enespawn();
	alarm[1] = 180;
	boss_fight = true;
	sprite_index = spr_spawn_boss;
	
} else if (boss_spawn && global.points <= 500 && !global.shop) {
	alarm[1] = 240;
	boss_fight = true;
	boss_spawn = false;
	sprite_index = spr_spawn_boss;

} else {
	scr_enespawn();
}