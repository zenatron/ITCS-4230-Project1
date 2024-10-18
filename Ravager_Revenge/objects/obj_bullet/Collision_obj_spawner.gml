// Evelyn Hosana - October 16th 2024 - ITCS 5230

// decrement spawner health
if (other.spawner_health > 50) {
	other.spawner_health -= 50; // deal 50 damage
} else {
    other.spawner_health = 0; // set health to 0 (avoid negatives)
    instance_destroy(other); // destroy spawner if health is 50 or less
}

// destroy bullet upon collision
instance_destroy();