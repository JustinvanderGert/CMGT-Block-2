function ShowPhone(phone) {
	minHeight = 10;
	maxHeight = 160;
	moveSpeed = 7.5;
	
	phone.y -= 1 * moveSpeed;
	clamp(phone.y, minHeight, maxHeight)
	
	if (phone.y == minHeight) {
		phone.showing = true;
		return false
	} else {
		return true
	}
}

function returnPhone(phone) {
	minHeight = 10;
	maxHeight = 160;
	moveSpeed = 7.5;
	
	phone.y += 1 * moveSpeed;
	clamp(phone.y, minHeight, maxHeight)
	
	if (phone.y == maxHeight) {
		phone.showing = false
		return false
	} else {
		return true
	}
}