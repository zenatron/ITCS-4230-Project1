// Evan Stark - September 20th 2024 - ITCS 4230 001
// Creating attributes for the player object.

move_speed = 4;			// # of pixels the player moves per update.
x_speed = 0;			// How fast the player is going left to right.
y_speed = 0;			// How fast the player is moving going up and down.

can_shoot = true;		// Boolean for if the player can shoot a bullet.
sprite_index = spr_player;		// Player's initial sprite.

// Evelyn Hosana - October 7th 2024 - ITCS 5230

// ensure max health remains constant in relation to player_health initially
max_health = player_health;

// track any damage/changes to health
previous_health = player_health;

// implement shader logic and damage
damage_taken = false;
alarm[2] = -1; // no damage taken initially
shader_timer = shader_get_uniform(sh_damage, "uTimer");

image_speed = 0; // pause frames from constantly looping
image_yscale = 1.5; // scale up sprite height
image_index = 3; // begin with idle downward sprite

is_moving = false;
// set mission visibility flag
global.mission_visible = false;