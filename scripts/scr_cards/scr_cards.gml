/// @function               scr_get_card(index);
/// @param {int}    index   ID of the card to be retrived. Defaults to 0 (stumble).
/// @description            Returns a instance of the card with that ID.
function get_card_obj(index = 0){
    var cards = [
        obj_card_0_stumble,
        obj_card_1_burgle,
        obj_card_2_sidestep,
        obj_card_3_scramble,
        obj_card_4_mercency
    ]
    if (index >= array_length(cards) || index < 0) {
        show_debug_message("Invalid index of " + string(index));
        index = 0;
    }
    return cards[index];
}
/// @function               scr_get_card(index);
/// @description            Returns a instance of a random card.
function scr_random_card() {
    return get_card_obj(irandom_range(0, 4));
}
/// @function               scr_get_card(index);
/// @description            Returns a instance of a random card except the starter cards.
function scr_random_shop_card() {
    return get_card_obj(irandom_range(4, 4));
}

function get_card_name(card_id)
{
    switch(card_id)
    {
        case 0: return "Stumble";
        case 1: return "Burgle";
        case 2: return "Sidestep";
        case 3: return "Scramble";
        case 4: return "Mercenary";
    }

    return "Unknown";
}