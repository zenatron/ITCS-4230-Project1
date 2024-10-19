// Evelyn Hosana - October 16th 2024 - ITCS 5230

// variables for controlling menu navigation
menu_choice = 0; // 0 = Restart Game, 1 = Quit Game
menu_options = ["Restart Game", "Quit Game"];
menu_count = array_length(menu_options); // total number of menu options
// Play losing music.
audio_play_sound(snd_lose_music, 1, false);