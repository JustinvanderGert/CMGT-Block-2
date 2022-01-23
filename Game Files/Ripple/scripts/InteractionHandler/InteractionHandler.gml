// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Handle the picking up of an item
function PickupHandler(obj){
	if (obj == ""){
		show_debug_message("There is nothing close by!" + string(obj));
		return;
	}
	show_debug_message("Pickup: " + string(obj));
	if (obj.type == "Item") {
		audio_play_sound(mPick_up, 2, false)
		obj.x = 10 + 20 * pickedUpAmount;
		obj.y = 10;
	
		pickedUpAmount++;
	} else if (obj.type == "Evidence") {
		show_debug_message(obj);
		
		if (obj.canInvestigate) {
			obj.investigated = true;
		}
	}
	obj.pickedUp = true;
	
	create_textbox(obj.text_id)
}


//Calculate and return the closest object to the player that can be picked up
function GetClosestObject(type){
	objList = []
	objAmount = 0;
	closestObj = "";
	closestDist = 1000;

	if (type = "Item") {
		objList = global.items;
		objAmount = array_length(objList);
	} else if (type = "Evidence") {
		show_debug_message("Interact with evidence" + string(global.evidence));
		objList = global.evidence;
		objAmount = array_length(objList);
	}

	for(i = 0; i < objAmount; i++){
		//show_debug_message("Calculate...")
		obj = objList[i];

		dist_player = point_distance(obj.x, obj.y, oPlayer.x, oPlayer.y);
		//show_debug_message("Positions" + string(obj.Name) + " Obj: " + string(obj.x) + ", " + string(obj.y));
		if (!obj.pickedUp){
			show_debug_message("Calculate... " + "Name:" + string(obj.Name) + " Dist: " + string(dist_player))
			if (dist_player <= closestDist && dist_player <= global.minInteractDist) {
				closestDist = dist_player;
				closestObj = obj;
			}
		}
	}
	return closestObj;
}


//Handle the picking up of an item
function TalkHandler(npc){
	if (npc== ""){
		show_debug_message("There is no one nearby!" + string(npc));
		return;
	}
	show_debug_message("Talked to: " + string(global.NPC));

	npc.talked = true;
	
	create_textbox(npc.text_id)
}

//Calculate and return the closest NPC to the player that can be talked to
function GetClosestNPC(){
	//show_debug_message("All NPC's:" + string(global.NPC))
	npcAmount = array_length(global.NPC);
	closestnpc = "";
	closestDist = 1000;

	for(i = 0; i < npcAmount; i++){
		//show_debug_message("Calculate...")
		npc = global.NPC[i];
			
		dist_player = point_distance(npc.x, npc.y, oPlayer.x, oPlayer.y);
		if (!npc.talked){
			//show_debug_message(string(npc) + string(dist_player))
			if (dist_player <= closestDist && dist_player <= global.minInteractDist) {
				closestDist = dist_player;
				closestnpc = npc;
			}
		}
	}
	return closestnpc;
}