/// create_save()
// Fills up savefile with default values
// Value "started" determines if you actually saved in it once
// If the game is not "started" it will start from the first room instead

global.saveData = ds_map_create();
ds_map_add(global.saveData, "x", noone);
ds_map_add(global.saveData, "y", noone);
ds_map_add(global.saveData, "dir", noone);
ds_map_add(global.saveData, "time", 0);
ds_map_add(global.saveData, "death", 0);
ds_map_add(global.saveData, "room", 0);
ds_map_add(global.saveData, "grav", 1);
ds_map_add(global.saveData, "started", false);
ds_map_add(global.saveData, "djump", true);

// If you for whatever reason start the game in the air, set djump to false here
// (if you want to make the player not be able to djump that is)

