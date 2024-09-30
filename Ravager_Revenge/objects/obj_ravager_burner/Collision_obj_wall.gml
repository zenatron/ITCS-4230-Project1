// Evelyn Hosana - September 26th 2024 - ITCS 5230

// handle bouncing off walls
if (place_meeting(x + lengthdir_x(speed, point_direction(x, y, target_x, target_y)), y, obj_wall)) {
    // Reverse x direction when hitting left or right wall
    target_x = -target_x;
}

if (place_meeting(x, y + lengthdir_y(speed, point_direction(x, y, target_x, target_y)), obj_wall)) {
    // Reverse y direction when hitting top or bottom wall
    target_y = -target_y;
}