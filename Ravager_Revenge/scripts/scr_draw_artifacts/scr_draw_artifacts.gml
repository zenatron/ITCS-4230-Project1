// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_artifacts(){
	if (!audio_is_playing(snd_artifact_pieces)) { audio_play_sound(snd_artifact_pieces, 1, false); }
	if (array_length(global.artifacts_collected) > 0) {
	    // loop through collected artifacts and draw them
	    for (var i = 0; i < array_length(global.artifacts_collected); i++) {
	        var artifact_frame = global.artifacts_collected[i];
	        // draw each artifact sprite using its frame from global.artifacts_collected
	        draw_sprite_ext(spr_artifact, artifact_frame, global.artifact_start_x[i], global.artifact_start_y[i], 0.5, 0.5, 0, c_white, 1);
	    }
	}
}