// Evelyn Hosana - September 26th 2024 - ITCS 5230

// variables for movement and target location
target_x = x + irandom_range(-256, 256);
target_y = y + irandom_range(-256, 256);
movement_duration = 300;  // 5 seconds at 60 FPS
wait_duration = 180;      // 3 seconds at 60 FPS

// set up initial alarm for movement
alarm[0] = movement_duration; // starts movement timer

fire_interval = 30;  // fire spawns every 0.5 seconds
alarm[1] = fire_interval;

// fire ring attack variables
fire_ring_radius = 32;  // initial radius of the fire ring
fire_ring_max_radius = range;  // max radius based on player detection range
fire_ring_interval = 1.5 * room_speed;  // time between fire ring expansions
fire_ring_active = false;
fire_ring_objects = 8;  // number of fire objects in the ring