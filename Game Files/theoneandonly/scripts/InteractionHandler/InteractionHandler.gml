// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Handle the picking up of an item
function PickupHandler(obj){
	if (obj == ""){
		//show_debug_message("There is nothing close by!" + string(obj));
		return;
	}
	//show_debug_message("Pickup: " + string(obj));
	
	obj.x = 10 + 20 * pickedUpAmount;
	obj.y = 10;
	
	pickedUpAmount++;
	obj.pickedUp = true;
	
	create_textbox(obj.text_id)
}


//Calculate and return the closest object to the player that can be picked up
function GetClosestObject(){
	itemAmount = array_length(global.items);
	closestItem = "";
	closestDist = 1000;

	for(i = 0; i < itemAmount; i++){
		//show_debug_message("Calculate...")
		obj = global.items[i];
			
		dist_player = point_distance(obj.x, obj.y, oPlayer.x, oPlayer.y);
		if (!obj.pickedUp){
			//show_debug_message(string(obj) + string(dist_player))
			if (dist_player <= closestDist && dist_player <= global.minInteractDist) {
				closestDist = dist_player;
				closestItem = obj;
			}
		}
	}
	return closestItem;
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