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

draw_text(60, 570, text);