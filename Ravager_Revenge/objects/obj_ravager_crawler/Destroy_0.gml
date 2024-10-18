// Evelyn Hosana - October 14th 2024 - ITCS 5230

// inform spawner that enemy has been destroyed
if (instance_exists(spawner_id)) {
    with (spawner_id) {
        if (other.object_index == obj_ravager_crawler) { crawler_count -= 1; } 
    }
}

// increment mission progress for NPC1
if (global.mission_assigned_npc1 and global.mission_progress_npc1 < global.mission_target_npc1) {
    global.mission_progress_npc1 += 1;
}

if (!audio_is_playing(snd_enemy_death)) { audio_play_sound(snd_enemy_death, 1, false); }

global.kill_count += 1;