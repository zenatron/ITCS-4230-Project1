// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if player exists	
if (instance_exists(obj_player)) {
	// calculate distance to player
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	// check of player is within patrol range
	if (distance_to_player < range) {
		player_detected = true;
	} else {
		player_detected = false;
	}
}

// attack state when player is detected
if (player_detected) {
    // flip sprite based on horizontal direction
    if (obj_player.x > x) {
        image_xscale = 1;  // face right
    } else {
        image_xscale = -1;  // face left
    }
}