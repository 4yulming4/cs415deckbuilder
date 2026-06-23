

function restock_shop(){
	for (var i = 0; i < array_length(shop_cards); i++)
	{
		if (shop_cards[i] == noone)
		{ 
            var card = instance_create_layer(
				x + (i * 120) + 75,
				y + 110,
				"Instances",
				get_card_obj(irandom_range(4,45)),
                {
                    State : CardState.shop,
                    shop_index : i
                }
			);
			shop_cards[i] = card;
		}
	}
}