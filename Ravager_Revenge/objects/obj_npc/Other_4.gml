// Evelyn Hosana - October 17th 2024 - ITCS 5230

// reset mission and NPC tracking variables
global.mission_assigned_npc1 = false;
global.mission_assigned_npc2 = false;
global.mission_assigned_npc3 = false;

global.mission_progress_npc1 = 0;
global.mission_progress_npc2 = 0;
global.mission_progress_npc3 = 0;

global.npc_counter = 0; // reset NPC counter for fresh instances

if (variable_global_exists("npc_frames")) {
    ds_list_destroy(global.npc_frames); // clean up previous frame list
}

// recreate NPC frames list for new NPCs
global.npc_frames = ds_list_create();
for (var i = 0; i < 5; i++) {
    ds_list_add(global.npc_frames, i);
}