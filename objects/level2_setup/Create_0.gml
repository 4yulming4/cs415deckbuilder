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
adj_matrix[0][1] = new _path(room_instances[0], room_instances[1], 0,0,0);
adj_matrix[1][0] = new _path(room_instances[1], room_instances[0], 0, 0, 0);
adj_matrix[0][4] = new _path(room_instances[0], room_instances[4], 0, 0, 1);
adj_matrix[4][0] = new _path(room_instances[4], room_instances[0], 0, 0, 1);

adj_matrix[1][2] = new _path(room_instances[1], room_instances[2], 0, 1, 0);
adj_matrix[2][1] = new _path(room_instances[2], room_instances[1], 0, 1, 0);

adj_matrix[2][9] = new _path(room_instances[2], room_instances[9], 0, 0, 0);
adj_matrix[9][2] = new _path(room_instances[9], room_instances[2], 0, 0, 0);


adj_matrix[3][6] = new _path(room_instances[3], room_instances[6], 0, 0, 1);
adj_matrix[6][3] = new _path(room_instances[6], room_instances[3], 0, 0, 1);


adj_matrix[4][7] = new _path(room_instances[4], room_instances[7], 0, 0, 0);
adj_matrix[7][4] = new _path(room_instances[7], room_instances[4], 0, 0, 0);
adj_matrix[4][3] = new _path(room_instances[4], room_instances[3], 1, 0, 0);
adj_matrix[3][4] = new _path(room_instances[3], room_instances[4], 1,0 , 0);

adj_matrix[5][8] = new _path(room_instances[5], room_instances[8], 1, 0, 0);
adj_matrix[8][5] = new _path(room_instances[8], room_instances[5], 1, 0, 0);
adj_matrix[5][2] = new _path(room_instances[5], room_instances[2], 0, 1, 0);
adj_matrix[2][5] = new _path(room_instances[2], room_instances[5], 0, 1, 0);


adj_matrix[7][8] = new _path(room_instances[7], room_instances[8], 0, 0, 0);
adj_matrix[8][7] = new _path(room_instances[8], room_instances[7], 0, 0, 0);
adj_matrix[7][11] = new _path(room_instances[7], room_instances[11], 1, 1, 0);
adj_matrix[11][7] = new _path(room_instances[11], room_instances[7], 1, 1, 0);

adj_matrix[9][12] = new _path(room_instances[9], room_instances[12], 1, 0, 0);
adj_matrix[12][9] = new _path(room_instances[12], room_instances[9], 1, 0, 0);


adj_matrix[12][13] = new _path(room_instances[12], room_instances[13], 0, 0, 0); // one directional
adj_matrix[12][11] = new _path(room_instances[12], room_instances[11], 1, 0, 1);
adj_matrix[11][12] = new _path(room_instances[11], room_instances[12], 1, 0, 1);
adj_matrix[13][9] = new _path(room_instances[13], room_instances[9], 0, 0, 0);  // one directional

adj_matrix[10][11] = new _path(room_instances[10], room_instances[11], 1, 1, 0);
adj_matrix[11][10] = new _path(room_instances[11], room_instances[10], 1, 1, 0);

adj_matrix[10][6] = new _path(room_instances[10], room_instances[6], 1, 1, 0);
adj_matrix[6][10] = new _path(room_instances[6], room_instances[10], 1, 1, 0);
