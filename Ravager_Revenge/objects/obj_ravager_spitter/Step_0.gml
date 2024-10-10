// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if player exists	
if (instance_exists(obj_player)) {
	// calculate distance to player
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	// check of player is within patrol range
	if (distance_to_player < range) {
		player_detected = true;
		can_shoot = true;
	} else {
		player_detected = false;
		can_shoot = false;
	}
}

// attack state when player is detected
if (player_detected) {
    // flip sprite based on player position
    image_xscale = (obj_player.x < x) ? -1 : 1;
}