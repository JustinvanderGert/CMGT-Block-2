// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeRoom(targetRoom, targetX, targetY) {
	setInteractibleNPC();
	
	if (targetRoom != rDocks) {
		audio_play_sound(mDoor, 2, false)
	}

	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = oPlayer.direction;
	global.currentRoom = targetRoom;
	room_goto(targetRoom);
}