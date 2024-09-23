// Evan Stark - Septmeber 20th 2024 - ITCS 4230 001

// Moving left or right.
x += ( keyboard_check(vk_right) - keyboard_check(vk_left) ) * move_speed;
y += ( keyboard_check(vk_down) - keyboard_check(vk_up) ) * move_speed;



// De-accelerating the player to give player a more "human" feel.

// TODO: finish functionality.

/* if(!keyboard_check(vk_right) && !keyboard_check(vk_left))
{
	while(x_speed != 0)
	{
		x_speed -= move_speed * 0.1;
		x += x_speed;
	}

} */