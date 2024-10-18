// Evelyn Hosana - October 10th 2024 - ITCS 5230

function scr_attack_pattern_2(){
	path_end();
	obj_wall.solid = false;
	// check if slime limit reached
    if (instance_number(obj_slime) < slime_limit) {
        // get start point of slime spawn, 300 pixels away in direction of player
        var slime_spawn_x = lengthdir_x(250, player_direction) + x;
        var slime_spawn_y = lengthdir_y(250, player_direction) + y;

        // generate random offsets for slime spawning
        var offset_x = irandom_range(-150, 150);
        var offset_y = irandom_range(-150, 150);

        // create slime puddle with random offset
        instance_create_layer(slime_spawn_x + offset_x, slime_spawn_y + offset_y, "Slime_Instances", obj_slime);
    }
}