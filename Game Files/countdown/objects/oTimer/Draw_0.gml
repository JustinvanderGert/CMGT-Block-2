//draw	the timer
//base draw code

draw_set_font(Font1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw timer
draw_text(room_width / 2, 150, string(minutes) + ":" + string_repeat("0", 2 - string_length(string(seconds))) + string(seconds)); 	

