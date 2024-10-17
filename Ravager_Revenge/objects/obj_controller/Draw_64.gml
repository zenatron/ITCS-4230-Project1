// Evan Stark - September 20th 2024 - ITCS 4230 001

// Return to default settings
draw_set_font(-1);
draw_set_color(c_white);

// Printing out the variables on the screen to see whats going on.
draw_text(25, 25, "Move speed : " + string(obj_player.move_speed));
draw_text(25, 50, "x speed : " + string(obj_player.x_speed));
draw_text(25, 75, "y speed : " + string(obj_player.y_speed));
draw_text(25, 100, "x Position : " + string(obj_player.x));
draw_text(25, 125, "y Position : " + string(obj_player.y));
draw_text(25, 150, "player health : " + string(obj_player.player_health));
draw_text(25, 175, "damage taken? : " + string(obj_player.damage_taken));
draw_text(25, 200, "CHEAT-IMMORTALITY? : " + string(global.immortality));

draw_text(1780, 950, "Artifact Pieces Collected : ");
draw_text(1820, 1050, "Kill Count : " + string(global.kill_count));

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