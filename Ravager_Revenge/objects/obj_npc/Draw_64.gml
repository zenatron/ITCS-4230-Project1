// Evelyn Hosana - October 14th 2024 - ITCS 5230

if (player_in_range and npc_state = NPCState.NO_DIALOG) {
    // draw 'Press E' notification
    var gui_x = display_get_gui_width() / 2;  // center horizontally
    var gui_y = display_get_gui_height() - 50;  // position near bottom of screen
    
    draw_set_color(c_white);  // set text color
    draw_text(gui_x, gui_y, "Press E to Interact");
}

// check state and draw appropriate text
if (npc_state == NPCState.MISSION_ASSIGNED) { scr_draw_dialog_box(npc_dialog); } 
else if (npc_state == NPCState.MISSION_INCOMPLETE) { scr_draw_dialog_box(npc_incomplete_dialog); } 
else if (npc_state == NPCState.MISSION_COMPLETE) { scr_draw_dialog_box(npc_complete_dialog); }

// clear dialog on Enter
if (keyboard_check_pressed(vk_enter)) { npc_state = NPCState.NO_DIALOG; }