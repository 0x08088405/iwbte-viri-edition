/// flip()
// Flips player gravity.

global.pGravity = -global.pGravity;

with (player) {
    if (global.giveDjumpOnFlip) djump = true;
    vspeed = 0;
    jump1 = abs(jump1) * global.pGravity;
    jump2 = abs(jump2) * global.pGravity;
    gravity = abs(gravity) * global.pGravity;
    set_mask();
    
    // Prevent getting stuck on flip, move out of blocks
    if (global.pGravity) move_outside_solid(270, 16);
    else move_outside_solid(90, 16);
}

