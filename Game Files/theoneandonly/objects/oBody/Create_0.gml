/// @description Insert description here
// You can write your code in this editor
type = "Evidence"
Name = "Body"
pickedUp = false;
investigated = false;
canInvestigate = true;
text_id = "Body"

array_push(global.evidence, self);

image_speed = 0;


popup_id = instance_create_layer(x, y - 25, layer, oPopup );
radius = global.minInteractDist * 0.5;