draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black); //color for cost & SP

if (Cost > 0) {
    var cost_offset = 20; //size of cost sprite
    draw_sprite(spr_skill, 0, x+100-cost_offset, y+150-cost_offset)
    draw_text(x+100-cost_offset/2, y+150-cost_offset/2, string(Cost));
}

var point_y = y+20;
if (SP > 0) {
    draw_sprite(spr_skill, 0, x, point_y);
    draw_text(x+10, point_y+10, string(SP));
    
    point_y += 25;
}
var num_movement = Movement;
while (num_movement > 0) {
    draw_sprite(spr_movement, 0, x, point_y);
    point_y += 25;
    num_movement -= 1;
}
var num_sword = Sword;
while (num_sword > 0) {
    draw_sprite(spr_sword, 0, x, point_y);
    point_y += 25;
    
    num_sword -= 1;
}

draw_set_color(c_white);
draw_text(x+50, y+5, Title);
draw_text_ext(x+50,y+122,Text, 15, 90);
