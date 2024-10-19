// Evelyn Hosana - October 16th 2024 - ITCS 5230

// draw "Game Over" text at top
draw_set_color(c_maroon);
draw_set_font(fnt_title);
draw_set_halign(fa_center); // align text center
draw_set_alpha(1);
draw_text(room_width / 2, 50, "Game Over");

function draw_red_selection_box(x1, y1, x2, y2) {
    draw_set_color(c_red);
    draw_rectangle(x1, y1, x2, y2, false);
}

var menu_spacing = 50; // spacing between menu options
var menu_height = menu_spacing * menu_count; // total height of menu
var start_y = (room_height / 2) - (menu_height / 2); // start drawing from vertical center

// draw menu options
for (var i = 0; i < menu_count; i++) {
	draw_set_font(fnt_body);
    if (i == menu_choice) { draw_set_color(c_white); } // highlight selected option
    else { draw_set_color(c_maroon); } // normal color for unselected options
    // draw menu options at center
	draw_text(room_width / 2, start_y + i * menu_spacing, menu_options[i]);
}

draw_set_font(-1); // reset font
draw_set_color(c_white); // reset color