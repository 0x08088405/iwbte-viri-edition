/// die()
// Kills the player

with(player) {
    global.death++;
    update_title();
    if(global.saveData[? "started"]) save(false);
    play_sound(seDeath);
    instance_destroy();
    instance_create(x, y, bloodEmitter);
    
    // This is where you'd create a 'Game Over' object
    // It should destroy in world->Step->k_restart if-block
}
