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
    if (global.pGravity) {
        while (instance_place(x, y, block) != noone) y += 1;
    } else {
        while (instance_place(x, y, block) != noone) y -= 1;
    }
}

