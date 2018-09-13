/// reset_triggers()
// resets all triggers (amount defined by globals.triggersMax -> init())

for(var i = 0; i < global.triggersMax; i++) {
    global.triggers[i] = false;
}
