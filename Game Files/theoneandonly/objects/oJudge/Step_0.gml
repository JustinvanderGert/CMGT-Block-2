//change animation sprite based on dialogue
if coversation_end = true {
	sprite_index = sJudgeHammer
	image_index = 0 
	coversation_end = false
	}
	
if sprite_index == sJudgeHammer && image_index >= 8 {
	sprite_index = sJudge
	}
	