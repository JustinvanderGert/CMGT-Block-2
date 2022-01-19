type = "Evidence"
Name = "Window"
pickedUp = false;
investigated = false;
canInvestigate = false;
text_id = "Window"

for (i = 0; i < array_length(global.items); i++) {
	neededItem = "Fingerprint Kit"
	item = global.items[i]
	
	if (item.Name == neededItem && item.pickedUp == true) {
		text_id = "Window - Fingerprint"
		canInvestigate = true;
	}
}

array_push(global.evidence, self);

image_speed = 0;


popup_id = instance_create_layer(x, y - 40, layer, oPopup );
radius = global.minInteractDist * 0.5;