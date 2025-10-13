global.latest_score = global.points;

if (global.latest_score > global.highest_score){
	global.highest_score = global.latest_score;
}

if (global.maxcombo > global.highest_combo){
	global.highest_combo = global.maxcombo;
}

room_restart();