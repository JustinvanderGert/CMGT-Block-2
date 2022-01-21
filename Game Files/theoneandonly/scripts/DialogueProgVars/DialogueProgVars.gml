//variables keeping track of progression through game dialogue.
function DialogueProgVars() {
	global.choices = [];

	//Office
	global.firstCall = 0;
	global.leaveOffice = 0;

	//City
	global.enterCity = 0;
	
	//CrimeScene
	global.foundBody = 0;
	global.leaveCrimeScene = 0
	
	//Court
	global.enterCourt = 0;
	global.saveBrother = false;
	
	//Docks
	global.enterDocks = 0;
}

function setInteractibleNPC() {
	global.NPC = [];
}