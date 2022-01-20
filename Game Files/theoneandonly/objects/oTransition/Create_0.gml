//create event

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF,
	INTRO,
	NEW_GAME,
	CONTROLS,
	QUIT,
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
