//Controls
keyUp = global.menuKeyUp;
keyDown = global.menuKeyDown;
keyActivate = global.keyActivate;

/// item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	//keyboard controls
	if (keyUp)
	{
		menu_cursor++
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyDown)
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyActivate)
	{
		menu_x_target = gui_width+200;
		menu_commited = menu_cursor;
		menu_control = false;
	}

	//(menu_x > gui_width+150) too complicated for now
	if (menu_commited != -1)
	{
		switch (menu_commited)
		{
			case 2: 
				default: SlideTransition(TRANS_MODE.NEW_GAME);
				break;

			case 1: 
				oPhone.startMoving = true;
				break;	
			
			case 0: 
				SlideTransition(TRANS_MODE.QUIT)
				break;
		} 
	}
}

if (global.resetMenu) {
	global.resetMenu = false;
	
	menu_x_target = gui_width - 32;
	menu_commited = -1;
	//menu_cursor = 2
	menu_control = true;
}