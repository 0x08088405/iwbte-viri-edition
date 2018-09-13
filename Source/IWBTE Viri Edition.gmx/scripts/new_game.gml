/// new_game()
// Starts fresh savefile at the first room

create_save(); // Reset global.saveData
if(instance_exists(player)) {
    with(player) {
        instance_destroy();
    }
}
room_goto(global.startRoom);
global.death = 0; global.time = 0; update_title();
show_debug_message("No save present to load, starting new game...");
