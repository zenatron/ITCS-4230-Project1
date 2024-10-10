// Evelyn Hosana - October 10th 2024 - ITCS 5230
function scr_attack_pattern_1(){
	if (player_distance < 450) {
	    var away_direction = point_direction(obj_player.x, obj_player.y, x, y);
	    x += lengthdir_x(move_speed - 2, away_direction);
        y += lengthdir_y(move_speed - 2, away_direction);
	}
	
	// spawn minions only during phase 1
    if (alarm[0] <= 0) {
        var minion_count = irandom_range(3, 5);
        for (var i = 0; i < minion_count; i++) {
            var offset_x = irandom_range(-32, 32); 
            var offset_y = irandom_range(-32, 32);
            instance_create_layer(x + offset_x, y + offset_y, "Instances", obj_minion);
        }
        alarm[0] = room_speed * irandom_range(10, 15); // reset cooldown
    }
}