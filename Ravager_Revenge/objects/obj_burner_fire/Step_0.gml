// Evelyn Hosana - October 7th 2024 - ITCS 5230

// check if fire is colliding with player
if (place_meeting(x, y, obj_player)) {
    // only apply damage if cooldown is inactive
   if (global.burn_cooldown == -1) {
        obj_player.player_health -= 10;  // reduce player health by 10
        global.burn_cooldown = global.burn_interval;  // start global cooldown
    }
}