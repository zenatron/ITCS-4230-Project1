// Evelyn Hosana - September 26th 2024 - ITCS 5230

function scr_fire_ring_attack(){
	// check if fire ring is active
    if (fire_ring_active) {
		if (!audio_is_playing(snd_burner_attack)) { audio_play_sound(snd_burner_attack, 2, false); }
		
        // create fire objects in a circle at current radius
        for (var i = 0; i < fire_ring_objects; i++) {
            var angle = i * (360 / fire_ring_objects);  // distribute fire objects evenly around circle
            var fire_x = x + lengthdir_x(fire_ring_radius, angle) - 16;  // centering fire objects (-16 offset for 32x32 enemy)
            var fire_y = y + lengthdir_y(fire_ring_radius, angle) - 16;  // centering fire objects (-16 offset for 32x32 enemy)
            
            // create fire instance
            var fire = instance_create_layer(fire_x, fire_y, "Instances", obj_burner_fire);
            fire.image_speed = 0.2;
        }
    
        // expand fire ring radius by 32 pixels
        fire_ring_radius += 32;
    
        // if radius reaches or exceeds detection range, reset it
        if (fire_ring_radius >= fire_ring_max_radius) {
            fire_ring_radius = 32;  // reset radius to 32
        }
    
        // set alarm[2] to repeat this process after 2.5 seconds
        alarm[2] = fire_ring_interval;
    }
}