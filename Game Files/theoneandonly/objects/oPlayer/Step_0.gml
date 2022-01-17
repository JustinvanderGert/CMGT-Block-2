//Get Player Imput
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
//keyActivate = keyboard_check_pressed(ord("E"));

keyActivate = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"));
//keyAttack = keyboard_check_pressed();
//keyItem = keyboard_check_pressed();

//Don't allow interaction while textbox is up.
if (!global.textDisplayed) {
	//Enabling to move in a specific angle when u press two keys at once
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
	
	//While in the office keep track of closest object
	if(room = rOffice) {
		//When interacting start the pickup handler function
		if(keyActivate){	
			closestObj = GetClosestObject()
			PickupHandler(closestObj);
		}
	}
} else {
	//Set movement to 0
	inputDirection = point_direction(0,0,0,0);
	inputMagnitude = (0 != 0) || (0 != 0);
}

if(global.gamePaused == false) script_execute(state);