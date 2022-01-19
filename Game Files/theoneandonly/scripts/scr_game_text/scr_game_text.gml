/// @param text_id
function scr_game_text(_text_id) {
	GM = oGame;
switch(_text_id) {
	
	case "Dog":
		scr_text("Woof Woof!")
		scr_text("*Licks your hand*")
		break;
	
	case "P-chief - Start":
		scr_text("Phone: R-RING RING!")
		scr_text("Hello, this is detective Jones. What do you need?")
		scr_text("P: Hey there, I am the police chief from the [City name] county. " +
		"I heard that you are for hire and are quite skilled in your field from hearing about your previous work.")
		scr_text("P: We are currently shorthanded here, so we could use some help with a murder case that we have been having trouble with for a while. " +
		"Would you be interested?")
		scr_text("Alright, I will be there later today.")
		scr_text("P: I shall see you then!")
		scr_text("*Ends call*")

		scr_text("I should look for usefull items before heading out.")
		break;

	case "item UV-Light":
		scr_text("Ah, there is my UV-Light.")
		scr_text("This could come in usefull.")
		break;

	case "item Fingerprint kit":
		scr_text("With this, forensics will be easier.")
		scr_text("Good thing I found it.")
		break;

	case "Leave Office":
		scr_text("Alright, It's time to head out!")
		break;
		
		
	case "Enter City":
		scr_text("The crime scene should be south of here.")
		scr_text("Phone: R-RING RING!")
		scr_text("B: H-hey brother, how are you doing?")
		scr_text("I don't have time for this")
		scr_text("*Ends call*")
		break;
		
	case "Cop":
		scr_text("The body is inside, go ahead")
		break;
		
	case "Witness":
		scr_text("*Shiver*")
		scr_text("I can't believe it...")
			scr_option("Are you able to tell me what you saw?", "Witness - Talks")
			scr_option("Talk to me", "Witness - Silent")
		break;
	
	case "Witness - Talks":
		scr_text("It was horrible...")
		scr_text("A man in a brown coat did this!")
		GM.choices[0] = 0;
		break;
		
	case "Witness - Silent":
		scr_text("I... I didn't see...")
		GM.choices[0] = 1;
		break;


	case "Window":
		scr_text("Nice view of the city")
		scr_text("Was it always open?")
		break;
		
	case "Window - Fingerprint":
		scr_text("*Pulls out Fingerprint kit*")
		scr_text("There are fingerprints from someone other than the body")
		scr_text("The killer must have entered from here!")
		break;
		
	case "PictureFrame":
		scr_text("This must be the deceased")
		break;
		
	case "PictureFrame - Fingerprint":
		scr_text("*Pulls out Fingerprint kit*")
		scr_text("It appears that someone besides the owner took a look at this picture")
		scr_text("The killer seems to like to get to know the target, even after the murder")
		break;
		
	case "Body":
		scr_text("Oof, that's a lot of damage")
		scr_text("*Holds vomit*")
		break;

	case "UmbrellaStand":
		scr_text("Is that ketchup?")
		break;
	
	case "UmbrellaStand - UV":
		scr_text("*Pulls out UV-Light*")
		scr_text("That is definitly blood")
		scr_text("This was used as the weapon!")
		break;

	case "Fireplace":
		scr_text("Looks like the murderer tried to burn some evidence")
		scr_text("It's to damaged to get anything out of it")
		break;
	
	case "Fireplace - UV":
		scr_text("*Pulls out UV-Light*")
		scr_text("Hmmm, there is also some dried blood here")
		scr_text("The victim was stabbed in front of the fireplace!")
		break;
		
	case "After body":
		scr_text("Phone: R-RING RING")
		scr_text("B: H-hey. So Uhmm... I Hope I am not interrupting anything but I- I mean... I don’t know what's going on.")
		scr_text("B: But I noticed a few strange things happening around-")
		scr_text("I am busy, I will call you later.")
		scr_text("B: I am serious, recent-")
		scr_text("I SAID, I can't speak right now. I will call you later")
		scr_text("*Ends call*")
		break;
		
	case "Leave CrimeScene":
		scr_text("Phone: R-RING RING!")
		scr_text("P: Hello sir. We have called to inform you of recent events that have occurred.")
		scr_text("What is it?")
		scr_text("P: Your brother has been put on trial for charges of multiple murders.")
		scr_text("P:Also, your brother wanted us to tell you that he wishes to speak to you during the trial.")
		scr_text("What!? That can't be true! He would never do that!")
		scr_text("P:Sir, we understand that this might come as a shock, but we are just relaying the news. The trial is happening now")
		scr_text("P:So if you wish to see it, you can come.")
		scr_text("I... I understand. Thank you for telling me this.")
		scr_text("*Ends call*")
		break;

	case "npc 1":
		scr_text("hi im am the witness")
		scr_text("i am very shy and i nod alot")
		scr_text("i did not see much")
			scr_option("did you see anything?", "npc 1 - ask")
			scr_option("oh that is okay", "npc 1 - not")
		break;
	
	case "npc 1 - ask":
		scr_text("i swear i did not.")
		//obj_speakblock.coversation_end = true
		
		GM.choices[0] = 1;
		break;
		
	case "npc 1 - not": 
		scr_text("thank you for not asking")
			scr_option("Could you follow me?", "npc 1 - follow")
			scr_option("Don't leave the city", "npc 1 - stay")
		
		GM.choices[0] = 0;
		break;
	
	case "npc 1 - follow":
		scr_text("No");
		
		GM.choices[1] = 1;
		break;
		
	case "npc 1 - stay":
		scr_text("Okay")
		
		GM.choices[1] = 0;
		break;
		
	}

}