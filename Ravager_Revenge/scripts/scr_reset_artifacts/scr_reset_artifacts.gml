// Evelyn Hosana - October 18th 2024 - ITCS 5230

// reset varaible definitions if game restarted
function scr_reset_artifacts(){
	global.artifact_count = 0;
	global.artifacts_collected = [];
	global.artifact_move_speed = 0.05;
	global.moving_artifacts = false;
	global.artifact_combined = false;
	global.artifacts_active = false;

	// reset artifact starting positions
	global.artifact_start_x = [1592, 1656, 1672, 1736];
	global.artifact_start_y = [552, 552, 552, 552];
}