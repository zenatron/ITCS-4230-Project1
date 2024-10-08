// Evelyn Hosana - October 7th 2024 - ITCS 5230

// randomly select between frame 0 and frame 1 for the blood sprite
image_index = choose(0, 1);

// stop sprite animation
image_speed = 0;

// randomize blood position slightly
x += irandom_range(-10, 10);
y += irandom_range(-10, 10);

// destroy the blood object after 5 seconds
alarm[0] = 5 * room_speed;