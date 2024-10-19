// Philip Vishnevsky

// moving up/down menu
if (keyboard_check_pressed(ord("W"))) {
    menu_choice -= 1;
    if (menu_choice < 0) {
        menu_choice = menu_count - 1; // loop back to bottom option
    }
}

if (keyboard_check_pressed(ord("S"))) {
    menu_choice += 1;
    if (menu_choice >= menu_count) {
        menu_choice = 0; // loop back to top option
    }
}