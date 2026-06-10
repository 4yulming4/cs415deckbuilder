#macro TOT_ROOMS 38

global.node_list = array_create(TOT_ROOMS, noone);

// first 5 rooms, top 
global.node_list[0] = new room_node(0, 55, 88, false, false);  // starting room  
global.node_list[1] = new room_node(1, 182, 92, false, false); // next room to the right of first 
global.node_list[2] = new room_node(2, 300, 95, false, false);
global.node_list[3] = new room_node(3, 412, 97, false, false);
global.node_list[4] = new room_node(4, 545, 78, false, false); 

global.node_list[5] = new room_node(5, 80, 180, true, false);
global.node_list[6] = new room_node(6, 211, 195, true, false);
global.node_list[7] = new room_node(7, 305, 194, false, false);
global.node_list[8] = new room_node(8, 415, 214, true, false);
global.node_list[9] = new room_node(9, 524, 176, false, false);

global.node_list[10] = new room_node(10, 55, 281, false, false);
global.node_list[11] = new room_node(11, 165, 297, false, false); 
global.node_list[12] = new room_node(12, 295, 305, true, false);
global.node_list[13] = new room_node(13, 420, 311, false, false);
global.node_list[14] = new room_node(14, 537, 283, false, false);

// below green line, in dungeon
global.node_list[15] = new room_node(15, 76, 383, false, true); 
global.node_list[16] = new room_node(16, 203, 396, true, true); 
global.node_list[17] = new room_node(17, 321, 420, false, true);  //top-left market room 
global.node_list[18] = new room_node(18, 448, 420, false, true);  //top-right market room
global.node_list[19] = new room_node(19, 544, 377, false, true);
global.node_list[20] = new room_node(20, 643, 400, true, true); 
global.node_list[21] = new room_node(21, 135, 462, true, true);
global.node_list[22] = new room_node(22, 194, 532, false, true);
global.node_list[23] = new room_node(23, 319, 513, false, true); //bottom-left market room 
global.node_list[24] = new room_node(24, 448, 515, false, true); // bottom-right market room
global.node_list[25] = new room_node(25, 543, 482, true, true); 
global.node_list[26] = new room_node(26, 691, 504, false, true);
global.node_list[27] = new room_node(27, 54, 560, false, true);  //mult-entity room, bottom-left rectangle thingy
global.node_list[28] = new room_node(28, 180, 603, false, true);
global.node_list[29] = new room_node(29, 296, 615, false, true);
global.node_list[30] = new room_node(30, 405, 628, true, true);
global.node_list[31] = new room_node(31, 520, 644, false, true);
global.node_list[32] = new room_node(32, 612, 567, false, true);
global.node_list[33] = new room_node(33, 691, 592, false, true);
global.node_list[34] = new room_node(34, 83, 680, false, true);
global.node_list[35] = new room_node(35, 227, 679, false, true);
global.node_list[36] = new room_node(36, 370, 695, false, true);
global.node_list[37] = new room_node(37, 634, 673, true, true); 


global.adj_matrix = array_create(TOT_ROOMS); 

for (var i = 0; i < TOT_ROOMS; i++) {
	global.adj_matrix[i] = array_create(TOT_ROOMS, noone); 
} 
// link nodes with path edge | path_edge(int:boot, int:monst, bool:key)
//node 0 
global.adj_matrix[0][1] = new path_edge(0, 0, false);   

//node 1 
global.adj_matrix[1][0] = new path_edge(0, 0, false); 
global.adj_matrix[1][2] = new path_edge(0, 1, false);
global.adj_matrix[1][6] = new path_edge(0, 0, false); 

// node 2
global.adj_matrix[2][1] = new path_edge(1, 0, false); 
global.adj_matrix[2][7] = new path_edge(0, 0, true); 
global.adj_matrix[2][8] = new path_edge(0, 0, false); 
global.adj_matrix[2][3] = new path_edge(1, 0, false); 

// node 3
global.adj_matrix[3][2] = new path_edge(1, 0, false); 
global.adj_matrix[3][8] = new path_edge(0, 1, false);

// node 4 
global.adj_matrix[4][3] = new path_edge(0, 0, false); 
global.adj_matrix[4][9] = new path_edge(0, 0, true);

// node 5 
global.adj_matrix[5][1] = new path_edge(1, 0, false); 
global.adj_matrix[5][10] = new path_edge(0, 1, false);

// node 6 
global.adj_matrix[6][1] = new path_edge(0, 0, false); 
global.adj_matrix[6][11] = new path_edge(1, 0, false); 
global.adj_matrix[6][12] = new path_edge(0, 1, false);

// node 7 
global.adj_matrix[7][2] = new path_edge(0, 0, true); 
global.adj_matrix[7][12] = new path_edge(0, 0, true);

// node 8 
global.adj_matrix[8][2] = new path_edge(0, 0, false); 
global.adj_matrix[8][3] = new path_edge(0, 1, false); 
global.adj_matrix[8][9] = new path_edge(1, 0, false); 
global.adj_matrix[8][13] = new path_edge(0, 1, false); 

// node 9 
global.adj_matrix[9][8] = new path_edge(1, 0, false);
global.adj_matrix[9][4] = new path_edge(0, 0, true);
global.adj_matrix[9][14] = new path_edge(0, 0, false);

// node 10
global.adj_matrix[10][5] = new path_edge(0, 1, false);
global.adj_matrix[10][15] = new path_edge(1, 0, false);

// node 11
global.adj_matrix[11][6] = new path_edge(1, 0, false);
global.adj_matrix[11][15] = new path_edge(0, 1, false);
global.adj_matrix[11][16] = new path_edge(0, 0, false);

// node 12 
global.adj_matrix[12][16] = new path_edge(1, 0, false);
global.adj_matrix[12][6] = new path_edge(0, 1, false);
global.adj_matrix[12][7] = new path_edge(0, 0, true);
global.adj_matrix[12][13] = new path_edge(0, 0, false);
global.adj_matrix[12][17] = new path_edge(0, 2, false);

// node 13
global.adj_matrix[13][12] = new path_edge(0, 0, false);
global.adj_matrix[13][8] = new path_edge(0, 1, false);
global.adj_matrix[13][14] = new path_edge(0, 0, false);
global.adj_matrix[13][19] = new path_edge(0, 0, true);

// node 14
global.adj_matrix[14][13] = new path_edge(0, 0, false);
global.adj_matrix[14][9] = new path_edge(0, 0, false);
global.adj_matrix[14][19] = new path_edge(0, 0, false);

// node 15
global.adj_matrix[15][20] = new path_edge(0, 0, false);  //loop around 
global.adj_matrix[15][10] = new path_edge(1, 0, false);
global.adj_matrix[15][11] = new path_edge(0, 1, false);
global.adj_matrix[15][16] = new path_edge(0, 0, false);
global.adj_matrix[15][21] = new path_edge(0, 0, false);
global.adj_matrix[15][27] = new path_edge(0, 1, false);

//node 16
global.adj_matrix[16][15] = new path_edge(0, 0, false);
global.adj_matrix[16][11] = new path_edge(0, 0, false);
global.adj_matrix[16][12] = new path_edge(1, 0, false);
global.adj_matrix[16][23] = new path_edge(0, 0, false);
global.adj_matrix[16][22] = new path_edge(1, 1, false);

// node 17 (market top-left)
global.adj_matrix[17][12] = new path_edge(0, 2, false);
global.adj_matrix[17][23] = new path_edge(0, 0, false);

// node 18 (market top-right)
global.adj_matrix[18][19] = new path_edge(0, 0, false);
global.adj_matrix[18][25] = new path_edge(0, 1, false);
global.adj_matrix[18][24] = new path_edge(0, 0, false);

// node 19 
global.adj_matrix[19][18] = new path_edge(0, 0, false);
global.adj_matrix[19][13] = new path_edge(0, 0, true);
global.adj_matrix[19][14] = new path_edge(0, 0, false);
global.adj_matrix[19][20] = new path_edge(0, 0, false);

// node 20 
global.adj_matrix[20][19] = new path_edge(0, 0, false);
global.adj_matrix[20][15] = new path_edge(0, 0, false);  //loop around
global.adj_matrix[20][26] = new path_edge(0, 0, true);

// node 21
global.adj_matrix[21][15] = new path_edge(0, 0, false);

//node 22
global.adj_matrix[22][16] = new path_edge(1, 1, false);
global.adj_matrix[22][23] = new path_edge(0, 0, true);

//node 23 (market bottom-left)
global.adj_matrix[23][28] = new path_edge(1, 0, false);
global.adj_matrix[23][22] = new path_edge(0, 0, true);
global.adj_matrix[23][16] = new path_edge(0, 0, false);
global.adj_matrix[23][17] = new path_edge(0, 0, false);
global.adj_matrix[23][24] = new path_edge(0, 0, false);
global.adj_matrix[23][29] = new path_edge(0, 2, false);

// node 24 (market bottom-right)
global.adj_matrix[24][23] = new path_edge(0, 0, false);
global.adj_matrix[24][18] = new path_edge(0, 0, false);
global.adj_matrix[24][30] = new path_edge(0, 0, true);

// node 25
global.adj_matrix[25][18] = new path_edge(0, 1, false);

// node 26
global.adj_matrix[26][20] = new path_edge(0, 0, true);
global.adj_matrix[26][33] = new path_edge(0, 1, false);

// node 27
global.adj_matrix[27][21] = new path_edge(0, 0, false);
global.adj_matrix[27][34] = new path_edge(0, 0, false);

// node 28 
global.adj_matrix[28][27] = new path_edge(1, 0, false);
global.adj_matrix[28][23] = new path_edge(1, 0, false);
global.adj_matrix[28][29] = new path_edge(0, 2, false);
global.adj_matrix[28][34] = new path_edge(0, 0, false);

// node 29
global.adj_matrix[29][28] = new path_edge(0, 2, false);
global.adj_matrix[29][23] = new path_edge(0, 2, false);
global.adj_matrix[29][30] = new path_edge(0, 0, true);
global.adj_matrix[29][36] = new path_edge(1, 0, false);
global.adj_matrix[29][35] = new path_edge(0, 1, false);

// node 30
global.adj_matrix[30][29] = new path_edge(0, 0, true);
global.adj_matrix[30][24] = new path_edge(0, 0, true);
global.adj_matrix[30][31] = new path_edge(0, 2, false);

// node 31 
global.adj_matrix[31][30] = new path_edge(0, 2, false);
global.adj_matrix[31][32] = new path_edge(1, 1, false);
global.adj_matrix[31][37] = new path_edge(0, 0, false);
global.adj_matrix[31][36] = new path_edge(0, 2, false);

// node 32
global.adj_matrix[32][31] = new path_edge(1, 1, false);
global.adj_matrix[32][25] = new path_edge(0, 0, false);

// node 33
global.adj_matrix[33][26] = new path_edge(0, 1, false);

// node 34
global.adj_matrix[34][28] = new path_edge(0, 0, false);
global.adj_matrix[34][35] = new path_edge(0, 0, true);

// node 35
global.adj_matrix[35][34] = new path_edge(0, 0, true);
global.adj_matrix[35][29] = new path_edge(0, 1, false);

// node 36 
global.adj_matrix[36][29] = new path_edge(1, 0, false);
global.adj_matrix[36][31] = new path_edge(0, 2, false);
global.adj_matrix[36][37] = new path_edge(1, 1, false);

// node 37
global.adj_matrix[37][31] = new path_edge(0, 0, false);
global.adj_matrix[37][36] = new path_edge(1, 1, false);
