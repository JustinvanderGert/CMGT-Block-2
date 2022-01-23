/// @description Insert description here
// You can write your code in this editor
type = "Item";
Name = "Fingerprint Kit"
pickedUp = false;
text_id = "item Fingerprint kit"

array_push(global.items, self);

image_speed = 0;


popup_id = instance_create_layer(x, y - 16, layer, oPopup );
radius = global.minInteractDist * 0.5;