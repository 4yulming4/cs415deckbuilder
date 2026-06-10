function spawn_shop_card(){
	for (var i = 0; i < array_length(shop_cards); i++)
	{
		if (shop_cards[i] == noone)
		{
			var card = instance_create_layer(
				x + (i * 120) + 75,
				y + 110,
				"Instances",
				obj_card_burgle
			);
			
			card.in_shop = true;
			
			card.shop_index = i;

			shop_cards[i] = card;
		}
	}
}