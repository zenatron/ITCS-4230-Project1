// Evan Stark - September 20th 2024 - ITCS 4230 001

// default settings
draw_set_font(-1);
draw_set_color(c_white);

// align variable drawing to right side of screen
draw_set_halign(fa_left);

// Printing out the variables on the screen to see whats going on.
draw_text(pos_x, pos_y, "Move speed : " + string(obj_player.move_speed));
draw_text(pos_x, pos_y + padding, "x speed : " + string(obj_player.x_speed));
draw_text(pos_x, pos_y + (padding * 2), "y speed : " + string(obj_player.y_speed));
draw_text(pos_x, pos_y + (padding * 3), "x Position : " + string(obj_player.x));
draw_text(pos_x, pos_y + (padding * 4), "y Position : " + string(obj_player.y));
draw_text(pos_x, pos_y + (padding * 5), "player health : " + string(obj_player.player_health));
draw_text(pos_x, pos_y + (padding * 6), "damage taken? : " + string(obj_player.damage_taken));
draw_text(pos_x, pos_y + (padding * 7), "CHEAT-IMMORTALITY? : " + string(global.immortality));

draw_set_halign(fa_right);
draw_text(display_get_width(), 950, "Artifact Pieces Collected : ");
draw_text(display_get_width() - 20, 1050, "Kill Count : " + string(global.kill_count));

// get GUI dimensions
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

// starting coordinates for bottom-right corner, adjust for sprite size
var start_x = gui_width - 50;
var start_y = gui_height - 70;

// scaling factor
var scale_x = 2;
var scale_y = 2;

// spacing between artifacts
var x_offset = 60;

// check if there are collected artifacts
if (array_length(global.artifacts_collected) > 0) {
    // loop through collected artifacts and draw them
    for (var i = 0; i < array_length(global.artifacts_collected); i++) {
        var artifact_frame = global.artifacts_collected[i];

        // draw artifact sprite using collected image_index (frame)
        draw_sprite_ext(spr_artifact, artifact_frame, start_x - (i * x_offset), start_y, scale_x, scale_y, 0, c_white, 1);
    }
}