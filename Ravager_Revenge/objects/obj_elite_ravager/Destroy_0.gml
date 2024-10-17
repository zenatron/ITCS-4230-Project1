// if boss destroyed, end final battle music and play happy ending music
audio_stop_sound(snd_boss_fight);

var artifact_spawn_radius = 0;
var spawn_pos = scr_find_valid_pos(artifact_spawn_radius);

// check if valid position was found
if (spawn_pos != noone) {
	var spawn_x = spawn_pos[0];
	var spawn_y = spawn_pos[1];

	// create artifact at valid position
	var artifact = instance_create_layer(spawn_x, spawn_y, "Instances", obj_artifact);

	// set artifact image_index to chosen frame
	artifact.image_index = 0;
}