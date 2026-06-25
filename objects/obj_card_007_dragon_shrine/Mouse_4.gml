if (State = CardState.shop) {
    with (obj_player_manager) {
		if (SP >= other.Cost) {
			if (array_contains(global.deck_discard, 0)) {
                array_delete(global.deck_discard, array_get_index(global.deck_discard,0), 1);
            } else if (array_contains(global.deck_discard, 1)) {
                array_delete(global.deck_discard, array_get_index(global.deck_discard,1), 1);
            }
		} 
    }
}
event_inherited();