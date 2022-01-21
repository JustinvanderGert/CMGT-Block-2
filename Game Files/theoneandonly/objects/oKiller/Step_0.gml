//change animation sprite based on dialogue
if coversation_end = true {
	sprite_index = sKillerShrug
	image_index = 0 
	coversation_end = false
	}
	
if sprite_index == sKillerShrug && image_index >= 10 {
	sprite_index = sKiller
	}
	