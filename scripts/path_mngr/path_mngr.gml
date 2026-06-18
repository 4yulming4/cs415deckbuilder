
function _path(r1, r2, b, m, k) constructor { 
	room1_ptr = r1; 
	room2_ptr = r2; 
	num_boots = b; 
	num_monster = m; 
	num_key = k; 
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
/* 
			**TODO FIX** 
		TOKENS WILL BE OBJS
		REMOVE token_type var 
		
		JUST DRAW PATH 
*/
function draw_path_on_angle (_x1, _y1, _x2, _y2) { 
	draw_set_colour(c_white); 
	draw_line_width(_x1, _y1, _x2, _y2, 4); 
}