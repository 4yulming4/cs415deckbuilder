if (State = CardState.hand) {
    with (obj_player_manager) {
        if (has_artifact) {
            teleport += 1;
        }
    }
}
event_inherited();