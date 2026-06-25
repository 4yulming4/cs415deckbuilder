tutorial_steps = [
	{
		msg_text: "Welcome! This is a game about strategy. Build your skills with your deck, and use those skills to steal the artifact out of the dragons dungeon, all without perishing.", 
		target_x: 200, 
		target_y: 150
	}, 
	{
		msg_text: "This is the dragons RAGE meter. Certain actions that involve +clank will enrage the dragon. Additionally, each turn has the chance of enraging the dragon. Once the meter is full, the dragon wil deal damage to the player.", 
		target_x: 126, 
		target_y: 220
	}, 
	{
		msg_text: "These are rooms. Click on each adjacent room to move there. Each room is connected with a path. Some paths have tokens which requires certain types of skill points to be spent (i.e. Monster: uses sword, Boots: uses movement).",
		target_x: 884, 
		target_y: 85 
	}, 
	{
		msg_text: "These are you attributes. They include: Health (HP), Currency (SP), Attack (Sword), Movement, and Clank",
		target_x: 145, 
		target_y: 600
	}, 
	{
		msg_text: "Here are your cards. Each card is played once per turn. They are pulled from your randomly shuffled deck on the left, and discarded on the right. These cards provide you with skills to use when traversing the dungeon",
		target_x: 400, 
		target_y: 600 
	},
	{
		msg_text: "Click here to end your turn. You will be brought to the shop, where you can spend SP on new cards to build your deck",
		target_x: 953,
		target_y: 568
	}, 
	{
		msg_text: "You can zoom the camera with the scroll wheel. The camera can be moved by holding the middle mouse button and dragging the mouse. The camera will always snap back to your player.",
		target_x: 171, 
		target_y: 214
	}, 
	{
		msg_text: "You are now ready to begin. Good Luck!", 
		target_x: 171, 
		target_y: 214
	}
];

current_step = 0; 
active_box = noone; 

function spawn_next_step () {
	if (current_step >= array_length(tutorial_steps)) {
		instance_destroy(); 
		return; 
	}
	
	var _step_data = tutorial_steps[current_step]; 
	active_box = instance_create_layer(_step_data.target_x, _step_data.target_y, layer, obj_tutorial_textbox); 
	active_box.text = _step_data.msg_text; 
	active_box.creator = id; 
}
spawn_next_step(); 