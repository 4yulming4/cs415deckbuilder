/// @function                   add_clank(clank);
/// @param {int} clank          How much clank to add, can be negative
/// @description                Adds clank, triggers dragon attack at max clank.
function add_clank(clank){
    with (obj_dragon_meter) {
        Clank += clank;
        if (Clank >= Max_Clank) {
            Clank = 0;
            with (obj_player_manager) {
                HP -= 2;
            }
        } else if (Clank < 0) {
            Clank = 0;
        }
    }
}