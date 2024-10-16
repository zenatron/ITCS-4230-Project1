// Evelyn Hosana - October 16th 2024 - ITCS 5230

// find valid position for enemy to spawn (not stuck in wall)
function scr_find_valid_pos(){
	var valid = false;
    var spawn_x, spawn_y;
        
    // try finding a valid position
    repeat(100) { // limit attempts to avoid infinite loops
		spawn_x = x + irandom_range(-spawn_radius, spawn_radius);
		spawn_y = y + irandom_range(-spawn_radius, spawn_radius);
		if (!instance_place(spawn_x, spawn_y, obj_wall)) {
			valid = true;
			break;
        }
    }
    if (valid) { return [spawn_x, spawn_y]; } // return valid position
    else { return noone; } // no valid position found within 100 attempts
}