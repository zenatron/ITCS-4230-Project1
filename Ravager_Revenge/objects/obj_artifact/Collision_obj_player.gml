// Evelyn Hosana - October 16th 2024 - ITCS 5230

// increment artifact count
global.artifact_count += 1;

// add artifact ID to collected array
global.artifacts_collected[array_length(global.artifacts_collected)] = image_index;

// Evan Stark - October 13th 2024 - ITCS 4230 001

// Picking up the artifact and adding it to the total; destroy the artifact piece.
instance_destroy();