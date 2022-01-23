gui_width = display_get_gui_width()
gui_height = display_get_gui_height()
gui_margin = 32;

menu_x = gui_width;//+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
//menu_font = global.font_main;
menu_itemheight = 15 //font_get_size(global.font_main);
menu_commited = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Controls";
menu[0] = "Quit";

menu_items = array_length_1d(menu)
menu_cursor = 2;

StopAllSound()
audio_play_sound(mMenu, 1, true)