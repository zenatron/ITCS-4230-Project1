// Evelyn Hosana - October 7th 2024 - ITCS 5230

// decrement boss health
if (other.boss_health > 50) {
	other.boss_health -= 50; // deal 50 damage
} else {
    other.boss_health = 0; // set health to 0 (avoid negatives)
    instance_destroy(other); // destroy enemy if health is 50 or less
}

// Destory the bullet once a collision occurs.
instance_destroy();