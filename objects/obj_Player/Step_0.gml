//if (!global.node_list_ready) exit;
//if (!variable_global_exists("adj_matrix")) exit;
//if (!is_array(global.node_list)) exit;

hovered_node = -1;

for (var i = 0; i < array_length(global.node_list); i++)
{
    var node = global.node_list[i];

    if (point_distance(mouse_x, mouse_y, node.x, node.y) < 20)
    {
        hovered_node = i;
        break;
    }
}

if (mouse_check_button_pressed(mb_left))
{
    if (hovered_node != -1)
    {
        var edge = global.adj_matrix[current_node][hovered_node];
        
        if (edge != noone)
        {
            with (obj_player_manager) {
                if (Movement < edge.boot_cost + 1) {
                    return;
                }
                Movement -= edge.boot_cost + 1;
                if (edge.monsters > 0) {
                    var damage = edge.monsters - Sword;
                    HP -= max(damage, 0);
                    Sword = max(Sword - edge.monsters, 0);
                }
            }
            if (edge.requires_key == false)
            {
                target_node = hovered_node;
                moving = true;
            }
        }
    }
}

if (moving)
{
    var target = global.node_list[target_node];

    var dir = point_direction(x, y, target.x, target.y);

    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);

    if (point_distance(x, y, target.x, target.y) < move_speed)
    {
        x = target.x;
        y = target.y;

        current_node = target_node;
        moving = false;
    }
}

//set camera
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);
   
var offsetX = 350;
var offsetY = 100;
var cx = min( max( x-offsetX, 0 ), room_width - (view_w) );
var cy = min( max( y-offsetY, 0 ), room_height - (view_h) );
   
camera_set_view_pos(view_camera[0], cx, cy);