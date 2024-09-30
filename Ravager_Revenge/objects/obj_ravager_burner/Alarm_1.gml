// Evelyn Hosana - September 26th 2024 - ITCS 5230

if (!player_detected) {
    var fire = instance_create_layer(x, y - sprite_height / 2, "Instances", obj_burner_fire);
    fire.image_speed = 0.2;  // adjust animation speed

    alarm[1] = fire_interval;  // reset alarm for continuous fire creation
}