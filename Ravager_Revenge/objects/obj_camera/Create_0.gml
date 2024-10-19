// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// display resolution
#macro RES_W 1920
#macro RES_H 1080
// set zoom
#macro ZOOM_LEVEL 4
// smoothen camera panning
#macro CAM_SMOOTH 0.1

// ensure player exists
if (instance_exists(obj_player)) {
	var player = instance_find(obj_player, 0);
	player.can_move = false; // disable player movement initially
	player.can_shoot = false; // disable shooting ability initially
}

// ensure player exists
if (instance_exists(obj_player)) {
    var player = instance_find(obj_player, 0);
    player.can_move = false;  // Disable player movement initially
    player.can_shoot = false;  // Disable shooting ability initially
}

// enable views
view_enabled = true;
view_visible[0] = true;

// create camera (initially zoomed in to player at 1/4 resolution)
camera = camera_create_view(0, 0, RES_W / ZOOM_LEVEL, RES_H / ZOOM_LEVEL);
view_set_camera(0, camera);

// resize window & application surface (maintain full resolution window)
window_set_size(RES_W, RES_H);
surface_resize(application_surface, RES_W, RES_H);

// initialize variables to access display width and height
display_width = display_get_width();
display_height = display_get_height();

window_set_position(display_width / 2 - RES_W / 2, display_height / 2 - RES_H / 2);

// initial camera state
camera_state = "wait_at_player";
alarm[0] = room_speed * 1;  // 1 second delay before transitioning to zooming