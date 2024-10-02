// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// check if player instance exists
if (instance_exists(obj_player)) {
    var player = obj_player; // player reference
    player_direction = point_direction(x, y, player.x, player.y);
    player_distance = point_distance(x, y, player.x, player.y);

    // update sprite size and shaking effect if scaling or shaking is active
    if (sprite_size < 7) {
        sprite_size += 0.01; // gradually grow
		shaking_effect = 3; // start shaking while growing
		
		timer += 1;
		
		if (timer >= room_speed) {
            if (image_index == 0) {
                image_index = 1;  // switch to frame 1
            } else {
                image_index = 0;  // switch to frame 0
            }
            timer = 0;  // reset the timer after switching
        }
    } else {
		shaking_effect = 0; // stop shaking once size maxes out
	    image_index = 2; // switch to final frame (frame 2)
	    image_speed = 0;  // stop automatic animation
    }
	
	// check player x to determine which direction to face
    if (player.x < x) {
        sprite_flip_xscale = -1; // face left
    } else {
        sprite_flip_xscale = 1;  // face right
    }
}