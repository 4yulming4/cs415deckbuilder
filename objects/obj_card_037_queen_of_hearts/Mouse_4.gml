if (State = CardState.hand) {
    with (obj_player_manager) {
        if (has_artifact) {
            HP += 1;
        }
    }
}
event_inherited();