// Evan Stark - September 25th 2024 - ITCS 4230 001

// Initialize the bullet's speed and direction
bullet_speed = 5;
bullet_direction = point_direction(x, y, mouse_x, mouse_y);

// scale down bullet size
image_yscale = 0.5;
image_xscale = 0.5;

audio_play_sound(snd_shot, 3, false);