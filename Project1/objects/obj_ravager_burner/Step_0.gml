// Evelyn Hosana - September 26th 2024 - ITCS 5230

// Player detection logic
if (instance_exists(obj_player)) {
    player_distance = point_distance(x, y, obj_player.x, obj_player.y);
	player_direction = point_direction(x, y, obj_player.x, obj_player.y);
    
    // Check if player is within range
    if (player_distance <= range) {
        player_detected = true; // set player detection flag to true
		is_moving = false; // set movement flag to false
		alarm[0] = -1; // stop random movement
		alarm[1] = -1; // stop fire path
		
		// call fire ring attack script
		if (!fire_ring_active) {
			fire_ring_active = true; // set fire ring flag to true
			fire_ring_radius = 32; // reset ring radius
			alarm[2] = fire_ring_interval; // start fire ring expansion
		}
    } else {
        player_detected = false; // set player detection flag to false
		is_moving = true;  // set movement flag to true
		fire_ring_active = false; // stop fire ring attack
		
		if (alarm[0] == -1) { alarm[0] = movement_duration; } // reset movement
		if (alarm[1] == -1) { alarm[1] = fire_interval; } // reset fire path
    }
}

// If player is detected, move toward player
if (player_detected) {
    if (player_distance > 48) {
        // Move towards player
        x += lengthdir_x(speed, player_direction);
        y += lengthdir_y(speed, player_direction);
        
        // flip sprite based on direction
        image_xscale = (obj_player.x < x) ? -1 : 1;
    } else {
        // stop moving if too close to player
        speed = 0;
    }
} else {
    // if no player detected, continue random movement
    if (is_moving) {
        var move_direction = point_direction(x, y, target_x, target_y);
        
        x += lengthdir_x(speed, move_direction);
        y += lengthdir_y(speed, move_direction);
        
        // flip sprite based on movement
		image_xscale = (target_x < x) ? -1 : 1;
		
		// check if enemy has reach target, pick new target if so
		if (point_distance(x, y, target_x, target_y) < 5) {
			// pick new target if close to current one
			target_x = x + irandom_range(-256, 256);
            target_y = y + irandom_range(-256, 256);
		}
    }
}