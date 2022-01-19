/// @description Insert description here
// You can write your code in this editor
type = "Evidence"
Name = "Fireplace"
pickedUp = false;
investigated = false;
canInvestigate = false;
text_id = "Fireplace"

for (i = 0; i < array_length(global.items); i++) {
	neededItem = "UV-Light"
	item = global.items[i]
	
	if (item.Name == neededItem && item.pickedUp == true) {
		text_id = "Fireplace - UV"
		canInvestigate = true;
	}
}

array_push(global.evidence, self);

image_speed = 0;


popup_id = instance_create_layer(x, y - 16, layer, oPopup );
radius = global.minInteractDist * 0.5;