if (obj_player.x < x) {
	move_contact_solid(-x, move_speed);
} else if (obj_player.x > x) {
	move_contact_solid(x, move_speed);
}

if (obj_player.y < y) {
	move_contact_solid(-y, move_speed);
} else if (obj_player.y > y) {
	move_contact_solid(y, move_speed);
}