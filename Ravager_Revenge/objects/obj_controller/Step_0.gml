// Evelyn Hosana - October 7th 2024 - ITCS 5230

// reduce global burn cooldown over time
if (global.burn_cooldown > -1) {
    global.burn_cooldown -= 1;
}

// ensure only one healthbar object is spawned
if (!instance_exists(obj_healthbar)) {
	if (room == rm_level or room == rm_fin) {
		instance_create_layer(0, 0, "GUI_Instances", obj_healthbar);
	} else {
		instance_destroy();
	}
}

// check if artifacts should be moving
if (global.moving_artifacts) {
    var destination_x = global.artifact_final_pos[0];
    var destination_y = global.artifact_final_pos[1];

    // move each artifact toward destination
    for (var i = 0; i < array_length(global.artifacts_collected); i++) {
        var cur_x = global.artifact_start_x[i];
        var cur_y = global.artifact_start_y[i];

        // calculate distance to target
        var dx = destination_x - cur_x;
        var dy = destination_y - cur_y;

        // calculate total distance to target
        var distance = point_distance(cur_x, cur_y, destination_x, destination_y);

        // only move if distance is greater than a small threshold (avoid overshooting)
        if (distance > 2) {
            // normalize direction vector
            var direction_x = dx / distance;
            var direction_y = dy / distance;

            // move artifact in direction of target
            global.artifact_start_x[i] += direction_x * global.artifact_move_speed;
            global.artifact_start_y[i] += direction_y * global.artifact_move_speed;
        }
    }

    // check if all artifacts have reached destination
    if (point_distance(global.artifact_start_x[3], global.artifact_start_y[3], destination_x, destination_y) < 2) {
        global.moving_artifacts = false;

        // trigger alarm for combined artifact display
        global.artifact_combined = true;
        alarm[2] = room_speed * 4;  // wait 4 seconds before transitioning to next room
    }
}