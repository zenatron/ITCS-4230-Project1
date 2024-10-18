// Evelyn Hosana - October 7th 2024 - ITCS 5230

// initialize attack cooldown alarm
alarm[0] = -1; // dont trigger right away
attack_cooldown = 3 * room_speed; // 5 seconds
distance_offset = 24; // prevent sprite overlap