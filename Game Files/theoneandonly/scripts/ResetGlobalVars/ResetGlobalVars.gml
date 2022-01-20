// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetGlobalVars(){
	global.keyLeft = 0;
	global.keyRight = 0;
	global.keyUp = 0;
	global.keyDown = 0;

	//Controls - Pressed
	global.keyActivate = 0;
	global.menuKeyUp = 0;
	global.menuKeyDown = 0;

	//Other
	global.resetMenu = false;
	global.gamePaused = false;
	global.iCamera = instance_create_layer(0,0,layer,oCamera);
	global.targetRoom = -1;
	global.targetX = -1;
	global.targetY = -1;
	global.targetDirection = 0;
	global.currentRoom = rOffice;

	//Item related vars
	global.items = [];
	global.evidence = [];
	global.minInteractDist = 35;

	//Text related vars
	global.font_main = font_add_sprite(spr_main_font, 32, true, 1);
	global.textDisplayed = false;
	global.NPC = [];
	DialogueProgVars();
}