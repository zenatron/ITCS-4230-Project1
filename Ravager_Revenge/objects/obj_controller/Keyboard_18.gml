/// @description cheat codes with alt
// Philip Vishnevsky 10/14/2024
if (keyboard_check_pressed(ord("R"))) room_restart()
if (keyboard_check_pressed(ord("G"))) game_restart()
if (keyboard_check_pressed(ord("L"))) obj_player.player_health += 50
if (keyboard_check_pressed(ord("N"))) room_goto_next()
if (keyboard_check_pressed(ord("O")) and !global.immortality) {
	global.immortality = true
	show_debug_message("!!!immortality enabled!!!")
} else if (keyboard_check_pressed(ord("O"))) {
	global.immortality = false
	show_debug_message("!!!immortality disabled!!!")
}