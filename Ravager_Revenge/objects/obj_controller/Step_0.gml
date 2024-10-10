// Evelyn Hosana - October 7th 2024 - ITCS 5230

// reduce global burn cooldown over time
if (global.burn_cooldown > -1) {
    global.burn_cooldown -= 1;
}

// ensure only one healthbar object is spawned
if (!instance_exists(obj_healthbar)) {
    instance_create_layer(0, 0, "GUI_Instances", obj_healthbar);
}