var x1 = 0; 
var y1 = 1; 
var x2 = 2; 
var y2 = 3; 

for (var i =0; i < total_found; i++) { 
	for (var j = 0; j < total_found; j++) {
		var curr_path = adj_matrix[i][j]; 
		
		if (is_struct(curr_path)) { 
			var coords = get_coords(curr_path.room1_ptr, curr_path.room2_ptr); 
			
			draw_path_on_angle(
				coords[x1], coords[y1],		
				coords[x2], coords[y2],		
				curr_path.token_type 
			);
		}
	}
} 