draw_self();

if (point_in_rectangle(mouse_x, mouse_y,
    x, y,
    x + sprite_width,
    y + sprite_height))
{
    var amount_cards = array_length(global.deck_cards);
    
    var draw_x = mouse_x - 20;
    var draw_y = min(mouse_y, 770 - string_height("I")*amount_cards);

    draw_set_halign(fa_right);
    draw_set_color(c_white);

    draw_text(draw_x, draw_y, "Discard Pile");

    for (var i = 0; i < amount_cards; i++)
    {
        draw_text(
            draw_x,
            draw_y + 20 + i * 20,
            get_card_name(global.deck_discard[i])
        );
    }
}