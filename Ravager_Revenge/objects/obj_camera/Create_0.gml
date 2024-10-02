// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// ensure player exists
if (instance_exists(obj_player)) {
	var player = instance_find(obj_player, 0);
	player.can_move = false; // disable player movement initially
}

// display resolution
#macro RES_W 480
#macro RES_H 270
#macro RES_SCALE 3

#macro CAM_SMOOTH 0.1

// enable views
view_enabled = true;
view_visible[0] = true;

// create camera
camera = camera_create_view(0, 0, RES_W, RES_H);
view_set_camera(0, camera);
	
// resize window & application surface
window_set_size(RES_W * RES_SCALE, RES_H * RES_SCALE);
surface_resize(application_surface, RES_W * RES_SCALE, RES_H * RES_SCALE);

// initialize variables to access display width and height
display_width = display_get_width();
display_height = display_get_height();

window_width = RES_W * RES_SCALE;
window_height = RES_H * RES_SCALE;

window_set_position(display_width/2 - window_width/2, display_height/2 - window_height/2);

// initial camera state
camera_state = "wait_at_player";
// activate alarm[0] after 1 second
alarm[0] = room_speed * 1;