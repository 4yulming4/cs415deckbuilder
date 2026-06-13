//next turn
discard_all(CardState.hand);
discard_all(CardState.play);
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