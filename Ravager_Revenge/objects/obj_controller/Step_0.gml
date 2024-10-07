// Evelyn Hosana - October 7th 2024 - ITCS 5230

// reduce global burn cooldown over time
if (global.burn_cooldown > -1) {
    global.burn_cooldown -= 1;
}