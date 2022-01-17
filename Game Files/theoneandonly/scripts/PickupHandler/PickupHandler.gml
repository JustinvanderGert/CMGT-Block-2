// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Handle the picking up of an item
function PickupHandler(obj){
	if (obj == ""){
		show_debug_message("There is nothing left!" + string(obj));
		return;
	}
	show_debug_message("Pickup: " + string(obj));
	
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
			show_debug_message(string(obj) + string(dist_player))
			if (dist_player <= closestDist && dist_player <= global.minPickupDist) {
				closestDist = dist_player;
				closestItem = obj;
			}
		}
	}
	return closestItem;
}