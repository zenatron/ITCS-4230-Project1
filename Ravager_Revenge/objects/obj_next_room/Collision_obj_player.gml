// Evelyn Hosana - October 16th 2024 - ITCS 5230

// if all enemy instances are not in rm_level, move player to next room upon collision
if (!instance_exists(obj_ravager_crawler)) { room_goto(rm_fin); }