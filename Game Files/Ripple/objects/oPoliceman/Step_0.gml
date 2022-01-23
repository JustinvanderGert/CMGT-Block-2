//change animation sprite based on dialogue
if coversation_end = true {
	sprite_index = sPolicemanExclaim
	image_index = 0 
	coversation_end = false
	}
	
if sprite_index == sPolicemanExclaim && image_index >= 12 {
	sprite_index = sPoliceman
	}
	