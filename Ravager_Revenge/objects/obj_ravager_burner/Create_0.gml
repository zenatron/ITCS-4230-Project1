// Evelyn Hosana - September 26th 2024 - ITCS 5230

// declare enum states
enum burner_state {
	move,
	wait,
	attack
}

// variables for movement and target location
target_x = x + irandom_range(-360, 360);
target_y = y + irandom_range(-360, 360);

state = burner_state.move;

// fire ring attack variables
fire_ring_radius = 32; // initial radius of fire ring
fire_ring_max_radius = range; // max radius based on player detection range
fire_ring_interval = 0.5 * room_speed; // time between fire ring expansions
fire_ring_active = false;
fire_ring_objects = 12; // number of fire objects in ring

alarm[0] = 300;  // movement duration (5 seconds)
alarm[1] = 30; // fire path interval (0.5 seconds)