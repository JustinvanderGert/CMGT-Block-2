state = PlayerStateFree;
//

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.8;

spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

pickedUpAmount = 0;

if(global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
	
}


