fadeOut = false
notifAlpha = 1;
alarm[1] = room_speed * 15;

ds_notifs = -1;

font = f_main
draw_set_halign(fa_left)
draw_set_valign(fa_left)
draw_set_font(font);
fontHeight = string_height("W");

guiHeight = display_get_gui_height();
