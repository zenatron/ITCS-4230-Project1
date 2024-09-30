// Evelyn Hosana - September 26th 2024 - ITCS 5230

if (!player_detected) {  // only control random movement when the player isn't detected
    if (is_moving) {
        // enemy will stop moving and wait
        is_moving = false;
        alarm[0] = wait_duration; // wait for 3 seconds
    } else {
        // resume moving and pick a new random target location
        is_moving = true;
        target_x = x + irandom_range(-256, 256);
        target_y = y + irandom_range(-256, 256);
        
        alarm[0] = movement_duration; // move for 5 seconds
    }
}