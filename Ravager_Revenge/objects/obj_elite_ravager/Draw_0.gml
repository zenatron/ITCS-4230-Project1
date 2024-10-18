// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// apply scaling and shaking to enemy sprite
var shake_x = random_range(-shaking_effect, shaking_effect);
var shake_y = random_range(-shaking_effect, shaking_effect);

// draw scaled and shaken sprite
draw_sprite_ext(
    sprite_index,          // sprite to draw
    image_index,           // frame of sprite
    x + shake_x,           // x position with shaking
    y + shake_y,           // y position with shaking
    image_xscale * sprite_size,  // horizontal scaling and flipping
    sprite_size,           // vertical scaling
    0,                     // rotation
    c_white,               // color blending
    1                      // alpha
);