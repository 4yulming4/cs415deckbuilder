//stores ids 
global.deck_cards = [0, 0, 2, 3, 1, 1, 1, 1, 1, 1];
global.deck_discard = [];

//stores flexpanel instances
global.deck_hand = [];

/// @function               draw_card();
/// @description            Draws & places a card, effects global.deck.
function draw_card(){
    var ui_layer = layer_get_flexpanel_node("UILayer");
    var ui_hand = flexpanel_node_get_child(ui_layer, "Hand");
    
    if (array_length(global.deck_cards) == 0) {
        if (array_length(global.deck_discard) == 0) {
            return; //can't draw
        }
        shuffle_deck();
    }
    
    var chosenIndex = irandom_range(0, array_length(global.deck_cards) - 1);
    /*var cardOffset = 128 * (array_length(global.deck_hand));
    var cardID = instance_create_layer(160 + cardOffset, 590, "Instances", 
        get_card_obj(global.deck_cards[chosenIndex]), {
        state : CardState.hand
        })*/
    
    var structInstance = {
        type: "Instance",
        instanceObjectIndex: get_card_obj(global.deck_cards[chosenIndex]),
        instanceColour: -1,
    }
    var structFlexpanel = {
        layerElements: [structInstance]
    }
    var node = flexpanel_create_node(structFlexpanel)
    var index = flexpanel_node_get_num_children(ui_hand);
    flexpanel_node_insert_child(ui_hand, node, index);
    var flexpanelID = flexpanel_node_get_child(ui_hand, index);
    //flexpanel_node_get_struct().layerElements[0].instanceId;
    
    array_push(global.deck_hand, flexpanelID);
    array_delete(global.deck_cards, chosenIndex, 1);
}
/// @function                   draw_card(state);
/// @param {CardState} index    Index of card to discard.
/// @description                Discards & removes a card in hand, effects global.discard.
function discard_card(index){
    arr = global.deck_hand;
    
    var cardID = flexpanel_node_get_struct(arr[index]).layerElements[0].instanceId;
    array_push(global.deck_discard, arr[index].ID);
    
    instance_destroy(cardID);
    flexpanel_delete_node(arr[index]);
    array_delete(arr, index, 1);
}
/// @function                   draw_card(state);
/// @description                Discards & removes all cards in hand, effects global.discard.
function discard_all() {
    arr = global.deck_hand;
    
    //if nothing to discard
    if (array_length(arr) == 0) {
        return;
    }
    
    for (var i = 0; i < array_length(arr); i++) {
        var cardID = flexpanel_node_get_struct(arr[i]).layerElements[0].instanceId;
        array_push(global.deck_discard, cardID.ID);
        instance_destroy(cardID);
        flexpanel_delete_node(arr[i]);
    }
    arr = [];
}
/// @function                   shuffle_deck();
/// @description                moves discard into deck
function shuffle_deck() {
    array_foreach(global.deck_discard, function(_element) {
        array_push(global.deck_cards, _element)
    });
    global.deck_discard = [];
}
/* depreciated after ui change which automates this process
 * 
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
    } else {
        return;
    }
    
    for (var i = 0; i < array_length(arr); i++) {
        with (arr[i]) {
            x = xOffset + cardOffset * i;
            y = yOffset;
        }
    }
}*/