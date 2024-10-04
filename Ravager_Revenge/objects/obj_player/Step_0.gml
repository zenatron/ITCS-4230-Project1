// Evan Stark - Septmeber 20th 2024 - ITCS 4230 001

// Moving the player as long they aren't colliding with a wall.

// Moving the player.
if (can_move) {
	if (keyboard_check(vk_up) and !instance_place(x, y - move_speed, obj_wall)) {
		y -= move_speed;
	}

	if (keyboard_check(vk_down) and !instance_place(x, y + move_speed, obj_wall)) {
		y += move_speed;
	}

	if (keyboard_check(vk_left) and !instance_place(x - move_speed, y, obj_wall)) {
		x -= move_speed;
	}

	if (keyboard_check(vk_right) and !instance_place(x + move_speed, y, obj_wall)) {
		x += move_speed;
	}
}

// If the space bar pressed AND if the can shoot is true, create a bullet instance.
if(keyboard_check(vk_space) && can_shoot)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	// Cooldown for shooting bullets.
	can_shoot = false;
	alarm[0] = 30;
	// Change to shooting sprite
	sprite_index = spr_tempShootSprite;
	alarm[1] = 25;
}



// Evelyn Hosana - October 3rd 2024 - ITCS 5230

// check if player health is below 0, destroy player
if (health <= 0) {
	instance_destroy();
}