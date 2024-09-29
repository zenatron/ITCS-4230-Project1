// Evelyn Hosana - September 26th 2024 - ITCS 5230

// rotate bullet
image_angle += rotation_speed;

// handle frame switching every 2 seconds
frame_timer += 1;
if (frame_timer >= frame_duration) {
    frame_timer = 0; // reset timer

    // switch to next frame
    if (image_index == 0) {
        image_index = 1;
    } else {
        image_index = 0;
    }
}