#define jump
if(place_meeting(x, y + global.pGravity, block) || onPlatform || place_meeting(x, y + global.pGravity, water)) {
    vspeed = -jump1; // First jump
    djump = true; // Make sure you can djump afterwards
    play_sound(seJump); // Jump sound
} else if(djump || place_meeting(x, y + global.pGravity, water2) || global.infiniteJump) {
    djump = place_meeting(x, y + global.pGravity, water3);
    vspeed = -jump2; // Doublejump
    sprite_index = sJump; // Jumping sprite
    play_sound(seJump2); // Djump sound
}

#define jumpEnd
if(vspeed * global.pGravity < 0) vspeed *= 0.45; // Jump released