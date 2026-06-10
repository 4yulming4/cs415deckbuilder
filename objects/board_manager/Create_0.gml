#macro TOT_ROOMS 35

global.node_list = array_create(TOT_ROOMS, noone);


// **FIX COORDS**  NEED TO ADD IS_ICE FLAG
// first 5 rooms, top 
global.node_list[0] = new room_node(0, 55, 88, false, false);  // starting room  
global.node_list[1] = new room_node(1, 180, 91, false, false); // next room to the right of first 
global.node_list[2] = new room_node(2, 300, 95, false, false);
global.node_list[3] = new room_node(3, 542, 77, false, false);
global.node_list[4] = new room_node(4, 77, 179, false, false); 

global.node_list[5] = new room_node(5, 210, 195, true, false);
global.node_list[6] = new room_node(6, 303, 195, true, false);
global.node_list[7] = new room_node(7, 414, 213, false, false);
global.node_list[8] = new room_node(8, 520, 174, true, false);
global.node_list[9] = new room_node(9, 54, 278, false, false);

global.node_list[10] = new room_node(10, 160, 297, , false);
global.node_list[11] = new room_node(11, 292, 303, , false); 
global.node_list[12] = new room_node(12, 417, 309, , false);
global.node_list[13] = new room_node(13, 532, 283, , false);

// below green line, in dungeon
global.node_list[14] = new room_node(14, 72, 380, , true); 
global.node_list[15] = new room_node(15, 201, 394, , true);
global.node_list[16] = new room_node(16, 318, 419, , true);  // market room 
global.node_list[17] = new room_node(17, 445, 416, , true);  // market room
global.node_list[18] = new room_node(18, 540, 373, , true);
global.node_list[19] = new room_node(19, 640, 399, , true);
global.node_list[20] = new room_node(20, 50, 560, , true);   // object room, with 3 entities 
global.node_list[21] = new room_node(21, 133, 457, , true);
global.node_list[22] = new room_node(22, 188, 530, , true);
global.node_list[23] = new room_node(23, 317, 509, , true);  // market room 
global.node_list[24] = new room_node(24, 445, 508, , true);  // market room 
global.node_list[25] = new room_node(25, 540, 479, , true);
global.node_list[26] = new room_node(26, 610, 561, , true);
global.node_list[27] = new room_node(27, 688, 587, , true);
global.node_list[28] = new room_node(28, 180, 600, , true);
global.node_list[29] = new room_node(29, 295, 612, , true);
global.node_list[30] = new room_node(30, 404, 627, , true);
global.node_list[31] = new room_node(31, 517, 638, , true);
global.node_list[32] = new room_node(32, 633, 669, , true);
global.node_list[33] = new room_node(33, 80, 680, , true);
global.node_list[34] = new room_node(34, 220, 677, , true);
global.node_list[35] = new room_node(35, 366, 695, , true);

/*		
global.node_list[36] = new room_node(36, );
global.node_list[37] = new room_node(37);
global.node_list[38] = new room_node(38);
*/ 
global.adj_matrix = array_create(TOT_ROOMS); 
for (var i = 0; i < TOT_ROOMS; i++) {
	global.adj_matrix[i] = array_create(TOT_ROOMS, noone); 
} 
// link nodes with path edge 
// global.adj_matrix[0][1] = new path_edge(0, 0, false);   // first room connect to 2nd, 0 boot, 0 monst, doesnt req key