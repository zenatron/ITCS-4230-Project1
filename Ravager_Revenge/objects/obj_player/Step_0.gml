// Evan Stark - Septmeber 20th 2024 - ITCS 4230 001

// Moving the player as long they aren't colliding with a wall.
if (can_move) {
    var moving_horizontally = false; // track horizontal movement
    var moving_vertically = false; // track vertical movement
    is_moving = false; // assume not moving initially

	// Handle vertical movement
    if (keyboard_check(ord("W")) and !instance_place(x, y - move_speed, obj_wall)) {
        y -= move_speed;
        moving_vertically = true; // track vertical movement
        is_moving = true;
    } 
    else if (keyboard_check(ord("S")) and !instance_place(x, y + move_speed, obj_wall)) {
        y += move_speed;
        moving_vertically = true;
        is_moving = true;
    }

	// Handle horizontal movement
    if (keyboard_check(ord("A")) and !instance_place(x - move_speed, y, obj_wall)) {
        x -= move_speed;
        moving_horizontally = true; // track horizontal movement
        image_xscale = 1; // face left
        is_moving = true;
    } 
    else if (keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_wall)) {
        x += move_speed;
        moving_horizontally = true;
        image_xscale = -1; // face right
        is_moving = true;
    }

    // play animation based on movement direction
    if (moving_horizontally) {
        // play side animation (frames 9-11)
        if (image_index < 9 or image_index > 11) { image_index = 9; }
        image_speed = 0.2;
    } 
    else if (moving_vertically) {
        if (keyboard_check(ord("W"))) {
            // play upward animation (frames 12-14)
            if (image_index < 12 or image_index > 14) { image_index = 12; }
        } else {
            // play downward animation (frames 6-8)
            if (image_index < 6 or image_index > 8) { image_index = 6; }
        }
        image_speed = 0.2;
    }

    // handle idle state if no movement occurs
    if (!is_moving) {
        image_speed = 0; // stop animation

        // set idle frames based on last released key
        if (keyboard_check_released(ord("W"))) { image_index = 5; } // Idle up
        else if (keyboard_check_released(ord("S"))) { image_index = 3; } // Idle down
        else if (keyboard_check_released(ord("A"))) { 
            image_index = 4; 
            image_xscale = 1; // face left
        }
        else if (keyboard_check_released(ord("D"))) { 
            image_index = 4; 
            image_xscale = -1; // face right
        }
		
		// check if audio is currently playing and finished before playing again
		if (audio_is_playing(snd_player_walk)) { audio_stop_sound(snd_player_walk); }
    } else {
		// play walking sound
		if (!audio_is_playing(snd_player_walk)) { audio_play_sound(snd_player_walk, 1, true); }
	}
    // reset speeds
    x_speed = 0;
    y_speed = 0;
}



// If the left mouse button is held AND if the can shoot is true, create a bullet instance.
// SOURCE: https://www.youtube.com/watch?v=ZyYXQ6IR4lY
if (mouse_check_button(mb_left) and can_shoot) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.speed = bullet.bullet_speed;
	bullet.direction = bullet.bullet_direction;
	
	// determine direction and set attack sprite
    var angle = point_direction(x, y, mouse_x, mouse_y);
    if (angle >= 45 and angle < 135) {
        // upward direction (45° to 135°)
        image_index = 2;  // attack up
    } else if (angle >= 135 and angle < 225) {
        // leftward direction (135° to 225°)
        image_index = 1;  // attack left
        image_xscale = 1;  // face left
    } else if (angle >= 225 and angle < 315) {
        // downward direction (225° to 315°)
        image_index = 0;  // attack down
    } else {
        // rightward direction (315° to 45°)
        image_index = 1;  // attack right
        image_xscale = -1;  // face right (flipped)
    }
	
	// Cooldown for shooting bullets.
	can_shoot = false;
	alarm[0] = 30;
}

// Evelyn Hosana - October 3rd 2024 - ITCS 5230

// check if player health is below 0, destroy player
// Adding super basic Immortality check - PV - 10/14/2024
if (player_health <= 0 && !global.immortality) {
	if (!death_sound_played) {
		audio_play_sound(snd_player_death, 2, false);
		death_sound_played = true;
		
		alarm[3] = room_speed * 1;
	}
}

// check if player health was reduced
if (player_health < previous_health) {
	// check if audio is currently playing and finished before playing again
	if (!audio_is_playing(snd_player_damage) and !(player_health <= 15)) { 
		audio_play_sound(snd_player_damage, 3, false); 
	}
	damage_taken = true;
	previous_health = player_health; // update health tracker
	
	// spawn blood object
	instance_create_layer(x, y, "Instances", obj_blood);
	
	// set alarm for 1 second
    alarm[2] = room_speed; 
}

// if player no longer colliding with slime, reset flag
if (!place_meeting(x, y, obj_slime)) { damaged_by_slime = false; move_speed = 4; }

// loop through NPCs and check if player interacting with any NPCs
with (obj_npc) {
    if (player_in_range and mission_assigned) {
        global.mission_visible = true;
        break;  // stop checking once we find active mission
    }
}

// Evan Stark - October 18th 2024 - ITCS 4230 001
// Adjusting the max health when the player when using the Alt+L cheat.
if (player_health > max_health) {
	max_health = player_health;	
}