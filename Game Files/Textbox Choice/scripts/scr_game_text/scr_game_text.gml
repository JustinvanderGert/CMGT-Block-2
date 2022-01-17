/// @param text_id
function scr_game_text(_text_id) {
	
switch(_text_id) {
	
	
	
	 
	case "npc 1":
		scr_text("hi im npc 1")
		scr_text("randome text i am writing here to test")
		scr_text("Do you like video games?")
			scr_option("Yeah. I love them!", "npc 1 - yes")
			scr_option("Nah. Who cares?", "npc 1 - no")
		break;
	
	case "npc 1 - yes":
		scr_text("OMG, me to!")
		break;
	case "npc 1 - no": 
		scr_text("awe man that sucks")
		break;
		
	case "npc 2":
		scr_text("hi im npc 2")
		scr_text("not random text i am writing here")
		scr_text("21314875892094839489324 i am speaking the language of the universe")
		break;
		
	}

}