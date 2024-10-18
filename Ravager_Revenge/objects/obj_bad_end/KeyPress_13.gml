// Evelyn Hosana - October 16th 2024 - ITCS 5230

switch (menu_choice) {
    case 0: // restart game
		scr_reset_artifacts();
        room_goto(rm_level);
        break;
    case 1: // quit Game
        game_end();
        break;
}