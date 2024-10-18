// Evelyn Hosana - September 26th 2024 - ITCS 5230

// handle bouncing off walls
var move_direction = point_direction(x, y, target_x, target_y);

// reverse direction based on wall collision
if (place_meeting(x + lengthdir_x(move_speed, move_direction), y, obj_wall)) {
    target_x = x + irandom_range(-360, 360);  // change x target on horizontal collision
}
if (place_meeting(x, y + lengthdir_y(move_speed, move_direction), obj_wall)) {
    target_y = y + irandom_range(-360, 360);  // change y target on vertical collision
}