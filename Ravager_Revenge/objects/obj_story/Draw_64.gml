// Evelyn Hosana - October 16th 2024 - ITCS 5230

// Get the GUI size (same as display size in most cases)
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

// Set horizontal alignment for text centering (no valign needed)
draw_set_halign(fa_center);

// Draw the title centered at the top
draw_set_font(fnt_title);
draw_set_color(c_maroon);
draw_text(gui_width / 2, 50, "Story and Objective");

// Set the font for the body text
draw_set_font(-1);
draw_set_color(c_white);

// Adjust the Y position for the body text
var body_y = 250;  // Adjusted to start lower on the screen
var body_text_width = gui_width - 100;  // Set width for wrapping text
var line_height = 30;

// Call the wrapped text function with text-aligned to the top
scr_draw_wrapped_text(gui_width / 2, body_y, paragraph_1, body_text_width, line_height);
scr_draw_wrapped_text(gui_width / 2, body_y + 200, paragraph_2, body_text_width, line_height);
scr_draw_wrapped_text(gui_width / 2, body_y + 350, paragraph_3, body_text_width, line_height);
scr_draw_wrapped_text(gui_width / 2, body_y + 500, paragraph_4, body_text_width, line_height);
scr_draw_wrapped_text(gui_width / 2, body_y + 600, paragraph_5, body_text_width, line_height);

// Draw the "Press Enter" message centered at the bottom
draw_set_font(fnt_small_body);
draw_set_color(c_maroon);
draw_text(gui_width / 2, gui_height - 100, "Press 'Enter' to Continue");