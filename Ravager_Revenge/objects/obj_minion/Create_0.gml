// Evelyn Hosana - October 1st 2024 - ITCS 5230

// destroy self after 20 seconds of chasing
alarm[0] = 20 * room_speed;

image_speed = 0; // control frame rate
frame_delay = 0; // counter for controlling delay between frames
frame_rate = 8; // how many steps each frame lasts

image_xscale = 2;
image_yscale = 2;