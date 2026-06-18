depth = 1; 

total_found = instance_number(room_parent); 

room_instances = array_create(total_found);
room_data = array_create(total_found); 

for (var i = 0; i < total_found; i++) { 
	var inst = instance_find(room_parent, i);
	room_instances[i] = inst; 
	
	room_data[i] = {
		x: inst.x, 
		y: inst.y 
	};  
} 
 
adj_matrix = array_create(total_found); 
for (var i=0; i < total_found; i++) { 
	adj_matrix[i] = array_create(total_found, 0); 
} 

// here need to link paths
// adj_matrix[][] = new _path(room_instances[], room_instances[], , , );
adj_matrix[0][1] = new _path(room_instances[0], room_instances[1], 0, 0, 0);
adj_matrix[1][0] = new _path(room_instances[1], room_instances[0], 0, 0, 0);

adj_matrix[1][2] = new _path(room_instances[1], room_instances[2], 1, 0, 0);
adj_matrix[2][1] = new _path(room_instances[2], room_instances[1], 1, 0, 0);
adj_matrix[1][6] = new _path(room_instances[1], room_instances[6], 0, 1, 0);
adj_matrix[1][6] = new _path(room_instances[6], room_instances[1], 0, 1, 0);
adj_matrix[5][1] = new _path(room_instances[5], room_instances[1], 0, 0, 0);  // one directional

adj_matrix[2][3] = new _path(room_instances[2], room_instances[3], 1, 0, 0);
adj_matrix[3][2] = new _path(room_instances[3], room_instances[2], 1, 0, 0);

adj_matrix[3][7] = new _path(room_instances[3], room_instances[7], 0, 0, 1);
adj_matrix[7][3] = new _path(room_instances[7], room_instances[3], 0, 0, 1);
adj_matrix[3][4] = new _path(room_instances[3], room_instances[4], 0, 0, 0);
adj_matrix[4][3] = new _path(room_instances[4], room_instances[3], 0, 0, 0);

adj_matrix[4][11] = new _path(room_instances[4], room_instances[11], 0, 0, 0);
adj_matrix[11][4] = new _path(room_instances[11], room_instances[4], 0, 0, 0);

adj_matrix[6][5] = new _path(room_instances[6], room_instances[5], 1, 0, 0);
adj_matrix[5][6] = new _path(room_instances[5], room_instances[6], 1, 0, 0);

adj_matrix[5][8] = new _path(room_instances[5], room_instances[8], 0, 0, 0);
adj_matrix[8][5] = new _path(room_instances[8], room_instances[5], 0, 0, 0);

adj_matrix[6][9] = new _path(room_instances[6], room_instances[9], 1, 1, 0);
adj_matrix[9][6] = new _path(room_instances[9], room_instances[6], 1, 1, 0);

adj_matrix[7][10] = new _path(room_instances[7], room_instances[10], 0, 1, 0);
adj_matrix[10][7] = new _path(room_instances[10], room_instances[7], 0, 1, 0);
adj_matrix[7][11] = new _path(room_instances[7], room_instances[11], 0, 1, 0);
adj_matrix[11][7] = new _path(room_instances[11], room_instances[7], 0, 1, 0);

adj_matrix[8][9] = new _path(room_instances[8], room_instances[9], 1, 0, 0);
adj_matrix[9][8] = new _path(room_instances[9], room_instances[8], 1, 0, 0);

adj_matrix[9][10] = new _path(room_instances[9], room_instances[10], 0, 2, 0);
adj_matrix[10][9] = new _path(room_instances[10], room_instances[9], 0, 2, 0);

adj_matrix[10][11] = new _path(room_instances[10], room_instances[11], 1, 1, 0);
adj_matrix[11][10] = new _path(room_instances[11], room_instances[10], 1, 1, 0);

