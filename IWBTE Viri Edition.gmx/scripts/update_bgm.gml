/// update_bgm(soundid, loop)
// Updates background music. Only restarts if the song changes.
// Pass "noone" as music to stop current track.

if(argument0) {
    var vol = audio_sound_get_gain(argument0) * global.musicVolume * global.masterVolume;
    var inst = audio_play_sound(argument0, 0, argument1);
    audio_stop_sound(global.instanceBGM);
    audio_sound_gain(inst, vol, 0);
    global.currentBGM = argument0;
    global.instanceBGM = inst;
} else {
    audio_stop_sound(global.instanceBGM);
    global.currentBGM = noone;
}
