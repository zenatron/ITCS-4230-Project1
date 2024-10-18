// Evelyn Hosana - October 16th 2024 - ITCS 5230

// function to find healthkit spawn positions
function scr_healthkit_pos(){
	var spawn_x = argument0;
	var spawn_y = argument1;
	var healthkit_pos = argument2;
	var min_dist = argument3;

	for (var j = 0; j < array_length(healthkit_pos); j++) {
        var hx = healthkit_pos[j][0];
        var hy = healthkit_pos[j][1];
        if (point_distance(spawn_x, spawn_y, hx, hy) < min_dist) {
            return false; // too close to another healthkit
        }
    }
    return true; // valid position
}