// Evelyn Hosana - October 14th 2024 - ITCS 5230

var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

// interaction range
var interaction_range = 60;

// flip sprite based on player position
image_xscale = (obj_player.x < x) ? 1 : -1;
	
// check if player within range
if (distance_to_player < interaction_range) { player_in_range = true; } 
else { player_in_range = false; }

if (player_in_range and keyboard_check_pressed(ord("E"))) {
    // if mission not yet assigned
    if (!mission_assigned) {
        npc_state = NPCState.MISSION_ASSIGNED;
        mission_assigned = true;
        
        // update global mission tracking
        if (npc_id == 1) { global.mission_assigned_npc1 = true; } 
		else if (npc_id == 2) { global.mission_assigned_npc2 = true; } 
		else if (npc_id == 3) { global.mission_assigned_npc3 = true; }
    }
	// only check progress after mission has been assigned
	else {
		// check if mission progress is incomplete
	    if (npc_id == 1 and global.mission_progress_npc1 < global.mission_target_npc1) {
	        npc_state = NPCState.MISSION_INCOMPLETE;
	    } else if (npc_id == 2 and global.mission_progress_npc2 < global.mission_target_npc2) {
	        npc_state = NPCState.MISSION_INCOMPLETE;
	    } else if (npc_id == 3 and global.mission_progress_npc3 < global.mission_target_npc3) {
	        npc_state = NPCState.MISSION_INCOMPLETE;
	    }
	
	    // check if mission is complete
	    if (npc_id == 1 and global.mission_progress_npc1 >= global.mission_target_npc1) {
	        npc_state = NPCState.MISSION_COMPLETE;
	    } else if (npc_id == 2 and global.mission_progress_npc2 >= global.mission_target_npc2) {
	        npc_state = NPCState.MISSION_COMPLETE;
	    } else if (npc_id == 3 and global.mission_progress_npc3 >= global.mission_target_npc3) {
	        npc_state = NPCState.MISSION_COMPLETE;
	    }
	}
}

// check if NPC1 mission is complete and player presses Enter to dismiss
if (npc_id == 1 and npc_state == NPCState.MISSION_COMPLETE and keyboard_check_pressed(vk_enter)) {
    global.mission_assigned_npc1 = false; // reset mission tracking
	instance_destroy();  // destroy NPC instance
} else if (npc_id == 2 and npc_state == NPCState.MISSION_COMPLETE and keyboard_check_pressed(vk_enter)) {
	global.mission_assigned_npc2 = false;
	instance_destroy();
} else if (npc_id == 3 and npc_state == NPCState.MISSION_COMPLETE and keyboard_check_pressed(vk_enter)) {
	global.mission_assigned_npc3 = false;
	instance_destroy();
}