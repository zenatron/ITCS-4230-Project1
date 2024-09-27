// Evelyn Hosana - September 26th 2024 - ITCS 5230

// if player is detected (enemy is chasing)
if (player_detected) {
    // stop enemy's movement when colliding with wall
    move_contact_solid(-direction, speed);
} else {
    // reverse direction when patrolling and colliding with a wall
    patrol_direction *= -1;
}