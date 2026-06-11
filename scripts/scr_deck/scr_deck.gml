//ids 
global.deck_cards = [0, 0, 2, 3, 1, 1, 1, 1, 1, 1];
global.deck_discard = [];

//discard
global.deck_hand = [];
global.deck_play = [];

/// @function               draw_card();
/// @description            Draws & places a card, effects global.deck.
function draw_card(){
    if (array_length(global.deck_cards) == 0) {
        if (array_length(global.deck_discard) == 0) {
            return; //can't draw
        }
        shuffle_deck();
    }
    
    var chosenIndex = irandom_range(0, array_length(global.deck_cards) - 1);
    var cardOffset = 128 * (array_length(global.deck_hand));
    var cardID = instance_create_layer(160 + cardOffset, 590, "Instances", 
        get_card_obj(global.deck_cards[chosenIndex]), {
        state : CardState.hand
        })
    array_push(global.deck_hand, cardID);
    array_delete(global.deck_cards, chosenIndex, 1);
}
/// @function                   draw_card(state);
/// @param {CardState} state    Hand/Play, no shop currently
/// @description                Discards & removes a card, effects global.deck & triggers redraw.
function discard_card(index, state){
    if (state == CardState.hand) {
        arr = global.deck_hand;
    } else if (state == CardState.play) {
        arr = global.deck_play;
    } else {
        return;
    }
    array_push(global.discard, arr[i].ID);
    instance_destroy(arr[i])
    array_delete(arr, index, 1);
    
    redraw(state);
}
/// @function                   draw_card(state);
/// @param {CardState} state    Hand/Play, no shop currently
/// @description                Discards & removes all card, effects global.deck & triggers redraw.
function discard_all(state) {
    if (state == CardState.hand) {
        arr = global.deck_hand;
    } else if (state == CardState.play) {
        arr = global.deck_play;
    } else {
        return;
    }
    //if nothing to discard
    if (array_length(arr) == 0) {
        return;
    }
    
    for (var i = 0; i < array_length(arr); i++) {
        array_push(global.deck_discard, arr[i].ID);
        instance_destroy(arr[i]);
    }
    array_delete(arr, 0, array_length(arr));
}
function shuffle_deck() {
    global.deck_cards = global.deck_discard;
    global.deck_discard = [];
}
/// @function                   redraw();
/// @param {CardState} state    Hand/Play, no shop currently
/// @description                Moves cards in the relevant array to the right position.
function redraw(state) {
    var cardOffset = 128;
    var xOffset;
    var yOffset;
    var arr;
    if (state == CardState.hand) {
        xOffset = 160;
        yOffset = 590;
        arr = global.deck_hand;
    } else if (state == CardState.play) {
        xOffset = 32;
        yOffset = 400;
        arr = global.deck_play;
    } else {
        return;
    }
    
    for (var i = 0; i < array_length(arr); i++) {
        with (arr[i]) {
            x = xOffset + cardOffset * i;
            y = yOffset;
        }
    }
}