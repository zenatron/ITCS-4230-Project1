// Evelyn Hosana - October 14th 2024 - ITCS 5230

// get width for centering
var width = display_get_width();
var health_bar_width = 800;
var health_bar_height = 20;
var health_bar_x = (width / 2) - (health_bar_width / 2) + 50;
var health_bar_y = 30; // vertical position for health bar

// draw health bar background
draw_set_color(c_black);
draw_rectangle(health_bar_x, health_bar_y, health_bar_x + health_bar_width, health_bar_y + health_bar_height, false);

// draw boss name text centered above health bar
draw_set_color(c_white);
draw_text(health_bar_x + (health_bar_width / 2) + 50, health_bar_y + health_bar_height, "Elite Ravager");

// determine health bar color based on boss health
if (boss_health > 666) { draw_set_color(c_green); }
else if (boss_health > 333) { draw_set_color(c_yellow); }
else { draw_set_color(c_red); }

// draw health bar based on boss health percentage
draw_rectangle(health_bar_x, health_bar_y, health_bar_x + ((boss_health / 1000) * health_bar_width), health_bar_y + health_bar_height, false);