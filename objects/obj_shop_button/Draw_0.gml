draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (room == Room_game) {
    draw_text(x+64, y+64, "Go to Shop");
} else {
    draw_text(x+64, y+64, "Return to Map");
}