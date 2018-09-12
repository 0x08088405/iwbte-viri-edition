/// shoot()
// what do you think

if(instance_number(bullet) < global.bulletCap) {
    with(instance_create(x, y, bullet)) { // Create bullet
        hspeed = other.dir * 16; // Set speed (16px/f)
        alarm[0] = 40; // Destroy in 40 frames
        play_sound(seShoot); // Play sound
    }
}
