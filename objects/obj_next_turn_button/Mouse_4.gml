//next turn
discard_all(CardState.hand);
draw_card();
draw_card();
draw_card();
draw_card();
draw_card();
with (obj_shop) {
    restock_shop();
}

//reset player
with (obj_player_manager) {
    SP = 0;
    Movement = 0;
    Sword = 0;
}