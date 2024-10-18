// Evelyn Hosana - September 26th 2024 - ITCS 5230

// set targets
target_x = obj_player.x;
target_y = obj_player.y;

// initialize bullet speed and frame
bullet_speed = 4;
image_index = 0;

// calculate direction to player position
direction = point_direction(x, y, target_x, target_y);

// set bullet speed
speed = bullet_speed;

// initialize variables for frame switching and rotation
frame_timer = 0;
frame_duration = 1 * room_speed;
rotation_speed = 3; // curvy shot

if (!audio_is_playing(snd_spitter_attack)) { audio_play_sound(snd_spitter_attack, 2, false); }