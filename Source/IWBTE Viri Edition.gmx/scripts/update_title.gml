var d, h, m, s, t, c;

t = global.time; // Current time elapsed (per-save)
c = global.windowCap; // Caption Template

h  = string(floor(t / 3600)); t %= 3600; // Seconds in an hour
m  = string(floor(t /  600)); t %=  600; // Seconds in 10 minutes (First Digit)
m += string(floor(t /   60)); t %=   60; // Seconds in a minute (Second Digit)
s  = string(floor(t /   10)); t %=   10; // 10 Seconds (First Digit)
s += string(floor(t       )); // Seconds (Second Digit)

c = string_replace(c, "%D", string(global.death)); // Match %D with Deaths
c = string_replace(c, "%H", string           (h)); // Match %H with Hours
c = string_replace(c, "%M", string           (m)); // Match %M with Minutes
c = string_replace(c, "%S", string           (s)); // Match %S with Seconds

window_set_caption(c); // Set formatted string as title
