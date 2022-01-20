/// Progress the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent-0.05);
	}
	else
	{
		percent = min(1,percent+0.05);
	}
	
	if (percent == 1) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;	
				break;
			}
			case TRANS_MODE.NEW_GAME:
			{
				ResetGlobalVars()
				room_goto(rOffice)
				show_debug_message("New Game");
				break;
			}
			case TRANS_MODE.CONTROLS:
			{
				//Open controls
				show_debug_message("Open controls");
				break;
			}
			case TRANS_MODE.QUIT:
			{
				show_debug_message("Quit Game");
				game_end();
				break;
			}
		}
	}
}