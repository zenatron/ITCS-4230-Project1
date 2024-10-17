// Evelyn Hosana - October 2nd 2024 - ITCS 5230

image_speed = 0; // no automatic animation
image_index = 0; // start at frame 0
sprite_size = 1; // object size, initially 1
shaking_effect = 0;
timer = 0;
roar_play = false;

// store original mask size
mask_width = 32;
mask_height = 32;

// define custom collision area based on sprite size
hitbox_left = 0;
hitbox_right = 0;
hitbox_top = 0;
hitbox_bottom = 0;

enum elite_state {
	start,
	attack_phase_1,
	attack_phase_2,
	attack_phase_3
};

state = elite_state.start;

player_direction = 0;
player_distance = 0;

alarm[0] = room_speed * 10; // minion spawn cooldown
slime_limit = 10; // maximum number of slime puddles allowed at once
spawn_slime = false;