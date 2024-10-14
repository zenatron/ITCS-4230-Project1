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

// npc missions
global.mission_assigned_npc1 = false;
global.mission_assigned_npc2 = false;
global.mission_assigned_npc3 = false;

global.mission_progress_npc1 = 0;
global.mission_progress_npc2 = 0;
global.mission_progress_npc3 = 0;

global.mission_target_npc1 = 10; // Ravager Crawlers
global.mission_target_npc2 = 5; // Ravager Spitters
global.mission_target_npc3 = 2; // Ravager Burners