if (!instance_exists(obj_Player)) exit; 

var player_pos_x = obj_Player.x;	
var player_pos_y = obj_Player.y; 

var camera_w = camera_get_view_width(view_camera[0]);
var camera_h = camera_get_view_height(view_camera[1]);

var target_x = player_pos_x - (camera_w / 2); 
var target_y = player_pos_y - (camera_h / 2); 

var current_x = camera_get_view_x(view_camera[0]);
var current_y = camera_get_view_y(view_camera[0]); 

var new_x = lerp(current_x, target_x, 0.1); 
var new_y = lerp(current_y, target_y, 0.1);

camera_set_view_pos(view_camera[0], new_x, new_y); 


