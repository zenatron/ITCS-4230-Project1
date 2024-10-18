// Evan Stark - October 12th 2024 - ITCS 4230 001
// Dealing damage to the player on collision
if (instance_exists(obj_player) and !obj_player.damage_taken) {
	obj_player.player_health -= 10;
	obj_player.damage_taken = true;
}