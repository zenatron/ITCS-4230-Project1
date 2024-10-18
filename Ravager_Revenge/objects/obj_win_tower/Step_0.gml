/// @description Check if player is nearby and has all artifacts
// Philip Vishnevsky

var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
	
// If player within range
if (distance_to_player < interaction_range) { 
	player_in_range = true; 
} else { 
	player_in_range = false; 
}

// If player within range and interacts with Tower
if (player_in_range and keyboard_check_pressed(ord("E"))) {
	show_debug_message("Pressed E");
	
	// check if player has all 4 artifacts
	if (global.artifact_count == 4) {
		show_debug_message("!Player has 4 artifacts and is able to win");
		global.artifacts_active = true;
		obj_controller.alarm[0] = room_speed * 1;
	} else {
		// if does not have all 4 artifacts, let them know
		show_debug_message("!Player DOES NOT have enough artifacts to win");
	}
}