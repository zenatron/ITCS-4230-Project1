// Evelyn Hosana - October 16th 2024 - ITCS 5230

if (array_length(global.available_frames) > 0) {
    // find valid position for spawning artifact piece
    var artifact_spawn_radius = 128;
    var spawn_pos = scr_find_valid_pos(artifact_spawn_radius);

    // check if valid position was found
    if (spawn_pos != noone) {
        var spawn_x = spawn_pos[0];
        var spawn_y = spawn_pos[1];

        // choose frame from global list
        var random_index = irandom(array_length(global.available_frames) - 1);
        var chosen_frame = global.available_frames[random_index];

        // remove chosen frame from global array so it can't be reused
        array_delete(global.available_frames, random_index, 1);

        // create artifact at valid position
        var artifact = instance_create_layer(spawn_x, spawn_y, "Instances", obj_artifact);

        // set artifact image_index to chosen frame
        artifact.image_index = chosen_frame;
    }
}