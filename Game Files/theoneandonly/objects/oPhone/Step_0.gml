if (startMoving) {
	//Start moving the phone
	if(showing) {
		//Away
		startMoving = returnPhone(self)
	} else {
		//On screen
		startMoving = ShowPhone(self)
	}
}

if(global.keyActivate && showing) {
	startMoving = true;
	
	//Make the menu options appear again
	global.resetMenu = true;
}