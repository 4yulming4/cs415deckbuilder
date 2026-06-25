if (State = CardState.shop) {
    with (obj_player_manager) {
		if (SP >= other.Cost) {
			Move_next_turn += 2;
		} 
    }
}
event_inherited();