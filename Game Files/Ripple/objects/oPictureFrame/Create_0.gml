/// @description Insert description here
// You can write your code in this editor
type = "Evidence"
Name = "PictureFrame"
pickedUp = false;
investigated = false;
canInvestigate = false;
text_id = "PictureFrame"

for (i = 0; i < array_length(global.items); i++) {
	neededItem = "Fingerprint Kit"
	item = global.items[i]
	
	if (item.Name == neededItem && item.pickedUp == true) {
		text_id = "PictureFrame - Fingerprint"
		canInvestigate = true;
	}
}

array_push(global.evidence, self);

image_speed = 0;


popup_id = instance_create_layer(x, y - 16, layer, oPopup );
radius = global.minInteractDist * 0.5;