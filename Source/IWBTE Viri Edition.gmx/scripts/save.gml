/// save(saveall)
// Pass argument0 as false to only save death/time

// Things here will only be saved when you hit a savepoint
// Or whenever argument0 is true, you know.
if(argument0) {
    with(player) {
        global.saveData[? "x"] = x;
        global.saveData[? "y"] = y;
        global.saveData[? "dir"] = dir;
        global.saveData[? "room"] = room;
        global.saveData[? "grav"] = global.pGravity;
        global.saveData[? "djump"] = djump;
    }
}

// Saved every restart
global.saveData[? "time"] = global.time;
global.saveData[? "death"] = global.death;
global.saveData[? "started"] = true;

/// http://i.imgur.com/dt4wcAb.png
// Don't actually use ds_map_secure_save, it's pathetic
// It's a placeholder for whatever you'll use
// Or maybe you don't care?
ds_map_secure_save(global.saveData, "save" + string(global.saveIndex));
