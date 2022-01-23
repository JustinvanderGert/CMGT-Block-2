//Get Player Imput
keyLeft = global.keyLeft;
keyRight = global.keyRight;
keyUp = global.keyUp;
keyDown = global.keyDown;
keyActivate = global.keyActivate;
//keyAttack = keyboard_check_pressed();
//keyItem = keyboard_check_pressed();

//Don't allow interaction while textbox is up and/or the game is paused.
if (!global.textDisplayed && !global.gamePaused) {
	//Enabling to move in a specific angle when u press two keys at once
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
	
	
	//phone call animation
	if Calling = true {
	sprite_index = sPlayerCall
	image_index = 0 
	Calling = false
	}
	
if sprite_index == sPlayerCall && image_index >= 14 {
	sprite_index = sPlayer
	}
	
	
	
	//When interacting start the handler functions
	if(keyActivate){
		//Office is the only room with items to pick up
		if(room == rOffice) {
			closestObj = GetClosestObject("Item")
			PickupHandler(closestObj);
		} else if(room == rCrimeScene){
			closestObj = GetClosestObject("Evidence")
			PickupHandler(closestObj);
		}
		
		closestNpc = GetClosestNPC()
		TalkHandler(closestNpc);
	}
} else {
	//Set movement to 0
	inputDirection = point_direction(0,0,0,0);
	inputMagnitude = (0 != 0) || (0 != 0);
}

if(global.gamePaused == false) script_execute(state);