if (State = CardState.hand) {
    if (array_contains(global.deck_discard, 1)) {
        array_delete(global.deck_discard, array_get_index(global.deck_discard,1), 1);
    }
}
event_inherited();
