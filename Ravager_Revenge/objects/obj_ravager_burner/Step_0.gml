// Evelyn Hosana - September 26th 2024 - ITCS 5230

// player detection logic
if (instance_exists(obj_player)) {
    var player_distance = point_distance(x, y, obj_player.x, obj_player.y);
    
    // check if player is within range
    if (player_distance <= range) {
        player_detected = true; // set player detection flag to true
		state = burner_state.attack; // swich to attack state
		alarm[1] = -1; // stop fire path creation
    } else {
        player_detected = false; // set player detection flag to false
		if (state == burner_state.attack) {
			state = burner_state.move; // resume movement when player leaves range
			move_speed = 0.5;
			alarm[0] = 300;  // set movement alarm (5 seconds)
			
			// stop fire ring attack when player leaves range
			fire_ring_active = false;
			alarm[2] = -1;
			
			alarm[1] = 30; // resume fire path creation
		}
    }
}

// handle state logic
switch (state) {
    case burner_state.move:
        var move_direction = point_direction(x, y, target_x, target_y);
        x += lengthdir_x(move_speed, move_direction);
        y += lengthdir_y(move_speed, move_direction);

        // flip sprite based on movement
        image_xscale = (target_x < x) ? -1 : 1;
        
        // check if target is reached
        if (point_distance(x, y, target_x, target_y) < 5) {
            state = burner_state.wait;  // switch to waiting state
            alarm[0] = 180;  // wait for 3 seconds
        }
        break;

    case burner_state.wait:
        // waiting state handled by alarm[0]
        break;

    case burner_state.attack:
        if (player_distance > 48) {
            // move towards player if detected and not too close
            var player_direction = point_direction(x, y, obj_player.x, obj_player.y);
            x += lengthdir_x(move_speed, player_direction);
            y += lengthdir_y(move_speed, player_direction);

            // flip sprite based on player position
            image_xscale = (obj_player.x < x) ? -1 : 1;
        } else {
            move_speed = 0;  // stop moving if too close
        }

        // call fire ring attack script if not already active
        if (!fire_ring_active) {
            fire_ring_active = true;
            fire_ring_radius = 32;  // reset ring radius
            alarm[2] = fire_ring_interval;  // start fire ring expansion
        }
        break;
}