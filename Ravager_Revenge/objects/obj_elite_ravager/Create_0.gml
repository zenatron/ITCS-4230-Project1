// Evelyn Hosana - October 2nd 2024 - ITCS 5230

image_speed = 0; // no automatic animation
image_index = 0; // start at frame 0
sprite_size = 1; // object size, initially 1
shaking_effect = 0;
timer = 0;

common = room_speed * 5;

enum elite_state {
	start,
	attack_phase_1,
	attack_phase_2,
	attack_phase_3
};

state = elite_state.start;

player_direction = 0;
player_distance = 0;

// initialize variables and timers for phase 2 laser attack
laser_ready = false;
alarm[1] = common; // laser shot timer (fires every 2 seconds)
alarm[2] = common; // shooting window timer (5 seconds of shooting)
alarm[3] = common; // cooldown timer (5 seconds of waiting)
slime_limit = 10; // maximum number of slime puddles allowed at once

// set up alarms
alarm[0] = room_speed * 10; // minion spawn cooldown
alarm[1] = -1; // inactive
alarm[2] = common;
alarm[3] = -1;