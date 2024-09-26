// Evelyn Hosana - September 26th 2024 - ITCS 5230

if (instance_exists(obj_player)) {
	// create new projectile
	instance_create_layer(x, y, "Instances", obj_spitter_bullet);
}

// reset alarm for next bullet fired
alarm[0] = 5 * room_speed; // retrigger every 15 seconds