// Evelyn Hosana - October 2nd 2024 - ITCS 5230

// get current camera position
var cam_x = camera_get_view_x(camera);
var cam_y = camera_get_view_y(camera);

switch (camera_state) {
    case "wait_at_player":
        // wait at player for 1 second
        var player_x = obj_player.x - RES_W / 2;
        var player_y = obj_player.y - RES_H / 2;
        cam_x = player_x;
        cam_y = player_y;

        // after 1 second, move camera to enemy
        if (alarm[0] <= 0) {
            camera_state = "zoom_to_enemy";
        }
        break;

    case "zoom_to_enemy":
        // target enemy position (middle center of room)
	    var target_x = 960 - RES_W / 2;
	    var target_y = 540 - RES_H / 2;

	    // smoothly move camera to enemy
	    cam_x = lerp(cam_x, target_x, CAM_SMOOTH);
	    cam_y = lerp(cam_y, target_y, CAM_SMOOTH);

	    // apply slight zoom-out effect to make sprite scaling more apparent
	    camera_set_view_size(camera, RES_W * 1.1, RES_H * 1.1);

	    // check if camera has reached enemy
	    if (abs(cam_x - target_x) < 2 and abs(cam_y - target_y) < 2) {
	        camera_state = "enemy_animation";
	        animation_timer = room_speed * 10;  // 10 second timer for enemy "animation"
	    }
	    break;

    case "enemy_animation":
        if (animation_timer > 0) {
            animation_timer -= 1;  // countdown timer for animation
        } else {
            camera_state = "pan_back_to_player";
        }
        break;

    case "pan_back_to_player":
        // target player position
        var return_x = obj_player.x - RES_W / 2;
        var return_y = obj_player.y - RES_H / 2;

        // smoothly move camera back to player
        cam_x = lerp(cam_x, return_x, CAM_SMOOTH);
        cam_y = lerp(cam_y, return_y, CAM_SMOOTH);

        // check if camera has returned to player
        if (abs(cam_x - return_x) < 2 and abs(cam_y - return_y) < 2) {
            camera_state = "wait_before_reset";
            alarm[1] = room_speed * 1;  // wait 1 second before resizing camera
        }
        break;

    case "wait_before_reset":
        if (alarm[1] <= 0) {
            camera_state = "switch_to_full_resolution";
        }
        break;

    case "switch_to_full_resolution":
        // resize camera and view to full resolution
	    camera_set_view_size(camera, room_width, room_height);
	    view_visible[0] = false;  // sisable zoomed view
	    view_visible[1] = true;   // enable full-screen view
	    obj_player.can_move = true; // re-enable player movement
		obj_player.can_shoot = true; // re-enable player shooting
	    camera_state = "normal_view"; // final state

	    // reset zoom for next transition
	    camera_set_view_size(camera, RES_W, RES_H);  // reset to normal zoom size after transition
	    break;
}

// apply camera position
camera_set_view_pos(camera, cam_x, cam_y);