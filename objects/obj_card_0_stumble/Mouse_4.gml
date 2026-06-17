//special effect
if (State == CardState.hand) {
    with (obj_player_manager) {
        Clank += 1;
    }
}

//normal card behavior
event_inherited();