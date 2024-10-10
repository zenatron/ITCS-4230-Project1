// Evelyn Hosana - October 1st 2024 - ITCS 5230

// chase player logic
if instance_exists(obj_player) {
    var player_direction = point_direction(x, y, obj_player.x, obj_player.y);

    // set speed and direction towards player
    x += lengthdir_x(move_speed, player_direction);
    y += lengthdir_y(move_speed, player_direction);
}

frame_delay += 1;

if (frame_delay >= frame_rate) {
    image_index += 1;
    frame_delay = 0;  // reset delay counter
	
	// loop between frames 0, 1, and 2
	if (image_index >= 3) { image_index = 0; }
}