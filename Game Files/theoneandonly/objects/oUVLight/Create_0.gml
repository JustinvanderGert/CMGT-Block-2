/// @description Insert description here
// You can write your code in this editor
type = "Item";
Name = "UV-Light";
pickedUp = false;
text_id = "item UV-Light"

array_push(global.items, self);

image_speed = 0;

popup_id = instance_create_layer(x, y - 16, layer, oPopup );
radius = global.minInteractDist * 0.2;

pickedUp= false;