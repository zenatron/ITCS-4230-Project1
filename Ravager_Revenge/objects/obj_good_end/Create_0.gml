// Philip Vishnevsky

// variables for controlling menu navigation
menu_choice = 0; // 0 = Restart Game, 1 = Quit Game
menu_options = ["Restart Game", "Quit Game"];
menu_count = array_length(menu_options); // total number of menu options
audio_play_sound(snd_win_music,1,false); // Play the win condition music.