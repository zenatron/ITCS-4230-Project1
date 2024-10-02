// Evelyn Hosana - October 1st 2024 - ITCS 5230

// chase player logic
if instance_exists(obj_player) {
    var player_direction = point_direction(x, y, obj_player.x, obj_player.y);
    motion_set(player_direction, 2);
}