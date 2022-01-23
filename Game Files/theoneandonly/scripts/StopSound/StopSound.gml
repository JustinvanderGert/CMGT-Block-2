// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StopSound(index){
	for(i = 0; i < array_length(index); i++) {	
		audio_stop_sound(index[i])
	}
}

function StopAllSound() {
	audio_stop_all()
}