// src_board_structures are struct declarations for each room and edge
// additionally, board will be represented with adj matrix 

//TODO: board structs should be objects created with room sprites (same thing for paths) on the board (randomization) 

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

function spawn_artifact(_node_id, _value)
{
    if (!instance_exists(level_room_mngr))
        return;

    var controller = instance_find(level_room_mngr, 0);

    if (_node_id >= array_length(controller.room_instances))
        return;

    var room_inst = controller.room_instances[_node_id];

    var a = instance_create_depth(
        room_inst.x,
        room_inst.y,
        -10,
        obj_artifact
    );

    a.node_id = _node_id;
    a.value = _value;
    a.collected = false;

    return a;
}