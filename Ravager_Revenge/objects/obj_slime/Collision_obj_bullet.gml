// Evelyn Hosana - October 10th 2023 - ITCS 5230

// check if collision sound playing
if (!audio_is_playing(snd_slime_with_bullet)) { audio_play_sound(snd_slime_with_bullet, 2, false); }

// slime breaks bullets to increase challenge
instance_destroy(other);