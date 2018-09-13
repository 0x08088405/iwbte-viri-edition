/// [Keybinds]
global.k_left = vk_left; // Movement (Left)
global.k_right = vk_right; // Movement (Right)
global.k_jump = vk_shift; // Player Jump
global.k_shoot = ord("Z"); // Player Shoot
global.k_restart = ord("R"); // Restart (after dying)
global.k_pause = ord("P"); // Pause [UNIMPLEMENTED]
global.k_save = ord("S"); // Save button if global.sSaves is on
global.k_suicide = ord("Q"); // Suicide button (req. global.canSuicide)
global.k_exit = vk_escape; // Exit game
global.k_reset = vk_f2; // Soft reset game
global.k_fullscreen = vk_f4; // Toggle fullscreen

// [Keybinds/Debug]
global.k_debug_god = vk_home; // Godmode Toggle
global.k_debug_save = vk_end; // Save at current position
global.k_debug_flip = ord("G"); // Flip gravity
global.k_debug_fps = ord("F"); // Set FPS (displays prompt)
global.k_debug_valign = ord("V"); // Set V-Align (displays prompt)
global.k_debug_hitbox = ord("H"); // Toggle hitbox display
global.k_debug_drag = vk_tab; // Hold to snap player to mouse x-y
global.k_debug_dragmouse = mb_middle; // Above, but instead it's a mouse button
global.k_debug_decreaserm = vk_pagedown; // Go back a room (if it exists & not rInit)
global.k_debug_advancerm = vk_pageup; // Go forwards a room (if it exists)

/// [Player]
global.canPause = true; // Completely unimplemented (so far!)
global.saveHop = true; // Whether you get a djump on load (otherwise it's in your save)
global.adTrick = true; // Determines if you can use the A<>D trick
global.canSuicide = false; // Determines if you can kill yourself with k_suicide
global.drawPlayer = true; // Why would you disable this
global.drawHitbox = false; // Turn this on to reveal your hitbox (also k_debug_hitbox debugkey)
global.giveDjumpOnFlip = true; // what do you think
global.infiniteJump = false; // YOU CAN JUMP MANY TIMES!!
global.lrAnywhere = false; // Check for left/right keys when tabbed out because old shitty gm8 engines
global.pGravity = 1; // Gravity multiplier. -1 for upside down gravity, 1 for normal gravity
global.bulletCap = 5; // Maximum bullets in a room at any given time


/// [Internal]
global.autosave = false; // Makes the player save(true) on next creation
global.death = 0; // Deaths counter
global.difficulty = 0; // Not really implemented - only used in saves
global.engineFPS = 50; // Set on every room start
global.paused = false; // Determines if the game is paused
global.time = 0; // Time counter (seconds)
global.timeTicking = true; // Determines if time should be incrementing
global.timeWhileDead = false; // Determines if time should advance while you're dead
global.triggersMax = 100; // The amount of trigger groups
reset_triggers(); // Resetting triggers
// Formatted windowtitle - %T - time, %D - deaths, %H - hours, %M - mins, %s - secs
global.windowCap = "IWBTE: Viri Edition - Deaths: %D | Time: %H:%M:%S"; // Parsed in update_title automagically


/// [Savefile]
create_save(); // Initializes savefile into global.saveData
global.saveIndex = 1; // Current Savefile (save #1)


/// [World]
update_title(); // Set window title based on global.windowCap
global.sSaves = false; // S key for saving instead of shooting/touchshooting
global.startRoom = rDemo; // The first room when a new game is started
texture_set_interpolation(false); // Make sure sprite interpolation is off


/// [Mixer]
global.masterVolume = 1.0; // Master Volume (0.0 ~ 1.0)
global.musicVolume = 1.0; // Music Volume (0.0 ~ 1.0)
global.soundVolume = 1.0; // SFX Volume (0.0 ~ 1.0)
global.currentBGM = noone; // Current BGM (set by update_bgm)
global.instanceBGM = noone; // Instance of the current BGM (set by update_bgm)


/// [Debug]
global.debug = true; // Enables cheats & debug hotkeys
global.debugGui = true; // Enables the drawing of the debug GUI
global.god = false; // Invincibility (can also be toggled via debug hotkey k_debug_god)

