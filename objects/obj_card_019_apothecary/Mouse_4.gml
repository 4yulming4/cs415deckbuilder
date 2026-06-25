if (State = CardState.hand) {
    if (array_length(global.deck_hand) > 0) {
        discard_card(0);
        with (obj_player_manager) {
            HP += 1;
        }
    }
}
event_inherited();