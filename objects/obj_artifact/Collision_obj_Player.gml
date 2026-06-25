if (!collected)
{
    collected = true;
    with (obj_player_manager) {
        has_artifact = true;
    }
    
    instance_destroy();
}