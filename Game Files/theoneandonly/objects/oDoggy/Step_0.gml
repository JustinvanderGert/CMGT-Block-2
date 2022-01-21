if (talked == true) {
	talked = false;
}

if coversation_end = true {
	sprite_index = sDoggyPet
	image_index = 0 
	coversation_end = false
	}
	
if sprite_index == sDoggyPet && image_index >= 13 {
	sprite_index = sDoggy
	}