// Evan Stark - September 20th 2024 - ITCS 4230 001

// Return to default settings
draw_set_font(-1);
draw_set_color(c_white);

// Printing out the variables on the screen to see whats going on.
draw_text(25, 25, "Move speed : " + string(obj_player.move_speed));
draw_text(25, 50, "x speed : " + string(obj_player.x_speed));
draw_text(25, 75, "y speed : " + string(obj_player.y_speed));
draw_text(25, 100, "x Position : " + string(obj_player.x));
draw_text(25, 125, "y Position : " + string(obj_player.y));
draw_text(25, 150, "player health : " + string(obj_player.player_health));
draw_text(25, 175, "damage taken? : " + string(obj_player.damage_taken));
draw_text(25, 200, "CHEAT-IMMORTALITY? : " + string(global.immortality));