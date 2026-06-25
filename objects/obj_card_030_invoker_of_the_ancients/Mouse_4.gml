if (State = CardState.hand) {
    with (obj_player_manager) {
        add_clank(1);
        teleport += 1;
    }
}
event_inherited();