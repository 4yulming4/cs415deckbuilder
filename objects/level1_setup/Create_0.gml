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
adj_matrix[0][1] = new _path(1, room_instances[0], room_instances[1]);
adj_matrix[1][2] = new _path(3, room_instances[4], room_instances[2]); 