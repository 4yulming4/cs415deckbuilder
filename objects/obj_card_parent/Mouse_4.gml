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
	with (obj_player_manager) {
        if (SP < other.Cost) {
            return; //can't afford
        } else {
            SP -= other.Cost;
        }
    }
    with (obj_shop) {
		shop_cards[other.shop_index] = noone;
	}
    array_push(global.deck_discard, ID);
	instance_destroy();
}