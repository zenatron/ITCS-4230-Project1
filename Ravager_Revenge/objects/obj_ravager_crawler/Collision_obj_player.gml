// Evan Stark - October 12th 2024 - ITCS 4230 001

// Dealing damage to the player on collision and if haven't already taken damage.
if (instance_exists(obj_player) and !obj_player.damage_taken) {
	obj_player.player_health -= 15;
	obj_player.damage_taken = true;
}
