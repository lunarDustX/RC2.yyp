/// @description draw event
draw_rectangle(0, 200, room_width, 500, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, 350, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

