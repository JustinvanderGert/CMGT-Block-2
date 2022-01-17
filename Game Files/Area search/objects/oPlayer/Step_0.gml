// Movement
player_WalkSpeed = 5;
collSpeed = player_WalkSpeed + 2;
if (keyboard_check(ord("W")) && place_free(x, y - collSpeed)) {
    y -= player_WalkSpeed;
}
if (keyboard_check(ord("A")) && place_free(x - collSpeed, y)) {
    x -= player_WalkSpeed;
}
if (keyboard_check(ord("S")) && place_free(x, y + collSpeed)) {
    y += player_WalkSpeed;
}
if (keyboard_check(ord("D")) && place_free(x + collSpeed, y)) {
    x += player_WalkSpeed;
}

/*if (keyActivate)
{
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x+_activateX, y+_activateY, pEntity);
	
	if(activate == noone || activate.entityActivateScript == -1)
	{
		//state = PlayerStateRoll;
		//moveDistanceRemaining = PlayerStateRoll
}
else {
	ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
	
	//Make an NPC face the player
	if (activate.entityNPC)
	{
		with(activate)
		{
			direction = point_direction(x,y,other.x, other.y)
			image_index = CARDINAL_DIR
		}
	}
}
}