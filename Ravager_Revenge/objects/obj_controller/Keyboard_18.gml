/// @description cheat codes with alt
// Philip Vishnevsky 10/14/2024
if (keyboard_check_pressed(ord("D")) and !global.debugEnabled) {
	global.debugEnabled = true;
	show_debug_message("!!!DEBUG MODE ENABLED!!!");
}

if (keyboard_check_pressed(ord("R"))) room_restart()
if (keyboard_check_pressed(ord("G"))) game_restart()
if (keyboard_check_pressed(ord("L"))) obj_player.player_health += 50
if (keyboard_check(ord("N"))) room_goto_next()
if (keyboard_check(ord("O")) and !global.immortality) {
	global.immortality = true
	show_debug_message("!!!immortality enabled!!!")
} else if (keyboard_check_pressed(ord("O"))) {
	global.immortality = false
	show_debug_message("!!!immortality disabled!!!")
}

// boss insta kill
if (keyboard_check_pressed(ord("K"))) if (instance_exists(obj_elite_ravager)) { instance_destroy(obj_elite_ravager); }
// spawners
if (keyboard_check_pressed(ord("T"))) if (instance_exists(obj_spawner)) { instance_destroy(obj_spawner); }