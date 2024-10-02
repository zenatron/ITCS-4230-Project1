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
    sprite_flip_xscale * sprite_size,  // horizontal scaling and flipping
    sprite_size,           // vertical scaling
    0,                     // rotation
    c_white,               // color blending
    1                      // alpha
);

// then draw health bar
draw_set_color(c_white);
draw_text(room_width/2 - 50, 50, "Elite Ravager");

// determine health bar color
if (health >= 666) {
    draw_set_color(c_green);
} else if (health >= 333) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_red); 
}

// draw health bar centered top
draw_rectangle(room_width/2 - 400, 30, room_width/2 + 400, 50, false);
draw_set_color(c_black);
draw_rectangle(room_width/2 - 400, 30, room_width/2 - 400 + ((health / 1000) * 800), 50, false);