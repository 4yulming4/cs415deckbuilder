if (in_shop) {
	with (obj_shop) {
		shop_cards[other.shop_index] = noone;
	}

	instance_destroy();
}