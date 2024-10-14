// Evelyn Hosana - October 14th 2024 - ITCS 5230

/// @function scr_draw_dialog_box(dialog_text)
/// @param dialog_text - The text to display in the dialog box
function scr_draw_dialog_box() {
	var dialog_text = argument[0];
	
    var box_width = 600;
    var box_height = 150;
    var gui_x = display_get_gui_width() / 2 - (box_width / 2);
    var gui_y = display_get_gui_height() - box_height - 50;
    
    // draw background (white box)
    draw_set_color(c_white);
    draw_rectangle(gui_x, gui_y, gui_x + box_width, gui_y + box_height, false);
    
    // draw wrapped text
    draw_set_color(c_black);
    scr_draw_wrapped_text(gui_x + 20, gui_y + 20, dialog_text, box_width - 40);
    
    // draw 'Press Enter to Continue' prompt
    draw_text(gui_x + 20, gui_y + box_height - 20, "Press 'Enter' to Continue");
}