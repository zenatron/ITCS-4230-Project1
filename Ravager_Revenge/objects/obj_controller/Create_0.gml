// Evelyn Hosana - September 26th 2024 - ITCS 5230

// for drawing variables
padding = 25;
pos_x = 25;
pos_y = 25;

// initialize player kill count
global.kill_count = 0;

// initialize global obj_fire attack cooldown
global.burn_cooldown = -1;
global.burn_interval = room_speed; // 1 second

// Immortality variable for cheats
global.immortality = false

// npc missions
global.mission_assigned_npc1 = false;
global.mission_assigned_npc2 = false;
global.mission_assigned_npc3 = false;

global.mission_progress_npc1 = 0;
global.mission_progress_npc2 = 0;
global.mission_progress_npc3 = 0;

global.mission_target_npc1 = 10; // Ravager Crawlers
global.mission_target_npc2 = 5; // Ravager Spitters
global.mission_target_npc3 = 2; // Ravager Burners

// artifact variables
global.artifact_count = 0;
global.artifacts_collected = [];

if (!variable_global_exists("available_frames")) {
    global.available_frames = [1, 2, 3]; // initial available frames for artifacts
}

// get random results each time
randomize();

// number of healthkits to spawn
var healthkit_count = 10;
// array to store spawn positions
var healthkit_pos = [];
// minimum spawn distance between healthkits
var min_dist = 200;

// loop to spawn healthkits
for (var i = 0; i < healthkit_count; i++) {
    var valid = false;
    var spawn_x, spawn_y;

    // Try finding a valid position within the room bounds
    repeat(100) { // limit attempts to avoid infinite loops
        spawn_x = irandom_range(0, room_width);
        spawn_y = irandom_range(0, room_height);
        
        // Check if the position is not colliding with any obj_wall and is far enough from other healthkits
        if (!position_meeting(spawn_x, spawn_y, obj_wall) and scr_healthkit_pos(spawn_x, spawn_y, healthkit_pos, min_dist)) {
            valid = true;
            break;
        }
    }

    // If a valid position was found, create the healthkit
    if (valid) {
        instance_create_layer(spawn_x, spawn_y, "Instances", obj_healthkit);
        
        // Store the position of the new health kit
        array_push(healthkit_pos, [spawn_x, spawn_y]);
    }
}