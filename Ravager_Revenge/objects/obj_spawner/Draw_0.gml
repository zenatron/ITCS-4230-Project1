// Evelyn Hosana - October 16th 2024 - ITCS 5230

// draw spawner
draw_self();

// position health bar above spawner
var bar_width = sprite_width; // use width of sprite for health bar
var bar_height = 5; // set a fixed height for health bar
var x_pos = x - bar_width / 2; // center bar over sprite
var y_pos = y - sprite_height / 2 - 10; // position bar just above sprite
    
// draw black background for health bar
draw_rectangle_color(x_pos, y_pos, x_pos + bar_width, y_pos + bar_height, c_black, c_black, c_black, c_black, false);
    
// calculate width of health portion based on current health
var health_ratio = max(spawner_health / max_health, 0);
var health_bar_width = bar_width * health_ratio;
    
// draw red portion representing current health
draw_rectangle_color(x_pos, y_pos, x_pos + health_bar_width, y_pos + bar_height, c_orange, c_orange, c_orange, c_orange, false);