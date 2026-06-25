if (room != Room_shop) {
    
    with (obj_player_manager) {
        if (has_artifact == true) {
            var in_start = false;
            //if at starting point
            if (obj_Player.x - 10 < obj_Player.start_x &&
            	obj_Player.x + 10 > obj_Player.start_x &&
            	obj_Player.y - 10 < obj_Player.start_y &&
            	obj_Player.y + 10 > obj_Player.start_y
            	) {
                //then game win
                add_clank(-100);
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
            } else {
                //go to shop
                other.Level = room;
                room_goto(Room_shop);
            }
        } else {
            //go to shop
            other.Level = room;
            room_goto(Room_shop);
        }
    }
} else {
    if (array_length(global.deck_hand) > 0) {
        return;
    }
    //next turn
    room_goto(Level);
    draw_card();
    draw_card();
    draw_card();
    draw_card();
    draw_card();
    
    //reset player
    with (obj_player_manager) {
        SP = 0;
        Sword = 0;
        Movement = Move_next_turn;
        teleport = 0;
        Move_next_turn = 0;
    }
    
    Turn += 1;
    add_clank(Turn % 2); //add clank every other turn
}