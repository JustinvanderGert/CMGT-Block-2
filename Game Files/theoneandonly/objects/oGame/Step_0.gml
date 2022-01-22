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
	audio_play_sound(mCity, 1, true)
	create_textbox("Enter City");
	global.enterCity++;
}

//When leaving the crime scene - Police chief calls
if(room == rCitywithCourt && global.leaveCrimeScene == 0) {
	global.hasAllEvidence = true;
	for(i = 0; i < array_length(global.evidence); i++) {
		currentItem = global.evidence[i]
		if (currentItem.investigated == false) {
			global.hasAllEvidence = false
		}
	}
	
	if(global.hasAllEvidence) {
		create_textbox("Leave CrimeScene - With Evidence");
	} else {
		create_textbox("Leave CrimeScene - No Evidence");
	}
	global.leaveCrimeScene++;
}

//When entering the court room
if(room == rCourt && global.enterCourt == 0) {
	global.enterCourt++

	if(global.hasAllEvidence) {
		create_textbox("Enter Court - With Evidence")
	} else {
		create_textbox("Enter Court - No Evidence")
	}
}

if(room == rDocks && global.enterDocks == 0) {
	global.enterDocks++
	
	if (global.saveBrother) {
		create_textbox("Killer gets away")
		oKiller.visible = false
	} else {
		create_textbox("Catch killer")
	}
}

if(room == rCrimeScene && oBody.investigated && global.foundBody == 0) {
	global.foundBody++
}