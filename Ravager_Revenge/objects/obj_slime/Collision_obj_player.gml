// Evelyn Hosana - October 10th 2024 - ITCS 5230

// check if player hasn't been damaged by slime in this collision
if (!other.damaged_by_slime) {
	other.player_health -= 10; // seal damage once
	other.move_speed = 0.5; // apply slow effectd
	other.alarm[3] = room_speed * 2
    // set flag to true so player doesn't take damage again until they leave slime
    other.damaged_by_slime = true;
}