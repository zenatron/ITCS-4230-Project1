// Evan Stark - Septmeber 20th 2024 - ITCS 4230 001

// Moving the player as long they aren't colliding with a wall.

// Moving the player w/ WASD keys.
if (can_move) {
	if (keyboard_check(ord("W")) and !instance_place(x, y - move_speed, obj_wall)) {
		y -= move_speed;
	}

	if (keyboard_check(ord("S")) and !instance_place(x, y + move_speed, obj_wall)) {
		y += move_speed;
	}

	if (keyboard_check(ord("A")) and !instance_place(x - move_speed, y, obj_wall)) {
		x -= move_speed;
	}

	if (keyboard_check(ord("D")) and !instance_place(x + move_speed, y, obj_wall)) {
		x += move_speed;
	}
}

// If the left mouse button is held AND if the can shoot is true, create a bullet instance.
// SOURCE: https://www.youtube.com/watch?v=ZyYXQ6IR4lY
if (mouse_check_button(mb_left) && can_shoot)
{
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.speed = bullet.bullet_speed;
	bullet.direction = bullet.bullet_direction;
	
	// Cooldown for shooting bullets.
	can_shoot = false;
	alarm[0] = 30;
	
	// Change to shooting sprite
	sprite_index = spr_tempShootSprite;
	alarm[1] = 25;
}

// Evelyn Hosana - October 3rd 2024 - ITCS 5230

// check if player health is below 0, destroy player
if (player_health <= 0) {
	instance_destroy();
}

// check if player health was reduced
if (player_health < previous_health) { 
	damage_taken = true;
	previous_health = player_health; // update health tracker
	
	// spawn blood object
	instance_create_layer(x, y, "Instances", obj_blood);
	
	// set alarm for 1 second
    alarm[2] = room_speed; 
}