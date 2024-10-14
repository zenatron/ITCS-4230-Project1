// Evelyn Hosana - September 26th 2024 - ITCS 5230

// check if room is not main menu
if (!rm_main_menu) {
	audio_stop_sound(snd_menu_audio); // stop background music
}

// initialize global obj_fire attack cooldown
global.burn_cooldown = -1;
global.burn_interval = room_speed; // 1 second

// Immortality variable for cheats
global.immortality = false