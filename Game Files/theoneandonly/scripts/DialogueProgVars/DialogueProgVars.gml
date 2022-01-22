//variables keeping track of progression through game dialogue.
function DialogueProgVars() {
	StopAllSound()
	global.choices = [];

	//Office
	global.firstCall = 0;
	global.leaveOffice = 0;

	//City
	global.enterCity = 0;
	
	//CrimeScene
	global.enterCrimeScene = 0
	global.foundBody = 0;
	global.leaveCrimeScene = 0
	
	//Court
	global.enterCourt = 0;
	global.saveBrother = false;
	
	//Docks
	global.enterDocks = 0;
	
	//Final overview
	global.finalOverview = 0;
}

function setInteractibleNPC() {
	global.NPC = [];
}

function choiceText(input) {
	if(input == 1) {
		return "Logical"
	} else if(input == 2) {
		return "Emotional"
	} else {
		return "Missed"
	}
}