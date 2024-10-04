// Evelyn Hosana - October 3rd 2024 - ITCS 5230

// get player current health percentage
var health_percentage = obj_player.player_health / obj_player.max_health;

// draw empty health bar and border (frame 0) on top
draw_sprite(spr_healthbar, 0, 20, display_get_height() - 20);

// draw filled health bar (frame 1) so it's above border
draw_sprite_part(spr_healthbar, 1, 0, 0, sprite_width * health_percentage, sprite_height, 20, display_get_height() - 52);