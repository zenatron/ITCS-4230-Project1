// decrement enemy health
if (other.enemy_health > 50) {
	other.enemy_health -= 50; // deal 50 damage
} else {
    other.enemy_health = 0; // set health to 0 (avoid negatives)
    instance_destroy(other); // destroy enemy if health is 50 or less
}

// Destory the bullet once a collision occurs.
instance_destroy();