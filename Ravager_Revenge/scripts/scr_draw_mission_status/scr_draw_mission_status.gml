// Evelyn Hosana - October 14th 2024 - ITCS 5230

// drawing player mission status
function scr_draw_mission_status(){
    var status_x = display_get_gui_width() - 200;
    var status_y = display_get_gui_height() / 2;
    
    // count number of active missions to adjust box height
    var mission_count = 0;
    if (global.mission_assigned_npc1) mission_count++;
    if (global.mission_assigned_npc2) mission_count++;
    if (global.mission_assigned_npc3) mission_count++;
    
    // if no missions active, don't draw anything
    if (mission_count == 0) return;
    
    // adjust box height based on mission count
    var box_height = 50 * mission_count;
    
    // draw semi-transparent background for mission status
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(status_x - 20, status_y - 20, status_x + 280, status_y + box_height + 20, false);
    draw_set_alpha(1); // reset transparency

    // draw mission status text
    draw_set_color(c_white); // set text color

    // draw progress for each mission
    if (global.mission_assigned_npc1) {
        var mission_text = "Mission: Defeat " + string(global.mission_progress_npc1) + "/10\nRavager Crawlers";
        scr_draw_wrapped_text(status_x, status_y, mission_text, 280);
        status_y += 50;  // padding for next mission
    }

    if (global.mission_assigned_npc2) {
        var mission_text = "Mission: Defeat " + string(global.mission_progress_npc2) + "/5\nRavager Spitters";
        scr_draw_wrapped_text(status_x, status_y, mission_text, 280);
        status_y += 50;
    }

    if (global.mission_assigned_npc3) {
        var mission_text = "Mission: Defeat " + string(global.mission_progress_npc3) + "/2\nRavager Burners";
        scr_draw_wrapped_text(status_x, status_y, mission_text, 280);
        status_y += 50;
    }
}