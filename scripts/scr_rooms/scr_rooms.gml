function room_types() constructor {
	has_token = random(1); 
	
} 

function get_room_object(level){
	// level: 1 
	// level: 2 
	// level: 3
	// ... 
	// level: n 
	var room_type = noone;
	// set room_type
	switch (level) {
		case 1: 
			room_type = room_type_1;    // normal  
			break; 
		case 2: 
			room_type = room_type_2;    // ice
			break; 
		case 3: 
			room_type = room_type_3;	// market 
			break; 
		default: 
			break; 
	} 
	
	return room_type; 
}

