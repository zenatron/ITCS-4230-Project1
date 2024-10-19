// Evelyn Hosana - October 10th 2024 - ITCS 5230

function scr_attack_pattern_1(){
    // ensure path exists and boss is following it
    if (path_index != p_elite_ravager_path) {
		obj_wall.solid = false;
        path_start(p_elite_ravager_path, 2, path_action_stop, false); // follow path with speed 2
    }
	
	// spawn minions during phase 1
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