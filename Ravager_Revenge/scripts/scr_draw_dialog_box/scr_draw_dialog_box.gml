// Evelyn Hosana - October 14th 2024 - ITCS 5230

/// @function scr_draw_dialog_box(dialog_text)
/// @param dialog_text - The text to display in the dialog box
function scr_draw_dialog_box(dialog_text) {
    var box_width = 600;
    var box_height = 150;
	var w = display_get_gui_width();
	var h = display_get_gui_height();
    var box_x = w / 2 - (box_width / 2);
    var box_y = h - box_height - 50;
    
    // draw background (white box)
    draw_set_color(c_white);
    draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
    
    // draw wrapped text
    draw_set_color(c_black);
    scr_draw_wrapped_text(w / 2, box_y + 5, dialog_text, box_width - 40, 20);
    
    // draw 'Press Enter to Continue' prompt
    draw_text(w / 2, box_y + 120, "Press 'Enter' to Continue");
}
