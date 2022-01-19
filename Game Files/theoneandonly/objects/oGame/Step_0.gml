/// @description Start of new rooms

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