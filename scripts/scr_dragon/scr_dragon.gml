/// @function                   add_clank(clank);
/// @param {int} clank          How much clank to add, can be negative
/// @description                Adds clank, triggers dragon attack at max clank.
function add_clank(clank){
    with (obj_dragon_meter) {
        Clank += clank;
		var damage = Clank - Max_Clank; 
        if (Clank > Max_Clank) { //If you are at max clank and gain clank you take damgage
            with (obj_player_manager) {
                HP -= damage; 
            }
			Clank = 10;
        } else if (Clank < 0) {
            Clank = 0;
        }
    }
}