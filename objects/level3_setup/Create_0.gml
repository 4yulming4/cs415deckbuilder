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

//**TODO FIX** make tokens objs that can be dragged and dropped and not automattically drawn 
/*
	PATHS: need to hold array of tokens (up to 2) 
*/



// here need to link paths
// adj_matrix[][] = new _path(, room_instances[], room_instances[]);
adj_matrix[0][1] = new _path(0, room_instances[0], room_instances[1]);
adj_matrix[1][0] = new _path(0, room_instances[1], room_instances[0]); 
adj_matrix[1][2] = new _path(0, room_instances[1], room_instances[2]);
adj_matrix[2][1] = new _path(0, room_instances[2], room_instances[1]);

adj_matrix[2][3] = new _path(1, room_instances[2], room_instances[3]);
adj_matrix[3][2] = new _path(1, room_instances[3], room_instances[2]);
adj_matrix[4][3] = new _path(0, room_instances[3], room_instances[4]);
adj_matrix[4][3] = new _path(0, room_instances[4], room_instances[3]);
adj_matrix[3][8] = new _path(3, room_instances[3], room_instances[8]);
adj_matrix[8][3] = new _path(3, room_instances[8], room_instances[3]);


adj_matrix[5][0] = new _path(1, room_instances[5], room_instances[0]);
adj_matrix[5][9] = new _path(2, room_instances[5], room_instances[9]); 
adj_matrix[9][5] = new _path(2, room_instances[9], room_instances[5]);
adj_matrix[5][6] = new _path(1, room_instances[5], room_instances[6]);
adj_matrix[6][5] = new _path(1, room_instances[6], room_instances[5]);

adj_matrix[6][10] = new _path(0, room_instances[6], room_instances[10]);
adj_matrix[10][6] = new _path(0, room_instances[10], room_instances[6]);
adj_matrix[6][1] = new _path(2, room_instances[6], room_instances[1]);
adj_matrix[1][6] = new _path(2, room_instances[1], room_instances[6]);
adj_matrix[6][7] = new _path(3, room_instances[6], room_instances[7]);
adj_matrix[7][6] = new _path(3, room_instances[7], room_instances[6]);
adj_matrix[6][10] = new _path(0, room_instances[6], room_instances[10]);
adj_matrix[10][6] = new _path(0, room_instances[10], room_instances[6]);

adj_matrix[8][11] = new _path(0, room_instances[8], room_instances[11]);
adj_matrix[11][8] = new _path(0, room_instances[11], room_instances[8]);


adj_matrix[8][12] = new _path(1, room_instances[8], room_instances[12]);
adj_matrix[12][8] = new _path(1, room_instances[12], room_instances[8]);

// market rooms 
adj_matrix[7][11] = new _path(0, room_instances[7], room_instances[11]);
adj_matrix[11][7] = new _path(0, room_instances[11], room_instances[7]);


adj_matrix[10][15] = new _path(2, room_instances[10], room_instances[15]);
adj_matrix[15][10] = new _path(2, room_instances[15], room_instances[10]);
adj_matrix[10][14] = new _path(2, room_instances[10], room_instances[14]);
adj_matrix[14][10] = new _path(2, room_instances[14], room_instances[10]);

adj_matrix[14][13] = new _path(3, room_instances[14], room_instances[13]);  //one directional 

adj_matrix[14][15] = new _path(3, room_instances[14], room_instances[15]);
adj_matrix[15][14] = new _path(3, room_instances[15], room_instances[14]);

adj_matrix[12][16] = new _path(2, room_instances[12], room_instances[16]); // oine directional 

adj_matrix[16][15] = new _path(0, room_instances[16], room_instances[15]);
adj_matrix[15][16] = new _path(0, room_instances[15], room_instances[16]);

adj_matrix[9][13] = new _path(1, room_instances[9], room_instances[13]);
adj_matrix[13][9] = new _path(1, room_instances[13], room_instances[9]);