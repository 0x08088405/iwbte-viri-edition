/// play_sound(soundid)
// Play soundfile. Volume affected by globals & editor volume. Returns instance.

var vol = audio_sound_get_gain(argument0) * global.soundVolume * global.masterVolume;
var inst = audio_play_sound(argument0, 0, false);
audio_sound_gain(inst, vol, 0);
return inst;
