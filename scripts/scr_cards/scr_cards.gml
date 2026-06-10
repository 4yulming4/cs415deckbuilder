/// @function               scr_get_card(index);
/// @param {int}    index   ID of the card to be retrived. Defaults to 0 (stumble).
/// @description            Returns a instance of the card with that ID.
function get_card_obj(index = 0){
    switch (index) {
        case 1: return obj_card_1_burgle;
        case 2: return obj_card_2_sidestep;
        case 3: return obj_card_3_scramble;
        case 4: return obj_card_4_mercency; 
        default: return obj_card_0_stumble; //index = 0 & invalid index
    }
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