if (State == CardState.hand) {
    var index = array_find_index(global.deck_hand, function(_element) {
        var cardID = flexpanel_node_get_struct(_element).layerElements[0].instanceId;
        return cardID == self.id;
        });
    array_push(global.deck_discard, ID);
    flexpanel_delete_node(global.deck_hand[index]);
    array_delete(global.deck_hand, index, 1);
    
    with (obj_player_manager) {
        SP += other.SP;
        Sword += other.Sword;
        Movement += other.Movement;
    }
    
    instance_destroy();
    
} else if (State == CardState.shop) {
	
	//if its a monster use swords instead
	if (Monster) {
		with (obj_player_manager) {
			if (Sword < other.Cost) {
				return;
			} else {
				Sword -= other.Cost;
			}
		}
	} else if (device) { //if its a device
		with (obj_player_manager) {
			if (SP < other.Cost) {
				return; //can't afford
			} else {
				SP -= other.Cost;
			}
		}
	} else {
		with (obj_player_manager) {
			if (SP < other.Cost) {
				return; //can't afford
			} else {
				SP -= other.Cost;
			}
		}
		array_push(global.deck_discard, ID);
	}
	with (obj_shop) {
		shop_cards[other.shop_index] = noone;
	}
	instance_destroy();
}