// Evelyn Hosana - October 14th 2024 - ITCS 5230

// initialize if list doesn't exist
if (!variable_global_exists("npc_frames")) {
    global.npc_frames = ds_list_create();
    
    // add all available frames
    for (var i = 0; i < 5; i++) { ds_list_add(global.npc_frames, i); }
}

// ensure list exists
if (ds_list_size(global.npc_frames) > 0) {
    // get random index from available frames
    var frame_index = irandom(ds_list_size(global.npc_frames) - 1);
    
    // set sprite frame
    image_index = global.npc_frames[| frame_index];
    
    // remove assigned frame from list (no repeats)
    ds_list_delete(global.npc_frames, frame_index);
}

image_speed = 0; // pause frame speed
player_in_range = false;

// enum for dialog states
enum NPCState {
    NO_DIALOG,
    MISSION_ASSIGNED,
    MISSION_INCOMPLETE,
    MISSION_COMPLETE
}

// variables for NPC mission
npc_state = NPCState.NO_DIALOG;  // initial state

global.mission_target_npc1 = 10; // Ravager Crawlers
global.mission_target_npc2 = 5; // Ravager Spitters
global.mission_target_npc3 = 2; // Ravager Burners

if (!variable_global_exists("npc_counter")) {
    global.npc_counter = 0;
}

// increase NPC counter for each new instance
global.npc_counter += 1;

npc_id = global.npc_counter; // local copy of unique id

// assign dialog and mission based on NPC
if (npc_id == 1) {
    // NPC 1
    npc_dialog = "Hey, you there! I seem to have lost my way to the city, but there are so many ravagers around I'm afraid of getting attacked... Would you mind helping me by defeating 10 Ravager Crawlers? Thanks, I owe you!";
    npc_incomplete_dialog = "You're back! How is the ravager problem that we talked about earlier coming along?";
    npc_complete_dialog = "Wow! You actually did it. Thanks for your help!";
    mission_target = global.mission_target_npc1;  // for Ravager Crawlers
} 
else if (npc_id == 2) {
    // NPC 2
    npc_dialog = "With all these hungry ravagers around, my chickens are disappearing... Say, you look like you know a thing or two about hunting. Mind defeating 5 Ravager Spitters for the sake of my flock for me? Thanks a bunch!";
    npc_incomplete_dialog = "You're back! How is the ravager problem that we talked about earlier coming along?";
    npc_complete_dialog = "Wow! You actually did it. Thanks for your help!";
    mission_target = global.mission_target_npc2;  // for Ravager Spitters
} 
else if (npc_id == 3) {
    // NPC 3
    npc_dialog = "Hello to you, brave one. I have a favor to ask. My child suffers from serious injuries after an encounter with those hideous burners... Could you defeat 2 Ravager Burners? It'd mean the world to me.";
    npc_incomplete_dialog = "You're back! How is the ravager problem that we talked about earlier coming along?";
    npc_complete_dialog = "Wow! You actually did it. Thanks for your help!";
    mission_target = global.mission_target_npc3;  // for Ravager Burners
}