// Evelyn Hosana - October 14th 2024 - ITCS 5230

/// @function draw_text_wrapped(x, y, text, width)
/// @param x, y - position to draw text
/// @param text - text to draw
/// @param width - maximum width before wrapping text
function scr_draw_wrapped_text(x, y, text, width) {
    var line_height = 20;  // line height
    var words = string_split(text, " ");  // split text into words
    var current_line = "";
    var current_y = y;
    
    for (var i = 0; i < array_length(words); i++) {
        var next_line = current_line + words[i] + " ";
        
        // check if line fits within specified width
        if (string_width(next_line) > width) {
            draw_text(x, current_y, current_line); // draw current line
            current_line = words[i] + " "; // start new line
            current_y += line_height; // next line
        } else {
            current_line = next_line;
        }
    }
    
    // draw remaining text
    if (current_line != "") {
        draw_text(x, current_y, current_line);
    }
}