// Evelyn Hosana - October 10th 2024 - ITCS 5230

function scr_attack_pattern_2(){
	// Check if the slime limit is reached
    if (instance_number(obj_slime) < slime_limit) {
        // Get start point of laser, 300 pixels away in direction of player
        var slime_spawn_x = lengthdir_x(250, player_direction) + x;
        var slime_spawn_y = lengthdir_y(250, player_direction) + y;

        // Generate random offsets for slime spawning
        var offset_x = irandom_range(-150, 150);
        var offset_y = irandom_range(-150, 150);

        // Create slime puddle with random offset
        instance_create_layer(slime_spawn_x + offset_x, slime_spawn_y + offset_y, "Instances", obj_slime);
    }
}