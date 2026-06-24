if (State = CardState.shop) {
    with (obj_player_manager) {
		if (Sword >= other.Cost) {
			draw_card();
            draw_card();
		} 
    }
}
event_inherited();