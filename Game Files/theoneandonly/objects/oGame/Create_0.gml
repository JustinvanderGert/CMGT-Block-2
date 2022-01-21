/// @description Initialize and Globals
//Controls - Held down
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
global.hasAllEvidence = false;
global.minInteractDist = 35;

//Text related vars
global.textDisplayed = false;
global.NPC = [];
DialogueProgVars();

room_goto(ROOM_START);
