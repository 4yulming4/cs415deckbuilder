if (State = CardState.hand) {
    with (obj_player_manager) {
        if (has_artifact) {
            SP += 2;
        }
    }
}
event_inherited();