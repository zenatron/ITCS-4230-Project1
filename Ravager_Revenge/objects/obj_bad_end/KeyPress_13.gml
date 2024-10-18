// Evelyn Hosana - October 16th 2024 - ITCS 5230

switch (menu_choice) {
    case 0: // restart game
        room_goto(rm_level);
        break;
    case 1: // quit Game
        game_end();
        break;
}