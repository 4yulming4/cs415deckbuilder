if (State = CardState.shop) {
    with (obj_player_manager) {
		if (SP >= other.Cost) {
			HP += 1;
		} 
    }
}
event_inherited();