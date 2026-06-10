// src_board_structures are struct declarations for each room and edge
// additionally, board will be represented with adj matrix 

function room_node (_id, _x, _y, _is_ice, _is_deep) constructor {
	id = _id; 
	x = _x;                 // x and y are literal pixel coords in the scene 
	y = _y; 
	is_ice = _is_ice; 
	is_deep = _is_deep;		// if in dungeon, below ground line 
	
	
    has_token = false;		// to be randomized, future func to return random token placed on node 
	token_type= "";   
}

function path_edge (_boot_cost, _monsters, _requires_key) constructor {
	boot_cost = _boot_cost; 
	monsters = _monsters; 
	requires_key = _requires_key; 
} 

