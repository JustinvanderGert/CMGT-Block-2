/// @description
//collect coin
if (place_meeting(x, y, oPlayer) && !collected){
	image_index = 0;
	collected = true;
}

//collected
if (collected){
	if(floor(image_index) >= image_index -1){
		instance_destroy();
	}
}