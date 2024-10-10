// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// check if player instance exists
if (instance_exists(obj_player)) {
    player_direction = point_direction(x, y, obj_player.x, obj_player.y);
    player_distance = point_distance(x, y, obj_player.x, obj_player.y);

    // update sprite size and shaking effect if scaling or shaking is active
    if (sprite_size < 7) {
        sprite_size += 0.01; // gradually grow
		shaking_effect = 3; // start shaking while growing
		timer += 1;
		
		if (timer >= room_speed) {
			// change image index between frames 0 and 1
			image_index = (image_index == 0) ? 1 : 0;
            timer = 0;  // reset the timer after switching
        }
    } else {
		shaking_effect = 0; // stop shaking once size maxes out
	    image_index = 2; // switch to final frame (frame 2)
	    image_speed = 0;  // stop automatic animation
    }
	// flip sprite based on player position
    image_xscale = (obj_player.x < x) ? -1 : 1;
}

// count down alarm[0] for minion spawning
if (alarm[0] > 0) {
    alarm[0]--;
}

// when to enter attack phases
if (obj_camera.camera_state == "normal_view") { 
	if (boss_health > 666) { state = elite_state.attack_phase_1; } 
	else if (boss_health > 333) { state = elite_state.attack_phase_2; } 
	else { state = elite_state.attack_phase_3; }
} else { state = elite_state.start; }

// attack phases
switch (state) {
	case elite_state.start: break;
	case elite_state.attack_phase_1: scr_attack_pattern_1(); break;
	case elite_state.attack_phase_2: scr_attack_pattern_2(); break;
	case elite_state.attack_phase_3: scr_attack_pattern_3(); break;
}

// laser attack during phase 2
if (state == elite_state.attack_phase_2) {
	// slowly move towards player
	var lurk_speed = 0.3;
	x += lengthdir_x(lurk_speed, player_direction);
	y += lengthdir_y(lurk_speed, player_direction);
    
	if (laser_ready) {
        scr_attack_pattern_2();  // fire laser and spawn slime puddles
        laser_ready = false;
        alarm[1] = room_speed * 2;  // reset alarm[1] for next shot
    }
}

// collision with wall logic (due to change in sprite height and solid object/movement issues)
var padding = 50;
var spr_w = sprite_width * image_xscale;
var spr_h = sprite_height * image_yscale;

// check for wall on right (+x)
if (place_meeting(x + spr_w + padding, y, obj_wall)) {
    // wall on right, move left
    x -= move_speed;
    if (obj_player.y < y) {
        y += move_speed;  // move down if player is below
    } else {
        y -= move_speed;  // move up if player is above
    }
}
// check for wall on left (-x)
else if (place_meeting(x - spr_w - padding, y, obj_wall)) {
    // wall on left, move right
	x += move_speed;
    if (obj_player.y < y) {
        y += move_speed;  // move down if player is below
    } else {
        y -= move_speed;  // move up if player is above
    }
}
// check for wall on bottom (+y)
else if (place_meeting(x, y + spr_h + padding, obj_wall)) {
    // wall on bottom, move up
	y -= move_speed;
    if (obj_player.x < x) {
        x -= move_speed;  // move left if player is left
    } else {
        x += move_speed;  // move right if player is right
    }
}
// check for wall on top (-y)
else if (place_meeting(x, y - spr_h - padding, obj_wall)) {
    // wall on top, move down
	y += move_speed;
    if (obj_player.x < x) {
        x -= move_speed;  // move left if player is left
    } else {
        x += move_speed;  // move right if player is right
    }
}