// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if player exists	
if (instance_exists(obj_player)) {
	// calculate distance to player
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	// check of player is within patrol range
	if (distance_to_player < range) {
		player_detected = true;
	} else {
		player_detected = false; // player out of range, resume patrol
	}
}
// patrol state when player is NOT detected
if (!player_detected) {
	// move enemy left and right to patrol area
	x += move_speed * patrol_direction;
	
	// flip sprite based on direction
	image_xscale = patrol_direction;
}

// attack state when player is detected
if (player_detected) {
	// calculate direction towards player
    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);

    // move enemy in direction of player using speed
    x += lengthdir_x(move_speed, direction_to_player);  // move along x-axis
    y += lengthdir_y(move_speed, direction_to_player);  // move along y-axis

    // flip sprite based on horizontal direction
    if (obj_player.x > x) {
        image_xscale = 1;  // face right
    } else {
        image_xscale = -1;  // face left
    }
}