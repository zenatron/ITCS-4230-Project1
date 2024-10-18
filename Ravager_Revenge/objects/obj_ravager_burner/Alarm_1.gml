// Evelyn Hosana - September 26th 2024 - ITCS 5230

if (!player_detected) {
	// create fire object
    var fire = instance_create_layer(x, y - sprite_height / 2, "Instances", obj_burner_fire);
    fire.image_speed = 0.2;  // adjust animation speed

    alarm[1] = 30;  // reset alarm for continuous fire creation (0.5 seconds)
}