/// @param text_id
function scr_game_text(_text_id) {
	
switch(_text_id) {
	
	
	
	 
	case "npc 1":
		scr_text("hi im am the witness")
		scr_text("i am very shy and i nod alot")
		scr_text("i did not see much")
			scr_option("did you see anything?", "npc 1 - ask")
			scr_option("oh that is okay", "npc 1 - not")
		break;
	
	case "npc 1 - ask":
		scr_text("i swear i did not.")
		obj_speakblock.coversation_end = true
		
		break;
	case "npc 1 - not": 
		scr_text("thank you for not asking")
		break;
		
	case "npc 2":
		scr_text("hi im npc 2")
		scr_text("not random text i am writing here")
		scr_text("21314875892094839489324 i am speaking the language of the universe")
		break;
		
	}

}