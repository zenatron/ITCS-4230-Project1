// Evelyn Hosana - September 23rd 2024 - ITCS 5230

var max_options = 4; // total number of options

// move selection up/down only if no submenu is active
if (!show_how_to_play and !show_story and !show_credits) {
    if (keyboard_check_pressed(vk_up)) {
        selected_option -= 1;
        if (selected_option < 0) selected_option = max_options;
    }
    if (keyboard_check_pressed(vk_down)) {
        selected_option += 1;
        if (selected_option > max_options) selected_option = 0;
    }

    // confirm selection with 'Enter' key, if not locked
    if (!menu_locked and keyboard_check_pressed(vk_enter)) {
        menu_locked = true;  // lock menu after pressing enter

        switch (selected_option) {
            case 0: // Start Game
                room_goto_next();
                break;
            case 1: // How To Play
                show_how_to_play = true;
                break;
            case 2: // Story
                show_story = true;
                break;
            case 3: // Credits
                show_credits = true;
                break;
            case 4: // Exit
                game_end();
                break;
        }
    }
}

// if in a sub-menu, handle "Back" option
if (show_how_to_play or show_story or show_credits) {
    // lock input while showing a sub-menu
    if (!menu_locked and keyboard_check_pressed(vk_enter)) {
        // reset sub-menu flags to false and return to the main menu
        show_how_to_play = false;
        show_story = false;
        show_credits = false;
        menu_locked = true;  // lock menu after pressing enter
    }
}

// unlock menu once 'Enter' key is released, allowing for another press
if (keyboard_check_released(vk_enter)) {
    menu_locked = false;
}