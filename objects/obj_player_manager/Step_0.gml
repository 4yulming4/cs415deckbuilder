if (HP <= 0 && game_over == false) {
	game_over = true;
	
	game_complete(false);
	
	//instance_create_depth(0,0,-1000,obj_game_over);
	//instance_create_depth(200,250, -101, obj_try_again);
}