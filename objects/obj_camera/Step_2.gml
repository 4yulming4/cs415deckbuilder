if (!instance_exists(obj_Player)) exit; 


var zoom_speed = 0.1; 
if (mouse_wheel_down()) zoom_scale += zoom_speed; 
if (mouse_wheel_up()) zoom_scale -= zoom_speed; 
zoom_scale = clamp(zoom_scale, zoom_min, zoom_max); 

var target_w = base_width * zoom_scale; 
var target_h = base_height * zoom_scale; 

var current_w = camera_get_view_width(view_camera[0]); 
var current_h = camera_get_view_height(view_camera[0]); 

var new_w = lerp(current_w, target_w, 0.1); 
var new_h = lerp(current_h, target_h, 0.1);

camera_set_view_size(view_camera[0], new_w, new_h); 


if (mouse_check_button_pressed(mb_middle)) {
	is_dragging = true; 
	mouse_click_x = device_mouse_raw_x(0); 
	mouse_click_y = device_mouse_raw_y(0);
}

if (mouse_check_button_released(mb_middle)) is_dragging = false; 

var current_x = camera_get_view_x(view_camera[0]);
var current_y = camera_get_view_y(view_camera[0]);
var new_x = current_x; 
var new_y = current_y;

if (is_dragging) {
	var mouse_diff_x = device_mouse_raw_x(0) - mouse_click_x; 
	var mouse_diff_y = device_mouse_raw_y(0) - mouse_click_y; 
	
	new_x = current_x - mouse_diff_x; 
	new_y = current_y - mouse_diff_y; 
	
	mouse_click_x = device_mouse_raw_x(0); 
	mouse_click_y = device_mouse_raw_y(0);
	
	var camera_w = camera_get_view_width(view_camera[0]);
	var camera_h = camera_get_view_height(view_camera[0]);
	
	
	// clamping will keep it in the borders but i found that it tends init drag camera to center of screen which feels not great 
	//new_x = clamp(new_x, 0, room_width-camera_w); 
	//new_y = clamp(new_y, 0, room_height-camera_h); 
	
} else {
	var player_pos_x = obj_Player.x;	
	var player_pos_y = obj_Player.y;
	
	var camera_w = camera_get_view_width(view_camera[0]);
	var camera_h = camera_get_view_height(view_camera[0]);
	
	var target_x = player_pos_x - (camera_w / 2); 
	var target_y = player_pos_y - (camera_h / 2);
	
	new_x = lerp(current_x, target_x, 0.1); 
	new_y = lerp(current_y, target_y, 0.1);
	
}

camera_set_view_pos(view_camera[0], new_x, new_y);



 