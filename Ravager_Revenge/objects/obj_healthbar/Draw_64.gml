// Evelyn Hosana - October 7th 2023 - ITCS 5230

// get display height for GUI
var display_h = display_get_gui_height();

// get player current health percentage (changes throughout play time)
if (instance_exists(obj_player)) {
    var health_percentage = obj_player.player_health / obj_player.max_health;
} else {
    var health_percentage = 1;  // full health as a default if obj_player is missing
}

// scale factors for sprite
var scale_x = 2;
var scale_y = 2;

// calculate bottom-left position of health bar
var x_pos = 20;
var y_pos = display_h - (sprite_h * scale_y) - 20; // scale up sprite

// draw empty health bar and border (frame 0) first
draw_sprite_part_ext(spr_healthbar, 0, 0, 0, sprite_w, sprite_h, x_pos, y_pos, scale_x, scale_y, c_white, 1);

// draw filled health bar (frame 1) so it's drawn on top of border
draw_sprite_part_ext(spr_healthbar, 1, 0, 0, sprite_w * health_percentage, sprite_h, x_pos, y_pos, scale_x, scale_y, c_white, 1);