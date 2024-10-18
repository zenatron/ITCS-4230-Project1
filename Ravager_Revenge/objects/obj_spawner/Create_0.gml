// Evelyn Hosana - October 16th 2024 - ITCS 5230

// maximum enemy instances spawned
crawler_max = 5; 
spitter_max = 2;
burner_max = 3;

// tracking active enemy instances spawned
crawler_count = 0;
spitter_count = 0;
burner_count = 0;

spawn_radius = 360;

// set alarm to trigger spawning
alarm[0] = room_speed * 8; // 8 seconds