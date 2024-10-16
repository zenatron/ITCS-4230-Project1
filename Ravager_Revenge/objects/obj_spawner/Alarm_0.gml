// Evelyn Hosana - October 16th 2024 - ITCS 5230

// only proceed if spawner exists (3 placed, cant use instance_exists)
if (spawner_health > 0) {	
    // spawn crawlers if needed
    if (crawler_count < crawler_max) {
		// use script to find valid spawn position (avoid obj_wall)
		var pos = scr_find_valid_pos();
        if (pos != noone) {
            var new_crawler = instance_create_layer(pos[0], pos[1], "Instances", obj_ravager_crawler);
            new_crawler.spawner_id = id; // assign spawner ID to enemy
            crawler_count += 1;
        }
    }
    // spawn spitters if needed
    if (spitter_count < spitter_max) {
		var pos = scr_find_valid_pos();
        if (pos != noone) {
			var new_spitter = instance_create_layer(pos[0], pos[1], "Instances", obj_ravager_spitter);
            new_spitter.spawner_id = id;
            spitter_count += 1;
        }
    }
    // spawn burners if needed
    if (burner_count < burner_max) {
        var pos = scr_find_valid_pos();
        if (pos != noone) {
			var new_burner = instance_create_layer(pos[0], pos[1], "Instances", obj_ravager_burner);
            new_burner.spawner_id = id;
            burner_count += 1;
        }
    }
    // reset alarm to trigger again after 8 seconds
    alarm[0] = room_speed * 8;
}