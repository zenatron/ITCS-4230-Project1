// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if room is not main menu
if (!rm_main_menu) {
	audio_stop_sound(snd_menu_audio); // stop background music
}

// ensure only one healthbar object is spawned
if (!instance_exists(obj_healthbar)) {
    instance_create_layer(0, 0, "GUI_Instances", obj_healthbar);
}

// initialize global obj_fire attack cooldown
global.burn_cooldown = -1;
global.burn_interval = room_speed; // 1 second