// Evelyn Hosana - September 26th 2024 - ITCS 5230

// draw the enemy
draw_self();

// set the color to red for the detection range
draw_set_color(c_red);

// draw the detection radius as an outline (band)
draw_circle(x, y, range, true);