/// @description Initialize and Globals
//randomize()
global.gamePaused = false;
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

//Item related vars
global.items = [];
global.evidence = [];
global.minInteractDist = 35;

//Text related vars
global.textDisplayed = false;
global.NPC = [];
DialogueProgVars();


room_goto(ROOM_START);
