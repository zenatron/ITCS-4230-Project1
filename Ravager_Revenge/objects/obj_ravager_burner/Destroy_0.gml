// Evelyn Hosana - October 14th 2024 - ITCS 5230

// inform spawner that enemy has been destroyed
if (instance_exists(spawner_id)) {
    with (spawner_id) {
        if (other.object_index == obj_ravager_burner) { burner_count -= 1; } 
    }
}

// increment mission progress for NPC2
if (global.mission_assigned_npc3 and global.mission_progress_npc3 < global.mission_target_npc3) {
    global.mission_progress_npc3 += 1;
}