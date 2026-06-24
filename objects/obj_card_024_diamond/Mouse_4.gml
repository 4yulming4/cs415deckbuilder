if (State = CardState.shop) {
    with (obj_player_manager) {
		if (SP >= other.Cost) {
			add_clank(2);
		} 
    }
}
event_inherited();