// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if player exists	
if (instance_exists(obj_player)) {
	// calculate distance to player
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	// check of player is within patrol range
	player_detected = (distance_to_player < range);
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

    // only move towards player if outside the distance_offset
    if (distance_to_player > distance_offset) {
	    x += lengthdir_x(move_speed, direction_to_player);  // move along x-axis
	    y += lengthdir_y(move_speed, direction_to_player);  // move along y-axis
	}
	
    // flip sprite based on horizontal direction
    if (obj_player.x > x) {
        image_xscale = 1;  // face right
    } else {
        image_xscale = -1;  // face left
    }
	
	// attack player if alarm[0] is not running (cooldown is over)
    if (distance_to_player <= distance_offset and alarm[0] == -1) {
        obj_player.player_health -= 10; // reduce player health by 10
        obj_player.damage_taken = true;
		alarm[0] = attack_cooldown; // set cooldown
    }
}