draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
var text = string(Clank) + "/" + string(Max_Clank);
draw_text(x+45, y+275, text);

var w = 90;

//empty is 265, full is 61
var h = 265 - (204 * Clank/Max_Clank);

draw_sprite_part(spr_dragon_bar, 0, 0, 0, w, h, x, y);