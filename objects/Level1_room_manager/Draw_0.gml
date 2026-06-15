for (var i =0; i < total_found; i++) { 
	for (var j = 0; j < total_found; j++) {
		var curr_path = adj_matrix[i][j]; 
		
		if (is_struct(curr_path)) { 
			var coords = get_coords(curr_path.room1_ptr, curr_path.room2_ptr); 
			
			draw_path_on_angle(
				coords[0], coords[1],		// x1, y1
				coords[2], coords[3],		// x2, y2
				curr_path.token_type 
			);
		}
	}
} 