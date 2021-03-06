/// @param text_id
function scr_game_text(_text_id) {
	GM = oGame;
switch(_text_id) {
	
	case "Dog":
		global.choices[0] = 2
		scr_text("*You pet the dog*")
		scr_text("Woof Woof!")
		scr_text("*Licks your hand*")
		oDoggy.coversation_end = true
		break;
		
	case "Intro":
	show_debug_message("Show intro text")
		scr_text("Dective: Strange places life leads you. Just another job like any before, but this time it leads me somewhere I didn’t think I would come so soon.")
		scr_text("D: I wonder how he is doing? After the previous court case, he managed to finally settle down and go clean from what I’ve heard.")
		scr_text("D: I hope he is well…")
		scr_text("D: But that's not the most important thing right now, personal matters are for later, now is the time to find whoever is committing these heinous acts, before they hurt anyone else…")
		scr_text("[ Focus on your investigation. You can’t relive moments in real life, can you? ]")
		break;
		
	case "P-chief - Start":
		scr_text("Phone: R-RING RING!")
			oPlayer.Calling = true
		scr_text("D: Hello, this is detective Jones. What do you need?")
		scr_text("Police chief: Hey there, I am the police chief from the Nistrad county. " +
		"I heard that you are for hire and are quite skilled in your field.")
		scr_text("P: We are currently shorthanded here, so we could use some help with a murder case that we have been having trouble with for a while. " +
		"Would you be interested?")
		scr_text("D: Alright, I will be there later today.")
		scr_text("P: I shall see you then!")
		scr_text("*Ends call*")

		scr_text("*Detective thinks to himself*")
		scr_text("I should look for my equipment before heading out.")
		break;

	case "item UV-Light":
		scr_text("D: Ah, there is my UV-Light.")
		scr_text("*The detective picked up an Ultraviolet light that allows him to examine clues and recover evidence that could have not been previously detected and is not detectable by the naked eye.*")
		scr_text("D: Perfect for looking for blood splatters!")
		break;

	case "item Fingerprint kit":
		scr_text("D: Oh! My Fingerprint kit!")
		scr_text("*Detective finds his Fingerprint-kit. Which, as the name suggests, will help find fingerprints that can be later on examined in a laboratory by the crew.*")
		scr_text("D: Perfect for finding out who the suspect is and what items he has touched.")
		break;

	case "Leave Office":
		scr_text("D: Alright, It's time to head out!")
		break;
		
		
	case "Enter City":
		scr_text("D: The crime scene should be south from here.")
		scr_text("Phone: R-RING RING!")
		oPlayer.Calling = true
		scr_text("Brother: H-hey, how are you doing? I heard you’re in Nistrad and we haven’t met in a long time. S-so, how about we meet up someday?")
		scr_text("D: Hey Steve. Haven’t talked to you in a while, but unfortunately, I can’t. Recently I was busy with a case. Maybe some other time…")
		scr_text("B: Ah... Y- Yep, that's alright… I understand you’re very busy, so I can’t blame you… B-but it just feels like we just no longer talk. So I just wanted to meet up, like you know, in the old days!")
		scr_text("D: As I said, I can’t. Sorry but I have other matters to attend to now.")
		scr_text("B: Sure… Maybe some other time then. Good luck with the job.")
		scr_text("D: ...")
		scr_text("*Call Ends*")
		break;
		
	case "Cop":
		scr_text("P: We found the body inside. You can go investigate it now. Be careful.")
		oPoliceman.coversation_end = true
		break;
		
	case "Witness":
		scr_text("*Shiver*")
		scr_text("D: Hello miss. I am with the police and I came here to ask a few questions-")
		scr_text("Witness: I-I’m sorry! I don’t know anything!")
		scr_text("D: We have some information that you were around here during the time of the crime, so we-")
		scr_text("W: I really don’t know anything, please leave me a-alone!")
			scr_option("Calm her down" , "Witness - Talks")
			scr_option("Try to push her for more information", "Witness - Silent")
		break;
	
	case "Witness - Talks":
		scr_text("P: Calm down. Nobody is going to pressure you into saying anything, but I would be extremely grateful if you helped me with the investigation. Can you do that?")
		scr_text("W: A-.. Alright… It was dark, so I didn’t see much, but it was an older man. I didn’t see exactly what happened, but his clothes... ")
		scr_text("W: They were covered in blood... And- and. Uhmm... Although I didn’t see his face, I believe he was balding. Sorry I didn’t see much. That is all I saw.")
		global.choices[1] = 2;
		audio_play_sound(Choices, 2, false)
		break;
		
	case "Witness - Silent":
		scr_text("P: Miss, not cooperating and hiding information about the crime counts as complicity and you could be seen as an accomplice. So for your own good, tell us what you saw.")
		scr_text("W: I... I didn't see... Please... Just leave me alone...")
		oWitness.coversation_end = true
		GM.choices[0] = 1;
		global.choices[1] = 1;
		audio_play_sound(Choices, 2, false)
		break;


	case "Window":
		scr_text("D: Nice view of the city.")
		scr_text("D: Was it always open?")
		break;
		
	case "Window - Fingerprint":
		scr_text("*Pulls out Fingerprint kit*")
		scr_text("D: There are fingerprints from someone else than the victim.")
		scr_text("D: The killer must have escaped through here!")
		break;
		
	case "PictureFrame":
		scr_text("D: This must be the deceased.")
		break;
		
	case "PictureFrame - Fingerprint":
		scr_text("*Pulls out Fingerprint kit*")
		scr_text("D: It appears that someone besides the owner took a look at this picture.")
		scr_text("D: The killer seems to like to get to know the target, even after the murder.")
		break;
		
	case "Body":
		scr_text("D: There's no signs of struggle.")
		scr_text("D: The victim was either caught off-guard or accepted his faith.")
		break;

	case "UmbrellaStand":
		scr_text("D: Fireplace poker? Inside an umbrella stand? Something's wrong here, but I don't quite know what...")
		break;
	
	case "UmbrellaStand - UV":
		scr_text("*Pulls out UV-Light*")
		scr_text("D: There's blood on this fireplace poker!")
		scr_text("D: This was definitely used as the weapon!")
		break;

	case "Fireplace":
		scr_text("D: That's just a fireplace... ")
		scr_text("D: I can't see anything here.")
		break;
	
	case "Fireplace - UV":
		scr_text("*Pulls out UV-Light*")
		scr_text("D: Hmmm, there some dried blood here...")
		scr_text("D: The victim was stabbed in front of the fireplace!")
		break;
		
	case "After body":
		scr_text("Phone: R-RING RING")
		oPlayer.Calling = true
		scr_text("B: H-hey. So Uhmm... I Hope I am not interrupting anything but I- I mean... I don’t know what's going on.")
		scr_text("B: But I noticed a few strange things happening around-")
		scr_text("D: I am busy, I will call you later.")
		scr_text("B: I am serious, recent-")
		scr_text("D: I SAID, I can't speak right now. I will call you later")
		scr_text("*Ends call*")
		break;
		
	case "Leave CrimeScene - No Evidence":
		global.choices[2] = 0
		scr_text("Phone: R-RING RING!")
		oPlayer.Calling = true
		scr_text("Lawyer: Hello sir. This is your brother's lawyer and I have called to inform you of recent events that have occurred.")
		scr_text("P: What is it?")
		scr_text("L: Your brother has been put on trial for charges of multiple murders.")
		scr_text("L: Also, your brother wanted us to tell you that he wishes to speak to you during the trial.")
		scr_text("P: What!? That can't be true! He would never do that!")
		scr_text("L: Sir, we understand that this might come as a shock, but we are just relaying the news. The trial is happening now")
		scr_text("L: So if you wish to see it, you can come.")
		scr_text("P: I... I understand. Thank you for telling me this.")
		scr_text("*Ends call*")
		
		break;
				
	case "Leave CrimeScene - With Evidence":
		global.choices[2] = 1
		scr_text("Phone: R-RING RING!")
		oPlayer.Calling = true
		scr_text("L: Hello sir. This is your brother's lawyer and I have called to inform you of recent events that have occurred.")
		scr_text("P: What is it?")
		scr_text("L: Your brother has been put on trial for charges of multiple murders.")
		scr_text("L: Also, your brother wanted us to tell you that he wishes to speak to you during the trial.")
		scr_text("P: What!? That can't be true! He would never do that!")
		scr_text("L: Sir, we understand that this might come as a shock, but we are just relaying the news.")
		scr_text("L: Also, the odds are stacked quite against him, so likely unless some new evidence comes out, the verdict is heavily leaning towards him being sentenced guilty.")
		scr_text("L: The trial is going to be happening now. So if you wish to see it, you can come.")
		scr_text("L: Don't panic, Jones. If you have the evidence there's high possibility of you saving him. Unless you want to speak directly to who's behind all of it... The choice is yours.")
		scr_text("P: I... I understand. Thank you for telling me this.")
		scr_text("*Ends call*")
		break;
	
	
	case "Enter Court - No Evidence":
		scr_text("Judge: We have all gathered here to judge the fate of Steve Stevenson for his crimes.")
		scr_text("J: After the investigation, we have taken a look at all the evidence and past charges and have concluded.")
		scr_text("J: Mr Steve has been found GUILTY, accountable for multiple first-degree murders, and has been sentenced to death row.")
		scr_text("J: That is the final decision of the court and the sentence shall be carried out tomorrow. With that, this court session is over.")
			scr_option("I could have fixed this!", "Court - Slams hammer")
			scr_text("Is that all? Well… Yes. We often have to make choices, sometimes not even knowing there are ones. But what we do know in the end, are their consequences.")
		scr_text("Just like here, your brother is now gone, the true killer is left to roam unpunished because of your indecisiveness and inadequacy.")
		scr_text("You might think, “If only I did it differently it could be different”, but in the end actions and lack thereof have consequences.")
		scr_text("So think about what is truly important to you and value them.")
		scr_text("Lastly, we want to thank you for playing The Ripple.")
		global.enterCourt++
		break;
		
	case "Court - Slams hammer":
		scr_text("*Smacks hammer*")
		oJudge.coversation_end = true
		break;

	case "Enter Court - With Evidence":
		scr_text("Judge: We have all gathered here to judge the fate of Steve Stevenson for his crimes.")
			scr_option("Try to prove your brother's innocence!", "Court - Proof")
			scr_option("Go try to catch the killer before it's too late!" , "Court - Catch")
		break;
		
	case "Court - Proof":
		global.saveBrother = true;
		global.choices[3] = 2
		scr_text("J: After the investigation, we have taken a look at all the new evidence that has been provided and the previous charges and the court has finally concluded.")
		scr_text("J: Mr Steve has been found NOT GUILTY of the charges presented against him due to most of the evidence having been investigated and proven to have been faked.")
		scr_text("J: With that, I shall announce this court session over. Everyone is dismissed.")
			scr_option("Thank god I made it in time!", "Court - Slams hammer")
		break;
		
	case "Court - Catch":
		global.choices[3] = 1
		scr_text("J: After the investigation, we have taken a look at all the evidence and past charges and have concluded.")
		scr_text("J: Mr Steve has been found GUILTY, accountable for multiple first-degree murders, and has been sentenced to death row.")
		scr_text("J: That is the final decision of the court and the sentence shall be carried out tomorrow. With that, this court session is over.")
			scr_option("I need to catch him!", "Court - Slams hammer")
		break;
		
	
	case "Killer gets away":
		scr_text("*Killer got away, you're too late...*")
		scr_text("And with that a life is saved of a close one, redeemed through hard effort. But what is one life to the truth?")
		scr_text("Often we make choices not knowing where it leads, for we always have to give up some things for others. Though one life was saved, the true killer never ended up being caught.")
		scr_text("Left to his own devices, he continues his streak of murders leading to many ruined lives.")
		scr_text("So now you might ask yourself… Was the price worth it?")
		scr_text("Well, that is up to you to decide and thank you for playing The Ripple.")
		global.enterDocks += 2
		break;
		
	case "Catch killer":
		scr_text("D: Stop right there! It’s over! Your killings end here!")
		scr_text("K: Well done, someone was bright enough to find me.")
			scr_option("You can't escape!", "Catch killer - Shrug 1")
		break;
		
	case "Catch killer - Shrug 1":
		scr_text("K: Honestly, I was getting bored with this being so easy, but I suppose this is fine too because at least I managed to pull through with one last trick.")
		scr_text("K: Have you checked in with your brother yet?")
		scr_text("D: What?")
		scr_text("K: Ah of course you wouldn’t, being such a busy man. Probably wouldn’t even notice if your brother died. Oops. I think I said too much.")
		scr_text("D: Why did you kill him!?")
		scr_text("K: Oh, I did not. I simply put down a few clues for the policeman to find and you being so focused on me, missed the big picture.")
		scr_text("K: You are the one who killed your brother.")
			scr_option("*Gasp*", "Catch killer - Shrug 2")
		oKiller.coversation_end = true
		break;
		
	case "Catch killer - Shrug 2":
		scr_text("K: So now, this has gotten boring so take me away. I just hope you can live with yourself.")
		scr_text("D:...")
		scr_text("And just like that, the true killer was caught. Ending the misery he brought and giving hope to the townspeople, but not all were able to see that resolution.")
		scr_text("Many families were ruined by the horrifying acts, leaving empty spots in their lives.")
		scr_text("And even you had to pay a great price for it. A soul trying to redeem itself, cut short to save others, its fate chosen by you.")
		scr_text("So you might ask, was the price truly worth it?")
		scr_text("Well, that is up to you to decide and we thank you for playing The Ripple.")
		global.enterDocks++
		oKiller.coversation_end = true
		break;

		
	case "Final Overview":
		//oKiller.game_summary = true;
		//Your ending
		global.finalOverview++
		if(global.choices[2] == 0) {
			scr_text("Reached ending 1: You failed at your job!")
		} else if(global.choices[3] == 1) {
			scr_text("Reached ending 2: Catch the killer!")
		} else if (global.choices[3] == 2) {
			scr_text("Reached ending 3: Saved your brother!")
		}
		
		scr_text("Here is how you ended up making choices.")
		//All choices made
		if (global.choices[0] == 2) {
			scr_text(choiceText(global.choices[0]) + ": You interacted with the dog!")
		} else {
			scr_text(choiceText(global.choices[0]) + ": You ignored the dog!")
		}
		scr_text(choiceText(global.choices[1]) + ": Your interaction with the witness.")
		scr_text(choiceText(global.choices[2]) + ": Your handling of evidence and tools to help with that.")
		if (global.hasAllEvidence) {
			scr_text(choiceText(global.choices[3]) + ": Your final decision, choosing between your job or your family.")
		}
		scr_text("Try to get all 3 endings!")
		scr_option("Go to menu", "Menu")
		break;
	
	case "Menu":
		game_restart()
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
		
		global.choices[0] = 1;
		break;
		
	case "npc 1 - not": 
		scr_text("thank you for not asking")
			scr_option("Could you follow me?", "npc 1 - follow")
			scr_option("Don't leave the city", "npc 1 - stay")
		
		global.choices[0] = 0;
		break;
	
	case "npc 1 - follow":
		scr_text("No");
		
		global.choices[1] = 1;
		break;
		
	case "npc 1 - stay":
		scr_text("Okay")
		
		global.choices[1] = 0;
		break;
		
	}

}