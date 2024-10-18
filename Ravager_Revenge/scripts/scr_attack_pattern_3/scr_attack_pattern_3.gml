// Evelyn Hosana - October 10th 2024 - ITCS 5230
function scr_attack_pattern_3(){
	if (player_distance > 32) {
	    // chase player
	    x += lengthdir_x(move_speed, player_direction);
        y += lengthdir_y(move_speed, player_direction);
	}

	// deal damage on collision with a cooldown
	if (place_meeting(x, y, obj_player) and alarm[2] <= 0) {
	    obj_player.player_health -= 50;
	    alarm[2] = room_speed * 5; // cooldown for attack
	}
}