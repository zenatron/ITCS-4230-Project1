// Evan Stark - October 13th 2024 - ITCS 4230 001

// Heal the player a little bit and destroy healthkit.
var potential_health = obj_player.player_health + 50;

// Capping the player's health at 100 if it goes over the amount.
if (potential_health >= obj_player.max_health) {
	obj_player.player_health = 100;	
}

else {
	obj_player.player_health = potential_health;	
}
instance_destroy();