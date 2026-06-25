if (State = CardState.hand) {
    if (array_length(global.deck_hand) > 0) {
        discard_card(0);
        draw_card();
        draw_card();
    }
}
event_inherited();