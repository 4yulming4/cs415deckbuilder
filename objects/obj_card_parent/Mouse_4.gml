if (State == CardState.hand) {
    var index = array_find_index(global.deck_hand, function(_element) {
        return _element == self;
        });
    array_delete(global.deck_hand, index, 1);
    array_push(global.deck_play, self);
    State = CardState.play;
    redraw(CardState.hand);
    redraw(CardState.play);
    
    with (obj_player_manager) {
        SP += other.SP;
        Sword += other.Sword;
        Movement += other.Movement;
    }
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
    array_push(global.deck_cards, ID);
	instance_destroy();
}