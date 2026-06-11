var text = "HP: ";
text += string(HP);
text += ". SP: ";
text += string(SP);
text += ". Sword: ";
text += string(Sword);
text += ". Movement: ";
text += string(Movement);
text += ". Clank: ";
text += string(Clank);
text += ".";
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
if (room == Room_cards) {
    draw_text(40, 570, text);
} else if (room == Room_map) {
    draw_text(860, 190, text);
}
