var d, h, m, s, t, c;

t = global.time;
c = global.windowCap;

h  = string(floor(t / 3600)); t %= 3600;
m  = string(floor(t /  600)); t %=  600;
m += string(floor(t /   60)); t %=   60;
s  = string(floor(t /   10)); t %=   10;
s += string(floor(t       ));

c = string_replace(c, "%D", string(global.death));
c = string_replace(c, "%H", string           (h));
c = string_replace(c, "%M", string           (m));
c = string_replace(c, "%S", string           (s));

window_set_caption(c);
