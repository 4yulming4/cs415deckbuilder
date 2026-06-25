var in_start = false;

if (obj_Player.x - 10 < obj_Player.start_x &&
	obj_Player.x + 10 > obj_Player.start_x &&
	obj_Player.y - 10 < obj_Player.start_y &&
	obj_Player.y + 10 > obj_Player.start_y
	) {
	in_start = true
}


show_debug_message(string(obj_Player.x) + " " + string(obj_Player.start_x) + " " + string(obj_Player.y) + " " + string(obj_Player.start_y));
if (obj_player_manager.has_artifact && in_start) {
	
	if (obj_player_manager.level == 1) {
		room_goto_next();
		obj_player_manager.level++;
		obj_player_manager.victory_points += 10;
	} else if (obj_player_manager.level == 2) {
		room_goto_next();
		obj_player_manager.level++;
		obj_player_manager.victory_points += 20;
	} else if (obj_player_manager.level == 3) {
		obj_player_manager.victory_points += 30;
		game_complete(true);
	}
	
}
