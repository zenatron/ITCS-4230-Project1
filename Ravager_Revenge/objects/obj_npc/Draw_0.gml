// Evelyn Hosana - October 14th 2024 - ITCS 5230

// draw NPC sprite
draw_self();

if (!player_in_range) { draw_set_color(c_black); }
else { draw_set_color(c_red); }

// draw exclamation mark above NPC
var offset_y = -32;
var offset_x = -6;
draw_text(x + offset_x, y + offset_y, "!");