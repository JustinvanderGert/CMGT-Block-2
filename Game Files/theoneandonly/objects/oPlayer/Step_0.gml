   //Get Player Imput
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
//keyActivate = keyboard_check_pressed(vk_space);
//keyAttack = keyboard_check_pressed();
//keyItem = keyboard_check_pressed();


//Enabling to move in a specific angle when u press two keys at once

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if(global.gamePaused == false) script_execute(state);

