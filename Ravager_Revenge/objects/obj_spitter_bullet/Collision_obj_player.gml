// Evelyn Hosana - October 3rd 2024 - ITCS 5230

// if bullet hits player, destroy bullet and deal damage to player
other.player_health -= 10;
obj_player.damage_taken = true;
instance_destroy();