if (State = CardState.shop) {
    with (obj_player_manager) {
		if (SP >= other.Cost) {
			Sword += 1;
		} 
    }
}
event_inherited();