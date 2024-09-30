// Evelyn Hosana - September 26th 2024 - ITCS 5230

if (instance_exists(obj_player) and can_shoot) {
	// create new projectile
	instance_create_layer(x, y, "Instances", obj_spitter_bullet);
}

// reset alarm for next bullet fired
alarm[0] = room_speed;