/// @description Insert description here
if (pickedUp) {
	if(collision_circle(x, y, radius, oPlayer, false, true))
	pickedUp = true;
	
	instance_destroy(popup_id);
}

	//remove popup
