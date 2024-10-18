// Evelyn Hosana - October 7th 2024 - ITCS 5230

// draw shader when damage is taken (change player red for few seconds)
if (damage_taken) {
	shader_set(sh_damage);
	shader_set_uniform_f(shader_timer, alarm[2] / room_speed); // pass remaining time to shader
	draw_self();
	shader_reset();
} else {
	draw_self();
}