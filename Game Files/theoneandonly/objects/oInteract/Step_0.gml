/// @description Insert description here
if(! pickedUp) {
	if(collision_circle(x, y, radius, oPlayer, false, true))
	{
		popup_id.visible = true;
	} else {
		popup_id.visible = false;
	}
}