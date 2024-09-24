// Evelyn Hosana - September 23rd 2024 - ITCS 5230

/* draws a black, semi-transparent background box
x1 is left position, y1 is top position, x2 is right position and y2 is bottom position */
function draw_black_box(x1, y1, x2, y2) {
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(x1, y1, x2, y2, false);
    draw_set_alpha(1); // Reset alpha
}

/* draws a red selection box
x1 is left position, y1 is top position, x2 is right position and y2 is bottom position */
function draw_red_selection_box(x1, y1, x2, y2) {
    draw_set_color(c_red);
    draw_rectangle(x1, y1, x2, y2, false);
}

/* draws the "back" button with a red box and white text
x1 is left position of red box, y1 is top position of red box,
x2 is right position of red box, y2 is bottom position of red box
text_x is x position of text and text_y is y position of text */
function draw_back_button(x1, y1, x2, y2, text_x, text_y) {
    // draw red selection box
    draw_red_selection_box(x1, y1, x2, y2);
    
    // set font size back to normal for the "back" button
    draw_set_font(fnt_body);
    draw_set_color(c_white);
    draw_text(text_x, text_y, "Back");
}

// if no sub-menu is being shown, draw main menu
if (!show_how_to_play and !show_story and !show_credits) {
    // set background color
    draw_set_color(c_white);
    draw_set_alpha(1);

    // set font for title
    draw_set_font(fnt_title);

    // calculate x and y for title
    var title_text = "Ravager Revenge";
    var title_width = string_width(title_text);
    var title_x = (room_width - title_width) / 2;
    var title_y = 50;

    // draw title
    draw_text(title_x, title_y, title_text);

    // draw menu border
    draw_black_box(500, 400, 1420, 860);

    // set font for body text
    draw_set_font(fnt_body);

    // list of menu options
    var options = ["Start Game", "How To Play", "Story", "Credits", "Exit"];
    var option_y_start = 450;
    var option_spacing = 80;

    // draw each option with selection "highlight"
    for (var i = 0; i < array_length_1d(options); i++) {
        var option_y = option_y_start + i * option_spacing;

        // check if this is the selected option
        if (i == selected_option) {
            // draw red selection box
            draw_red_selection_box(510, option_y - 20, 1410, option_y + 60);
        }
		
        // draw the option text in white
        draw_set_color(c_white);
        draw_text(520, option_y, options[i]);
    }
}

// check if "How To Play" is selected
if (show_how_to_play) {
    // draw "How To Play" screen
    draw_black_box(500, 400, 1420, 860);
    
    // use reduced body font size for text
    draw_set_font(fnt_small_body);
    draw_set_color(c_white);

    var y_pos = 450;
    var line_spacing = 50;

    // draw each line manually
    draw_text(520, y_pos, "Objective: Kill Ravagers, collect the Artifact,");
    y_pos += line_spacing;
	
	draw_text(520, y_pos, "and save your brother Coda.");
    y_pos += line_spacing;

    draw_text(520, y_pos, "Controls:");
    y_pos += line_spacing;

    draw_text(520, y_pos, "- Move: WASD");
    y_pos += line_spacing;

    draw_text(520, y_pos, "- Shoot: Left Click");
    y_pos += line_spacing;

    draw_text(520, y_pos, "- Interact: R");

    // draw red box for "Back" button
    draw_red_selection_box(530, 745, 1390, 795);

    // draw "Back" button
    draw_back_button(530, 745, 1390, 795, 550, 750);
}

// THE FOLLOWING IS SET UP SIMILARLY AS ABOVE IMPLEMENTATION

// Check if "Story" is selected
if (show_story) {
    draw_black_box(500, 400, 1420, 860);

    draw_set_font(fnt_small_body);
    draw_set_color(c_white);

    y_pos = 450;
    line_spacing = 60;

    draw_text(520, y_pos, "Our story starts with Roan, an orphan taking care");
    y_pos += line_spacing;
	
	draw_text(520, y_pos, "of their younger brother, Coda. The Ravagers have");
    y_pos += line_spacing;

    draw_text(520, y_pos, "captured Coda, and Roan must save him by");
    y_pos += line_spacing;

    draw_text(520, y_pos, "collecting the Artifact pieces and placing it at the");
	y_pos += line_spacing;
	
	draw_text(520, y_pos, "highest tower in the city to drive away the monsters.");
	
    draw_red_selection_box(530, 745, 1390, 795);

    draw_back_button(530, 745, 1390, 795, 550, 750);
}

// Check if "Credits" is selected
if (show_credits) {
    draw_black_box(500, 400, 1420, 860);

    draw_set_font(fnt_small_body);
    draw_set_color(c_white);

    y_pos = 450;
    line_spacing = 60;

    draw_text(520, y_pos, "Game made by ByteBattalion.");
    y_pos += line_spacing;

    draw_text(520, y_pos, "Producer: Philip Vishnevsky");
    y_pos += line_spacing;

    draw_text(520, y_pos, "Developer: Evelyn Hosana");
    y_pos += line_spacing;

    draw_text(520, y_pos, "Programmer: Evan Stark");
    y_pos += line_spacing;

    draw_text(520, y_pos, "Artist: Rhema Ehizele");

    draw_red_selection_box(530, 745, 1390, 795);

    draw_back_button(530, 745, 1390, 795, 550, 750);
}