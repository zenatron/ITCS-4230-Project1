// Evelyn Hosana - September 26th 2024 - ITCS 5230

// after waiting, resume moving
state = burner_state.move;
target_x = x + irandom_range(-360, 360);
target_y = y + irandom_range(-360, 360);
alarm[0] = 300; // move for 5 second