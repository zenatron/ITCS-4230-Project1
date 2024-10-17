// Evelyn Hosana - October 14th 2024 - ITCS 5230

// inform spawner that enemy has been destroyed
if (instance_exists(spawner_id)) {
    with (spawner_id) {
        if (other.object_index == obj_ravager_spitter) { spitter_count -= 1; } 
    }
}

// increment mission progress for NPC2
if (global.mission_assigned_npc2 and global.mission_progress_npc2 < global.mission_target_npc2) {
    global.mission_progress_npc2 += 1;
}

if (!audio_is_playing(snd_enemy_death)) { audio_play_sound(snd_enemy_death, 1, false); }

global.kill_count += 1;