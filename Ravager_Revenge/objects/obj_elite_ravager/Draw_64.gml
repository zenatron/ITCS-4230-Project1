// Evelyn Hosana - October 14th 2024 - ITCS 5230

// draw health bar background
draw_set_color(c_black);
draw_rectangle(display_get_width() / 2 - 400, 30, display_get_width() / 2 + 400, 50, false);

// then draw health bar
draw_set_color(c_white);
draw_text(display_get_width() / 2 - 50, 50, "Elite Ravager");

// determine health bar color
if (boss_health > 666) { draw_set_color(c_green); }
else if (boss_health > 333) { draw_set_color(c_yellow); }
else { draw_set_color(c_red); }

// draw health bar
draw_rectangle(display_get_width() / 2 - 400, 30, display_get_width() / 2 - 400 + ((boss_health / 1000) * 800), 50, false);