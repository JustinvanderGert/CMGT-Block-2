//Get Player Imput
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(ord("E"));
//keyAttack = keyboard_check_pressed();
//keyItem = keyboard_check_pressed();

//Don't allow interaction while textbox is up and/or the game is paused.
if (!global.textDisplayed && !global.gamePaused) {
	//Enabling to move in a specific angle when u press two keys at once
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
	
	//When interacting start the handler functions
	if(keyActivate){
		//Office is he only room with items to pick up
		if(room == rOffice) {
			closestObj = GetClosestObject()
			PickupHandler(closestObj);
		} else {
			closestNpc = GetClosestNPC()
			TalkHandler(closestNpc);
		}
	}
} else {
	//Set movement to 0
	inputDirection = point_direction(0,0,0,0);
	inputMagnitude = (0 != 0) || (0 != 0);
}

if(global.gamePaused == false) script_execute(state);