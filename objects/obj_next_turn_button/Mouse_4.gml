if (room != Room_shop) {
    //go to shop
    Level = room;
    room_goto(Room_shop);
} else {
    //next turn
    room_goto(Level);
    discard_all();
    draw_card();
    draw_card();
    draw_card();
    draw_card();
    draw_card();
    
    //reset player
    with (obj_player_manager) {
        SP = 0;
        Movement = 0;
        Sword = 0;
    }
    
    Turn += 1;
    add_clank(Turn % 2); //add clank every other turn
}