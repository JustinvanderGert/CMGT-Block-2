/// @description Insert description here
if(! pickedUp) {
	if(collision_circle(x, y, radius, oPlayer, false, true))
	{
		popup_id.visible = true;
	} else {
		popup_id.visible = false;
	}
}

//if (room != rOffice && x != -100) {
//	x = -100
//	y = -100
//}