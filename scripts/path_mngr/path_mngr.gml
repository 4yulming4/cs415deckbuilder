function _path(_token_type, r1, r2) constructor {
	token_type = _token_type; 
	room1_ptr = r1; 
	room2_ptr = r2; 
}

function get_coords (room1, room2) {
	var coord_arr = array_create(4, 0); 
	var room1_x = room1.x; 
	var room1_y = room1.y; 
	var room2_x = room2.x; 
	var room2_y = room2.y; 
	
	coord_arr[0] = room1_x; 
	coord_arr[1] = room1_y; 
	coord_arr[2] = room2_x; 
	coord_arr[3] = room2_y; 
	
	return coord_arr; 
} 

function draw_path_on_angle (_x1, _y1, _x2, _y2, token_type) { 
	draw_set_colour(c_white); 
	draw_line_width(_x1, _y1, _x2, _y2, 4); 
	
	var x_mid = (_x1 + _x2) / 2; 
	var y_mid = (_y1 + _y2) / 2;
	
	switch (token_type) { 
		case 1: 
			draw_sprite(Boots, -1, x_mid, y_mid);
			break; 
		case 2: 
			draw_sprite(monster, -1, x_mid, y_mid); 
			break; 
		case 3: 
			draw_sprite(Lock, -1, x_mid, y_mid); 
			break; 
		default: 
			break; 
	} 
}