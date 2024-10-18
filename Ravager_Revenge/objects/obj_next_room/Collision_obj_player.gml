// Evelyn Hosana - October 16th 2024 - ITCS 5230

// if all enemy instances are not in rm_level, move player to next room upon collision
if (!instance_exists(obj_spawner) and global.artifact_count == 3) { room_goto(rm_fin); }