/// @function               scr_get_card(index);
/// @param {int}    index   ID of the card to be retrived. Defaults to 0 (stumble).
/// @description            Returns a instance of the card with that ID.
function get_card_obj(index = 0){
    var cards = [
        obj_card_000_stumble,
		obj_card_001_burgle,
		obj_card_002_sidestep,
		obj_card_003_scramble,
		obj_card_004_mercency,
		obj_card_005_explore,
		obj_card_006_secret_tome,
		obj_card_007_dragon_shrine,
		obj_card_008_ladder,
		obj_card_009_teleporter,
		obj_card_010_animated_door,
		obj_card_011_belcher,
		obj_card_012_cave_troll,
		obj_card_013_crystal_golem,
		obj_card_014_kobald,
		obj_card_015_ogre,
		obj_card_016_orc_grunt,
		obj_card_017_overlord,
		obj_card_018_amulet_of_vigor,
		obj_card_019_apothecary,
		obj_card_020_boots_of_swiftness,
		obj_card_021_braces_of_agility,
		obj_card_022_brilliance,
		obj_card_023_cleric_of_the_sun,
		obj_card_024_diamond,
		obj_card_025_elven_boots,
		obj_card_026_elven_cloak,
		obj_card_027_elven_dagger,
		obj_card_028_emerald,
		obj_card_029_gem_collector,
		obj_card_030_invoker_of_the_ancients,
		obj_card_031_kobald_merchant,
		obj_card_032_lucky_coin,
		obj_card_033_master_burgle,
		obj_card_034_move_silently,
		obj_card_035_monkeybot_3000,
		obj_card_036_pickaxe,
		obj_card_037_queen_of_hearts,
		obj_card_038_ruby,
		obj_card_039_sapphire,
		obj_card_040_silver_spear,
		obj_card_041_singing_sword,
		obj_card_042_sleight_of_hand,
		obj_card_043_sneak,
		obj_card_044_tunnel_guide,
		obj_card_045_wand_of_recall
    ]
    if (index >= array_length(cards) || index < 0) {
        show_debug_message("Invalid index of " + string(index));
        index = 0;
    }
    return cards[index];
}
/// @function               scr_get_card(index);
/// @description            Returns a instance of a random card.
function random_card() {
    return get_card_obj(irandom_range(0, 45));
}
/// @function               scr_get_card(index);
/// @description            Returns a instance of a random card except the starter cards.
function random_shop_card() {
    return get_card_obj(irandom_range(4, 45));
}
/// @function               get_card_name(index);
/// @description            Returns a string coresponding to the Title variable of a card
function get_card_name(card_id)
{
    var card = get_card_obj(card_id);
    //makes objects to read title from, not great performance but likely won't matter.
    //persistent & checks if instance exists to reduce performance issues
    if (!instance_exists(card)) {
        var cardInstance = instance_create_layer(-100,0,"Background", card);
        cardInstance.persistent = true;
    }
    return card.Title;
}