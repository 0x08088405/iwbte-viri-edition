/// load(load_dt, load_from_file)
// Pass argument0 as true for full load
// Pass argument1 if you want to load the file instead... ?
// Only do that when you're FIRST loading the save!

if(argument1) {
    ds_map_clear(global.saveData);
    global.saveData = ds_map_secure_load("save" + string(global.saveIndex));
    if(global.saveData == -1) {
        new_game();
        return 0;
    }
}

if(instance_exists(blood)) with(blood) instance_destroy();
if(instance_exists(bloodEmitter)) with(bloodEmitter) instance_destroy();
if(instance_exists(player)) with(player) instance_destroy();

if(global.saveData[? "started"] || argument0) {
    // Load data
    var sx, sy, sr, sf, sd, st, sg, sdj;
    sx = global.saveData[? "x"];
    sy = global.saveData[? "y"];
    sr = global.saveData[? "room"];
    sf = global.saveData[? "dir"];
    sd = global.saveData[? "death"];
    st = global.saveData[? "time"];
    sg = global.saveData[? "grav"];
    sdj = global.saveData[? "djump"];
    
    // Loading death&time
    if(argument0) {
        global.death = sd;
        global.time = st;
        update_title();
    }
    
    if(room_exists(sr)) {
        // Load player
        with(instance_create(sx, sy, player)) {
            dir = sf;
            djump = sdj || global.saveHop;
            if((sg && !global.pGravity) || (!sg && global.pGravity)) {
                flip();
            }
        }
        room_goto(sr);
        
        // Logging
        show_debug_message("Loaded successfully @ " + room_get_name(sr)
        + " (" +  string(sx) + ", " + string(sy) + "), Deaths: " + string(sd)
        + ", Time (seconds): " + string(st));
    } else {
        // Nonexistent room in savefile, panic!
        show_message("Room in savefile doesn't exist!");
        new_game();
    }
} else {
    new_game();
}
