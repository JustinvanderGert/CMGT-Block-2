/// @description Initialize and Globals
//randomize()
global.gamePaused = false;
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;


room_goto(ROOM_START);