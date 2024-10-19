// Evelyn Hosana - October 10th 2024 - ITCS 5230

// check if collision sound playing
if (!audio_is_playing(snd_slime_with_player)) { audio_play_sound(snd_slime_with_player, 2, false); }

// check if player hasn't been damaged by slime in this collision
if (!other.damaged_by_slime) {
	other.player_health -= 30; // deal damage once
	other.move_speed = 1; // apply slow effectd
    // set flag to true so player doesn't take damage again until they leave slime
    other.damaged_by_slime = true;
}