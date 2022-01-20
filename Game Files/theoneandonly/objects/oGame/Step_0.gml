/// @description Start of new rooms
//Controls - Held down
global.keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
global.keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
global.keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
global.keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));

//Controls - Pressed
global.keyActivate = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E"));
global.menuKeyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
global.menuKeyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));


//When loading Office - Police chief calls
if(room == rOffice && global.firstCall == 0) {
	//show_debug_message("Start call")
	create_textbox("P-chief - Start");
	global.firstCall++;
}

//When loading City the first time - Brother calls
if(room == rCity && global.enterCity == 0) {
	create_textbox("Enter City");
	global.enterCity++;
}

//When leaving the crime scene - Police chief calls
if(room == rCitywithCourt && global.leaveCrimeScene == 0) {
	create_textbox("Leave CrimeScene");
	global.leaveCrimeScene++;
}

if(room == rCrimeScene && oBody.investigated && global.foundBody == 0) {
	global.foundBody++
}