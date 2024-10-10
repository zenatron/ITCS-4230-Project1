function scr_attack_pattern_1(){
	if (player_distance < 100) {
	    var away_direction = point_direction(obj_player.x, obj_player.y, x, y);
	    motion_set(away_direction, move_speed); // run away from player
	}

	// minion spawning
	if (alarm[1] <= 0) {
	    for (var i = 0; i < irandom_range(3, 5); i++) {
	        instance_create_layer(x, y, "Instances", obj_minion); // spawn 3-5 minions
	    }
	    alarm[1] = room_speed * irandom_range(10, 15); // reset spawn cooldown
	}
}