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
	// draw line from room1 to room 2 based on adj_matrix mapping 
	draw_set_colour(c_white); 
	draw_line(_x1, _y1, _x2, _y2); // draw token on top of this 
	switch (token_type) { 
		case 1: 
			break; 
		case 2: 
			break; 
		case 3: 
			break; 
		default: 
			break; 
	} 
}