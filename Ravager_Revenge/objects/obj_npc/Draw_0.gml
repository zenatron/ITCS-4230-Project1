// Evelyn Hosana - October 14th 2024 - ITCS 5230

// draw NPC sprite
draw_self();

if (!player_in_range) { draw_set_color(c_black); }
else { draw_set_color(c_red); }

// draw exclamation mark above NPC
draw_text(x, y - 32, "!");