// Evelyn Hosana - October 7th 2024 - ITCS 5230

if (!audio_is_playing(snd_player_death)) { audio_play_sound(snd_player_death, 2, false); }
// when player dies, restart level
room_goto(rm_bad_ending);