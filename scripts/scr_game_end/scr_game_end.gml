function game_complete(result = false) { //True -> Win and False -> Lose
	
	obj_player_manager.game_over = true;
	layer_set_visible("UILayer", false);
    
	if (result) { //Win
		show_debug_message("You Won! Score: " + string(obj_player_manager.victory_points));
		room_goto(game_win_room);
		
	} else { //Lose
		show_debug_message("You Lose! Score: " + string(obj_player_manager.victory_points));
		room_goto(game_lose_room);
	}
	
}
