if (State = CardState.hand) {
    with (obj_player_manager) {
        Teleport_next_turn += 1;
    }
}
event_inherited();