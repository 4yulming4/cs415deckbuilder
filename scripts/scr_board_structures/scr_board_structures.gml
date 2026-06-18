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

function scr_artifact_init(_inst, _node_id, _value)
{
    _inst.node_id = _node_id;
    _inst.value = _value;
    _inst.collected = false;

    var node = global.node_list[_node_id];

    _inst.x = node.x;
    _inst.y = node.y;
}

function increase_dragon_rage(_amount)
{
    global.dragon_rage += _amount;

    show_debug_message(
        "Dragon Rage: " + string(global.dragon_rage)
    );
}