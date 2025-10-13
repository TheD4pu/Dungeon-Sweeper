global.latest_score = global.points;

if (global.latest_score > global.highest_score){
	global.highest_score = global.latest_score;
}

if (global.maxcombo > global.highest_combo){
	global.highest_combo = global.maxcombo;
}

audio_stop_all();

room_goto(Room_game_over);
