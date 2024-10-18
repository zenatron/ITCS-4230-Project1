// Philip Vishnevsky

// draw "Success!" text at top
draw_set_color(c_maroon);
draw_set_font(fnt_title);
draw_set_halign(fa_center); // align text center
draw_set_alpha(1);
draw_text(room_width / 2, 50, "Success!");

var menu_spacing = 50; // spacing between menu options
var menu_height = menu_spacing * menu_count; // total height of menu
var start_y = (room_height / 2) - (menu_height / 2); // start drawing from vertical center

// draw menu options
for (var i = 0; i < menu_count; i++) {
	draw_set_font(fnt_body);
    if (i == menu_choice) { draw_set_color(c_maroon); } // highlight selected option
    else { draw_set_color(c_white); } // normal color for unselected options
    // draw menu options at center
    draw_text(room_width / 2, start_y + i * menu_spacing, menu_options[i]);
}

draw_set_font(-1); // reset font
draw_set_color(c_white); // reset color