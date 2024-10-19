/// @description Draw interaction tooltip
// Philip Vishnevsky
if (player_in_range) {
    // Draw the 'Press E' notification
    var gui_x = display_get_gui_width() / 2;
    var gui_y = display_get_gui_height() - 50;
    draw_set_color(c_white);

    if (global.artifact_count < 4) {
        draw_text(gui_x, gui_y, "YOU DO NOT HAVE ALL ARTIFACTS");
    } else {
        draw_text(gui_x, gui_y, "PRESS E TO ASSEMBLE ARTIFACTS");
    }
}