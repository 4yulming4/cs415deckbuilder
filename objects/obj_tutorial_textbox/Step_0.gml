if (mouse_check_button_pressed(mb_left)) {
	var _gui_mouse_x = device_mouse_x_to_gui(0);
    var _gui_mouse_y = device_mouse_y_to_gui(0);
	if (point_in_rectangle(_gui_mouse_x, _gui_mouse_y, x, y, x + box_width, y + box_height)) {
		if (instance_exists(creator)) {
            creator.current_step += 1;
            creator.spawn_next_step();
        }
		instance_destroy(); 
	} 
} 